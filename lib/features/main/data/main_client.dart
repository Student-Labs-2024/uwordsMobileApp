import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'main_client.g.dart';

@RestApi(baseUrl: "https://app.big-nose.ru/api/v1/")
abstract class MainClient {
  factory MainClient(Dio dio, {String baseUrl}) = _MainClient;

  @POST("user/audio")
  Future<void> sendAudio(
    @Header("Authorization") String accessToken,
    @Body() FormData file,
  );

  @POST("user/youtube")
  Future<void> sendLink(
    @Header("Authorization") String accessToken,
    @Field("link") String link,
  );
}
