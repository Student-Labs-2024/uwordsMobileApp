import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/exceptions/subscription_exceptions.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/subscription/data/repositories/subscription_repository.dart';
import 'package:uwords/features/subscription/domain/models/tariff.dart';
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
  }
  Future<void> _handleDownloadSubscriptionTypes(
      _DownloadSubscriptionTypes event, Emitter<SubscriptionState> emit) async {
    emit(const SubscriptionState.loading());
    try {
      tariffs = await subscriptionRepository.getTariffList();
      emit(SubscriptionState.initial(tariffs));
    } on Exception catch (e) {
      _emitter = emit;
      addError(e);
    }
  }

  Future<void> _handlePaySubscription(
      _PaySubscription event, Emitter<SubscriptionState> emit) async {}
  Future<void> _handleCheckSubscription(
      _CheckSubscription event, Emitter<SubscriptionState> emit) async {}

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    switch (error.runtimeType) {
      case const (CanNotLoadTariffs):
        _emitter(const SubscriptionState.falied());
    }
    super.addError(error, stackTrace);
  }
}
