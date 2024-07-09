import 'package:dio/dio.dart';
import 'package:uwords/features/auth/data/auth_client.dart';
import 'package:uwords/features/learn/data/data_sources/interface_words_data_source.dart';
import 'package:uwords/features/learn/data/learn_client.dart';
import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';

class WordsDataSource implements IWordsDataSource {
  static Dio dio = Dio();
  final client = LearnClient(dio);
  @override
  Future<List<WordInfoDto>> getWordsForStudy() async {
    final user = await AuthClient().getUser();
    List<WordInfoDto> words = [];
    if (user != null) {
      words = await client.getWords(user.uid); //user.uid
    } else {
      words = await client.getWords("test");
    }
    return words;
  }

  @override
  Future<void> sendLearnedWords({required List<int> wordsIds}) {
    // TODO: implement sendLearnedWords
    throw UnimplementedError();
  }
}
