import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';

part 'learn_client.g.dart';

@RestApi(baseUrl: "https://app.big-nose.ru/api/v1/")
abstract class LearnClient {
  factory LearnClient(Dio dio, {String baseUrl}) = _LearnClient;

  @GET("user/words/get_words")
  Future<List<WordInfoDto>> getWords(@Query("user_id") String userId);
}
