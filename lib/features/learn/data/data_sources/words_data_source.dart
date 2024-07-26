import 'package:dio/dio.dart';
import 'package:uwords/features/learn/data/data_sources/interface_words_data_source.dart';
import 'package:uwords/features/learn/data/learn_client.dart';
import 'package:uwords/features/learn/domain/dto/topic_dto.dart';

class WordsDataSource implements IWordsDataSource {
  static Dio dio = Dio();
  final client = LearnClient(dio);

  @override
  Future<List<TopicDto>> getTopicsForStudy(
      {required String accessToken}) async {
    List<TopicDto> topics = [];
    topics = await client.getTopics("Bearer $accessToken");
    return topics;
  }

  @override
  Future<void> sendLearnedWords(
      {required String accessToken, required List<int> wordsIds}) {
    // TODO: implement sendLearnedWords
    throw UnimplementedError();
  }
}
