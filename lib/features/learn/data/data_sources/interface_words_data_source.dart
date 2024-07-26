import 'package:uwords/features/learn/domain/dto/topic_dto.dart';

abstract class IWordsDataSource {
  Future<void> sendLearnedWords(
      {required String accessToken, required List<int> wordsIds});
  Future<List<TopicDto>> getTopicsForStudy({required String accessToken});
}
