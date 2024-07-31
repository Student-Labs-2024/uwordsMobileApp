import 'package:dio/dio.dart';
import 'package:uwords/features/learn/data/data_sources/interface_words_data_source.dart';
import 'package:uwords/features/learn/data/learn_client.dart';
import 'package:uwords/features/learn/domain/dto/topic_dto.dart';
import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';
import 'package:uwords/features/learn/domain/request_bodies/topic_words_request.dart';

class WordsDataSource implements IWordsDataSource {
  static Dio dio = Dio();
  final client = LearnClient(dio);

  @override
  Future<List<TopicDto>> getAllTopicsInfo({required String accessToken}) async {
    List<TopicDto> topics = [];
    topics = await client.getAllWords("Bearer $accessToken");
    return topics;
  }

  @override
  Future<List<TopicDto>> fetchTopics({required String accessToken}) async {
    List<TopicDto> topics = [];
    topics = await client.getTopics(accessToken);
    return topics;
  }

  @override
  Future<List<WordInfoDto>> fetchWordsByTopicAndSubtopic(
      {required String accessToken,
      required String topic,
      required String subtopic}) async {
    List<WordInfoDto> words = [];
    words = await client.getWordsByTopicAndSubtopic(
        accessToken, TopicWordsRequest(topic: topic, subtopic: subtopic));
    return words;
  }

  @override
  Future<void> sendLearnedWords(
      {required String accessToken, required List<int> wordsIds}) {
    // TODO: implement sendLearnedWords
    throw UnimplementedError();
  }
}
