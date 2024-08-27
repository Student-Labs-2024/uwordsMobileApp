import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uwords/env.dart';
import 'package:uwords/features/learn/data/dto/topic_dto.dart';
import 'package:uwords/features/learn/data/dto/word_info_dto.dart';

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
      @Header("Authorization") String accessToken,
      @Query("topic_title") String topicTitle,
      @Query("subtopic_title") String subtopicTitle);

  @GET("user/words/study")
  Future<List<WordInfoDto>> getWordsForStartTraining(
      @Header("Authorization") String accessToken,
      @Query("topic_title") String topicTitle,
      @Query("subtopic_title") String subtopicTitle);

  @POST("user/words/study")
  Future<HttpResponse> sendWordsWhenFinished(
      @Header("Authorization") String accessToken, @Body() body);

  @DELETE("user/word")
  Future<HttpResponse> deleteWords(@Header("Authorization") String accessToken,
      @Query("user_word_id") int userWordId);
}
