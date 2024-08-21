import 'package:uwords/features/subscription/domain/dto/form_dto.dart';
import 'package:uwords/features/subscription/domain/dto/tariff_dto.dart';

abstract interface class INetworkTariffDataSource {
  Future<List<TariffDto>> fetchTariffList();
  Future<bool> checkPayment({required String paymentId});
  Future<FormDto> fetchPayment({required String tariffTitle});
}

class NetworkTariffDataSource implements INetworkTariffDataSource {
  @override
  Future<bool> checkPayment({required String paymentId}) {
    // TODO: implement checkPayment
    throw UnimplementedError();
  }

  @override
  Future<List<TariffDto>> fetchTariffList() {
    // TODO: implement fetchTariffList
    throw UnimplementedError();
  }

  @override
  Future<FormDto> fetchPayment({required String tariffTitle}) {
    // TODO: implement fetchPayment
    throw UnimplementedError();
  }
}
