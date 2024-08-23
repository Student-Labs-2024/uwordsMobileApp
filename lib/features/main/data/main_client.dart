import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uwords/env.dart';

part 'main_client.g.dart';

@RestApi(baseUrl: baseUrl)
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
