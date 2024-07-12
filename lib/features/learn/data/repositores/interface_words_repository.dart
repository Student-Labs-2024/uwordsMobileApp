import 'package:uwords/features/learn/domain/models/word_model.dart';

abstract class IWordsRepository {
  Future<List<WordModel>> getWordsForStudy({required String accessToken});
  Future<void> sendLearnedWords(
      {required String accessToken, required List<int> wordsId});
}
