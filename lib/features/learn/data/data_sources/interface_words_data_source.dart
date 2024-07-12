import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';

abstract class IWordsDataSource {
  Future<List<WordInfoDto>> getWordsForStudy({required String accessToken});
  Future<void> sendLearnedWords(
      {required String accessToken, required List<int> wordsIds});
}
