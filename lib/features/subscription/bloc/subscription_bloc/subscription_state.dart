part of 'subscription_bloc.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState.initial(List<Tariff> tariffs) = _InitialState;
  const factory SubscriptionState.loading() = _LoadingState;
  const factory SubscriptionState.subscriptionPaid() = _SubscriptionPaidState;
  const factory SubscriptionState.subscriptionNotPaid() =
      _SubscriptionNotPaidState;
  const factory SubscriptionState.payingSubscription(String paymentLink) =
      _PayingSubscriptionState;
  const factory SubscriptionState.falied(SubscriptionCheckStatus failed) =
      _FailedState;
  const factory SubscriptionState.success(SubscriptionCheckStatus success) =
      _SuccessState;
  const factory SubscriptionState.subscriptionStatus(
      bool isActive, String date) = _SubscriptionStatusState;
}
