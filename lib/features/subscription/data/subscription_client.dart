import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uwords/env.dart';

part 'subscription_client.g.dart';

@RestApi(baseUrl: anotherBaseUrl)
abstract class SubscriptionClient {
  factory SubscriptionClient(Dio dio, {String baseUrl}) = _SubscriptionClient;

  @GET("payment/form")
  Future<HttpResponse<List<String>>> payByTariffName(
      @Header("Authorization") String accessToken,
      @Query('sub_type') String subType,
      {@Header('Content-Type') String contentType = 'application/json'});

  @GET("payment/check")
  Future<bool> checkPaymentStatus(@Header("Authorization") String accessToken,
      @Query('pay_id') String payId,
      {@Header('Content-Type') String contentType = 'application/json'});

  @GET("subscription/all")
  Future<HttpResponse> getAllTariffs(
      @Header("Authorization") String accessToken,
      {@Header('Content-Type') String contentType = 'application/json'});
}
