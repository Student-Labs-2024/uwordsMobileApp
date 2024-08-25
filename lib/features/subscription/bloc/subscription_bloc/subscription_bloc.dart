import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/exceptions/subscription_exceptions.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/subscription/data/repositories/subscription_repository.dart';
import 'package:uwords/features/subscription/data/subscription_consts.dart';
import 'package:uwords/features/subscription/domain/models/tariff.dart';
import 'package:uwords/features/subscription/domain/subscription_enum.dart';

part 'subscription_event.dart';
part 'subscription_state.dart';
part 'subscription_bloc.freezed.dart';

class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  final ISubscriptionRepository subscriptionRepository;
  final IUserRepository userRepository;

  late Emitter<SubscriptionState> _emitter;

  List<Tariff> tariffs = [];

  SubscriptionBloc(
      {required this.subscriptionRepository, required this.userRepository})
      : super(const _Initial([])) {
    on<_DownloadSubscriptionTypes>(_handleDownloadSubscriptionTypes);
    on<_PaySubscription>(_handlePaySubscription);
    on<_CheckSubscription>(_handleCheckSubscription);
    on<_IsSubscriptionActive>(_handleIsSubscriptionActive);
  }
  Future<void> _handleDownloadSubscriptionTypes(
      _DownloadSubscriptionTypes event, Emitter<SubscriptionState> emit) async {
    emit(const SubscriptionState.loading());
    try {
      tariffs = await subscriptionRepository.getTariffList(
          accessToken: await userRepository.getCurrentUserAccessToken());
      emit(SubscriptionState.initial(tariffs));
    } on Exception catch (e) {
      _emitter = emit;
      addError(e);
    }
  }

  Future<void> _handlePaySubscription(
      _PaySubscription event, Emitter<SubscriptionState> emit) async {
    emit(const SubscriptionState.loading());
    try {
      final String paymentLink =
          await subscriptionRepository.getPaymentLink(event.tariff);
      emit(SubscriptionState.payingSubscription(paymentLink));
    } on Exception catch (e) {
      _emitter = emit;
      addError(e);
    }
  }

  Future<void> _handleCheckSubscription(
      _CheckSubscription event, Emitter<SubscriptionState> emit) async {
    emit(const SubscriptionState.loading());
    try {
      final String accessToken =
          await userRepository.getCurrentUserAccessToken();
      final bool paymentStatus =
          await subscriptionRepository.checkPayment(accessToken: accessToken);
      if (paymentStatus) {
        await userRepository.updateInfoAboutUser();
        emit(const SubscriptionState.subscriptionPaid());
      } else {
        emit(const SubscriptionState.subscriptionNotPaid());
        await (Future.delayed(const Duration(
            microseconds: SubscriptionsDuration.twoSecondsInMilliseconds)));
        emit(SubscriptionState.initial(tariffs));
      }
    } on Exception catch (e) {
      _emitter = emit;
      addError(e);
    }
  }

  Future<void> _handleIsSubscriptionActive(
      _IsSubscriptionActive event, Emitter<SubscriptionState> emit) async {
    String finalDate = userRepository.getSubscriptionExpired();
    bool isActive = userRepository.isSubscriptionActive();
    emit(SubscriptionState.subscriptionStatus(isActive, finalDate));
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    switch (error.runtimeType) {
      // TODO implement CanNotCheckPaymentStatus and CanNotGetPaymentLink
      case const (CanNotLoadTariffs):
        _emitter(
            const SubscriptionState.falied(SubscriptionCheckStatus.noInternet));
      case const (SocketException):
        _emitter(
            const SubscriptionState.falied(SubscriptionCheckStatus.noInternet));
        _emitter(SubscriptionState.initial(tariffs));
    }
    super.addError(error, stackTrace);
  }
}
