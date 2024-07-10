import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: "https://big-nose.ru/api/")
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST("users/register")
  Future<void> register(
    @Body() String provider,
    @Body() String email,
    @Body() String password,
  );

  @POST("users/register")
  Future<void> registerUserFromThirdPartyService(
    @Body() String provider,
    @Body() String email,
    @Body() String password,
    @Body() String username,
    @Body() String firstname,
    @Body() String lastname,
    @Body() String avatar_url,
    @Body() String phone_number,
  );

  @POST("users/login")
  Future<Map<String, String>> login(
    @Body() String provider,
    @Body() String email,
    @Body() String password,
  );

  @GET("user/token/refresh")
  Future<Map<String, String>> refresh(
    @Header("Authorization") String refreshToken,
  );

  //TODO add profile_model/user_model before adding it

  // @GET("user/me")
  // Future<Response> aboutMe(
  //   @Header("Authorization") String accessToken,
  // );

  // @POST("user/me/update")
  // Future<Response> updateAboutMe(
  //   @Header("Authorization") String accessToken,
  //   @Body() String username,
  //   @Body() String name,
  //   @Body() String surname,
  //   @Body() String avatar_url,
  //   @Body() String phone_number,
  //   @Body() String birth_date,
  // );
}
