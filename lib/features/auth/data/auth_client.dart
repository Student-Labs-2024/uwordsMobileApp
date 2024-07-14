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

  @POST("users/login")
  Future<HttpResponse<Map<String,String>>> login(@Body() body,
      {@Header('Content-Type') String contentType = 'application/json'});

  @GET("users/token/refresh")
  Future<Map<String, String>> refresh(
    @Header("Authorization") String refreshToken,
  );

  //TODO add profile_model/user_model before adding it
  // @GET("user/me")
  // Future<Response> aboutMe(
  //   @Header("Authorization") String accessToken,
  // );

  //TODO add update profile request
  // @POST("user/me/update")
  // Future<Response> updateAboutMe(
  //   @Header("Authorization") String accessToken,
  //   @Field() String username,
  //   @Field() String name,
  //   @Field() String surname,
  //   @Field() String avatar_url,
  //   @Field() String phone_number,
  //   @Field() String birth_date,
  // );
}
