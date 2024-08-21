import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uwords/env.dart';
import 'package:uwords/features/subscription/domain/dto/tariff_dto.dart';

part 'subscription_client.g.dart';

@RestApi(baseUrl: anotherBaseUrl)
abstract class SubscriptionClient {
  factory SubscriptionClient(Dio dio, {String baseUrl}) = _SubscriptionClient;

  @GET("payment/form")
  Future<HttpResponse<List<String>>> payByTariffName(
      @Query('sub_type') String subType,
      {@Header('Content-Type') String contentType = 'application/json'});

  @GET("payment/form")
  Future<bool> checkPaymentStatus(@Header("Authorization") String accessToken,
      @Query('pay_id') String payId,
      {@Header('Content-Type') String contentType = 'application/json'});

  @GET("subscription/all")
  Future<List<TariffDto>> getAllTariffs(
      @Header("Authorization") String accessToken,
      {@Header('Content-Type') String contentType = 'application/json'});
}
