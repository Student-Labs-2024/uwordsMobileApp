import 'package:uwords/features/learn/data/data_sources/interface_words_data_source.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/learn/domain/dto/topic_dto.dart';
import 'package:uwords/features/learn/domain/mapper/topic_mapper.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';

class WordsRepository implements IWordsRepository {
  final IWordsDataSource wordsDataSource;

  WordsRepository({required this.wordsDataSource});

  @override
  Future<List<Topic>> getTopicsForStudy({required String accessToken}) async {
    List<TopicDto> newTopics =
        await wordsDataSource.getTopicsForStudy(accessToken: accessToken);

    List<Topic> result = newTopics.toModel();
    return result;
  }

  @override
  Future<void> sendLearnedWords(
      {required String accessToken, required List<int> wordsId}) async {
    await wordsDataSource.sendLearnedWords(
        wordsIds: wordsId, accessToken: accessToken);
  }
}
