import 'package:uwords/features/subscription/data/data_sources/network_tariff_data_source.dart';
import 'package:uwords/features/subscription/domain/dto/form_dto.dart';
import 'package:uwords/features/subscription/domain/dto/tariff_dto.dart';
import 'package:uwords/features/subscription/domain/mapper/tariff_mapper.dart';
import 'package:uwords/features/subscription/domain/models/tariff.dart';

abstract interface class ISubscriptionRepository {
  Future<List<Tariff>> getTariffList({required String accessToken});
  Future<bool> checkPayment({required String accessToken});
  Future<String> getPaymentLink(Tariff tariff);
}

class SubscriptionRepository implements ISubscriptionRepository {
  final INetworkTariffDataSource networkTariffDataSource;

  late FormDto formDto;
  SubscriptionRepository({required this.networkTariffDataSource});

  @override
  Future<bool> checkPayment({required String accessToken}) async {
    try {
      return await networkTariffDataSource.checkPayment(
          accessToken: accessToken, paymentId: formDto.paymentId);
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<String> getPaymentLink(Tariff tariff) async {
    try {
      formDto =
          await networkTariffDataSource.fetchPayment(tariffTitle: tariff.name);
      return formDto.link;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<List<Tariff>> getTariffList({required String accessToken}) async {
    try {
      List<TariffDto> tariffDtoList = await networkTariffDataSource
          .fetchTariffList(accessToken: accessToken);
      return tariffDtoList.map((t) => t.toModel()).toList();
    } on Exception {
      rethrow;
    }
  }
}
