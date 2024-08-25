import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uwords/env.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: anotherBaseUrl)
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST("users/register")
  Future<void> registerUser(@Body() body,
      {@Header('Content-Type') String contentType = 'application/json'});

  @POST("users/register/vk")
  Future<void> registerUserVk(
      @Body() body,
      @Header("Authorization") String accessToken,
      @Query('platform') String platform,
      {@Header('Content-Type') String contentType = 'application/json'});

  @POST("users/register/google")
  Future<void> registerUserGoogle(@Body() body,
      {@Header('Content-Type') String contentType = 'application/json'});

  @POST("users/login")
  Future<HttpResponse<Map<String, String>>> login(@Body() body,
      {@Header('Content-Type') String contentType = 'application/json'});

  @POST("users/login/vk")
  Future<HttpResponse<Map<String, String>>> loginVK(
      @Header("Authorization") String accessToken,
      @Query('platform') String platform,
      {@Header('Content-Type') String contentType = 'application/json'});

  @POST("users/login/google")
  Future<HttpResponse<Map<String, String>>> loginGoogle(
      @Body() body, @Header("Authorization") String uid,
      {@Header('Content-Type') String contentType = 'application/json'});

  @GET("users/token/refresh")
  Future<Map<String, String>> refresh(
    @Header("Authorization") String refreshToken,
  );

  @GET("email/send_code")
  Future<void> sendCode(@Header("Authorization") String secretToken,
      @Query('user_email') String email,
      {@Header('Content-Type') String contentType = 'application/json'});

  @POST("email/check_code")
  Future<HttpResponse> checkCode(
      @Header("Authorization") String secretToken, @Body() body,
      {@Header('Content-Type') String contentType = 'application/json'});

  @GET("users/me")
  Future<HttpResponse> aboutMe(@Header("Authorization") accessToken);

  @POST("users/feedback")
  Future<HttpResponse> sendGrade(
      @Header("Authorization") accessToken, @Body() body);
}
