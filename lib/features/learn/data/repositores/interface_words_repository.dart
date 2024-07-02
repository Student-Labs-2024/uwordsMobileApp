import 'package:uwords/features/learn/domain/models/word_model.dart';

abstract class IWordsRepository {
  Future<List<WordModel>> getWordsForStudy();
  Future<void> sendLearnedWords({required List<int> wordsId});
}
