import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uwords/env.dart';
import 'package:uwords/features/learn/domain/dto/topic_dto.dart';
import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';

part 'learn_client.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class LearnClient {
  factory LearnClient(Dio dio, {String baseUrl}) = _LearnClient;

  @GET("user/words/get_words")
  Future<List<TopicDto>> getAllWords(
      @Header("Authorization") String accessToken);

  @GET("user/topics")
  Future<List<TopicDto>> getTopics(@Header("Authorization") String accessToken);

  @GET("user/subtopic/words")
  Future<List<WordInfoDto>> getWordsByTopicAndSubtopic(
      @Header("Authorization") String accessToken, @Body() body);
}
