import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/features/subscription/domain/models/subscription.dart';
part 'subscription_event.dart';
part 'subscription_state.dart';
part 'subscription_bloc.freezed.dart';

class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  SubscriptionBloc() : super(_Initial()) {
    // on<_DownloadSubscriptionTypes>(_handleDownloadSubscriptionTypes);
    // on<_PaySubscription>(_handlePaySubscription);
    // on<_CheckSubscription>(_handleCheckSubscription);
  }
  // Future<void> _handleDownloadSubscriptionTypes(
  //     _DownloadSubscriptionTypes event, Emitter<SubscriptionState> emit) {}
  // Future<void> _handlePaySubscription(
  //     _PaySubscription event, Emitter<SubscriptionState> emit) {}
  // Future<void> _handleCheckSubscription(
  //     _CheckSubscription event, Emitter<SubscriptionState> emit) {}
}
