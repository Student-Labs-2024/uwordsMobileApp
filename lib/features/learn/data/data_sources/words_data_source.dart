import 'package:dio/dio.dart';
import 'package:uwords/features/auth/data/auth_client.dart';
import 'package:uwords/features/learn/data/data_sources/interface_words_data_source.dart';
import 'package:uwords/features/learn/data/learn_client.dart';
import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';

class WordsDataSource implements IWordsDataSource {
  static Dio dio = Dio();
  final client = LearnClient(dio);
  @override
  Future<List<WordInfoDto>> getWordsForStudy(
      {required String accessToken}) async {
    List<WordInfoDto> words = [];
    words = await client.getWords("Bearer $accessToken");
    return words;
  }

  @override
  Future<void> sendLearnedWords(
      {required String accessToken, required List<int> wordsIds}) {
    // TODO: implement sendLearnedWords
    throw UnimplementedError();
  }
}
