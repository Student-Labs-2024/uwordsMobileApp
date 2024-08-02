import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';

abstract class IWordsRepository {
  Future<void> sendLearnedWords(
      {required String accessToken, required List<int> wordsId});
  Future<List<Topic>> getTopicsForStudy({required String accessToken});
  Future<List<Topic>> getTopics({required String accessToken});
  Future<List<WordInfo>> getWordsByTopicAndSubtopic(
      {required String accessToken,
      required String topic,
      required String subtopic});
}
