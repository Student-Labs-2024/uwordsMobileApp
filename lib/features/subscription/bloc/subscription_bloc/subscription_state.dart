part of 'subscription_bloc.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState.initial(List<Tariff> tariffs) = _Initial;
  const factory SubscriptionState.loading() = _Loading;
  const factory SubscriptionState.subscriptionPaid() = _SubscriptionPaid;
  const factory SubscriptionState.subscriptionNotPaid() = _SubscriptionNotPaid;
  const factory SubscriptionState.payingSubscription(String paymentLink) = _PayingSubscription;
  const factory SubscriptionState.falied(SubscriptionCheckStatus failed) = _Failed;
  const factory SubscriptionState.success(SubscriptionCheckStatus success) = _Success;
}
