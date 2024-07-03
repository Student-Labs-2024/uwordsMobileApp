import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'main_client.g.dart';

@RestApi(baseUrl: "https://big-nose.ru/api/v1/")
abstract class MainClient {
  factory MainClient(Dio dio, {String baseUrl}) = _MainClient;

  @POST("user/{user_id}/audio")
  Future<void> sendAudio(
    @Path("user_id") String user_id,
    @Body() FormData file,
  );

  @POST("user/{user_id}/youtube")
  Future<void> sendLink(
    @Path("user_id") String user_id,
    @Body() String link,
  );
}
