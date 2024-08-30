import 'package:uwords/common/exceptions/subscription_exceptions.dart';
import 'package:uwords/features/subscription/data/data_sources/network_tariff_data_source.dart';
import 'package:uwords/features/subscription/data/dto/form_dto.dart';
import 'package:uwords/features/subscription/data/dto/tariff_dto.dart';
import 'package:uwords/features/subscription/domain/mapper/tariff_mapper.dart';
import 'package:uwords/features/subscription/domain/models/tariff.dart';

abstract interface class ISubscriptionRepository {
  Future<List<Tariff>> getTariffList({required String accessToken});
  Future<bool> checkPayment({required String accessToken});
  Future<String> getPaymentLink(
      {required String accessToken, required Tariff tariff});
}

class SubscriptionRepository implements ISubscriptionRepository {
  final INetworkTariffDataSource networkTariffDataSource;

  FormDto formDto = FormDto(link: '', paymentId: '');
  SubscriptionRepository({required this.networkTariffDataSource});

  @override
  Future<bool> checkPayment({required String accessToken}) async {
    try {
      if (formDto.link.isEmpty){
        throw CanNotCheckPaymentStatusException();
      }
      else{
        return await networkTariffDataSource.checkPayment(
          accessToken: accessToken, paymentId: formDto.paymentId);
      }
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<String> getPaymentLink(
      {required String accessToken, required Tariff tariff}) async {
    try {
      formDto = await networkTariffDataSource.fetchPayment(
          accessToken: accessToken, tariffTitle: tariff.name);
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
