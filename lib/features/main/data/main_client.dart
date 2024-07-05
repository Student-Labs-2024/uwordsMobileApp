import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'main_client.g.dart';

@RestApi(baseUrl: "https://big-nose.ru/api/v1/")
abstract class MainClient {
  factory MainClient(Dio dio, {String baseUrl}) = _MainClient;

  @POST("user/audio")
  Future<void> sendAudio(
    @Query('user_id') String user_id,
    @Body() FormData file,
  );

  @POST("user/youtube")
  Future<void> sendLink(
    @Query("user_id") String user_id,
    @Body() String link,
  );
}
