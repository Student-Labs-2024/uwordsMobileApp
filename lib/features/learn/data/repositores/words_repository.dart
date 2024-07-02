import 'package:uwords/features/learn/data/data_sources/interface_words_data_source.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';
import 'package:uwords/features/learn/domain/mapper/word_info_mapper.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

class WordsRepository implements IWordsRepository {
  final IWordsDataSource wordsDataSource;

  WordsRepository({required this.wordsDataSource});
  @override
  Future<List<WordModel>> getWordsForStudy() async {
    List<WordInfoDto> newWords = await wordsDataSource.getWordsForStudy();
    List<WordModel> result = [];
    for (var element in newWords) {
      result.add(element.toModel().word);
    }
    return result;
  }

  @override
  Future<void> sendLearnedWords({required List<int> wordsId}) async {
    await wordsDataSource.sendLearnedWords(wordsIds: wordsId);
  }
}
