part of 'subscription_bloc.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  const factory SubscriptionEvent.downloadSubcriptionsTypes() =
      _DownloadSubscriptionTypes;
  const factory SubscriptionEvent.paySubscription(Tariff tariff) =
      _PaySubscription;
  const factory SubscriptionEvent.checkSubscription() = _CheckSubscription;
}
