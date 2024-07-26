import 'package:uwords/features/learn/domain/models/topic_model.dart';

abstract class IWordsRepository {
  Future<void> sendLearnedWords(
      {required String accessToken, required List<int> wordsId});
  Future<List<Topic>> getTopicsForStudy({required String accessToken});
}
