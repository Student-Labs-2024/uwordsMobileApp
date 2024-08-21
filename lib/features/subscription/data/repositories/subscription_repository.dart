import 'package:uwords/features/subscription/domain/models/tariff.dart';

abstract interface class ISubscriptionRepository {
  Future<List<Tariff>> getTariffList();
  Future<bool> checkPayment();
  Future<String> getPaymentLink(Tariff tariff);
}
