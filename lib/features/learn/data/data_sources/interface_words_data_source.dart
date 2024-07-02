import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';

abstract class IWordsDataSource {
  Future<List<WordInfoDto>> getWordsForStudy();
  Future<void> sendLearnedWords({required List<int> wordsIds});
}
