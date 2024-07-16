import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uwords/env.dart';
import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';

part 'learn_client.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class LearnClient {
  factory LearnClient(Dio dio, {String baseUrl}) = _LearnClient;

  @GET("user/words/get_words")
  Future<List<WordInfoDto>> getWords(
      @Header("Authorization") String accessToken);
}
