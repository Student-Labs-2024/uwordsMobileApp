import 'package:uwords/features/learn/domain/dto/topic_dto.dart';
import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';

abstract class IWordsDataSource {
  Future<void> sendLearnedWords(
      {required String accessToken, required List<int> wordsIds});
  Future<List<TopicDto>> getAllTopicsInfo({required String accessToken});
  Future<List<TopicDto>> fetchTopics({required String accessToken});
  Future<List<WordInfoDto>> fetchWordsByTopicAndSubtopic(
      {required String accessToken,
      required String topic,
      required String subtopic});
  Future<List<WordInfoDto>> fetchWordsForStart(
      {required String accessToken,
      required String topicTitle,
      required String subtopicTitle});
}
