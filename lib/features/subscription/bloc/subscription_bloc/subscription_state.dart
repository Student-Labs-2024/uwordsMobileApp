part of 'subscription_bloc.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState.initial(List<Tariff> tariffs) = _Initial;
  const factory SubscriptionState.loading() =_Loading;
  const factory SubscriptionState.checkedSubscriptionStatus() = _CheckedSubscriptionStatus;
  const factory SubscriptionState.payingSubscription() = _PayingSubscription;
  const factory SubscriptionState.falied() = _Failed;
  const factory SubscriptionState.success() = _Success;
}
