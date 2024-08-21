import 'package:dio/dio.dart';
import 'package:uwords/features/subscription/data/subscription_client.dart';
import 'package:uwords/features/subscription/domain/dto/form_dto.dart';
import 'package:uwords/features/subscription/domain/dto/tariff_dto.dart';

abstract interface class INetworkTariffDataSource {
  Future<List<TariffDto>> fetchTariffList({required String accessToken});
  Future<bool> checkPayment(
      {required String accessToken, required String paymentId});
  Future<FormDto> fetchPayment({required String tariffTitle});
}

class NetworkTariffDataSource implements INetworkTariffDataSource {
  static Dio dio = Dio();
  final client = SubscriptionClient(dio);
  final String tokenType = "Bearer";

  @override
  Future<bool> checkPayment(
      {required String accessToken, required String paymentId}) async {
    try {
      return await client.checkPaymentStatus(accessToken, paymentId);
    } on Exception catch (e) {
      // TODO: Change Rethrow;
      rethrow;
    }
  }

  @override
  Future<List<TariffDto>> fetchTariffList({required String accessToken}) async {
    try {
      return await client.getAllTariffs(accessToken);
    } on Exception catch (e) {
      // TODO change rethrow;
      rethrow;
    }
  }

  @override
  Future<FormDto> fetchPayment({required String tariffTitle}) async {
    try {
      final response = await client.payByTariffName(tariffTitle);
      FormDto formDto = FormDto.fromJson(infoList: response.data);
      return formDto;
    } on Exception catch (e){
      // TODO change rethrow;
      rethrow;
    }
  }
}
