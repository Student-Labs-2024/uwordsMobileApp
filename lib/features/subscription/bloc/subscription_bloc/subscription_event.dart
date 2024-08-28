part of 'subscription_bloc.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  const factory SubscriptionEvent.downloadSubcriptionsTypes() =
      _DownloadSubscriptionTypesEvent;
  const factory SubscriptionEvent.paySubscription(Tariff tariff) =
      _PaySubscriptionEvent;
  const factory SubscriptionEvent.checkSubscription() = _CheckSubscriptionEvent;
  const factory SubscriptionEvent.isSubscriptionActive() =
      _IsSubscriptionActiveEvent;
}
