import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';

abstract class IWordsRepository {
  Future<void> sendLearnedWords(
      {required String accessToken, required List<int> wordsId});
  Future<List<Topic>> getTopicsForStudy({required String accessToken});
  Future<List<Topic>> getTopics({required String accessToken});
  Future<List<Subtopic>> getAllSubtopics({required String accessToken});
  Future<List<WordInfo>> getWordsByTopicAndSubtopic(
      {required String accessToken,
      required String topic,
      required String subtopic});
  Future<List<WordInfo>> getWordsForStart(
      {required String accessToken,
      required String topicTitle,
      required String subtopicTitle});
  Future<void> deleteWord({required String accessToken, required int id});
}
