import 'package:uwords/features/learn/data/data_sources/interface_words_data_source.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/learn/domain/dto/topic_dto.dart';
import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';
import 'package:uwords/features/learn/domain/mapper/topic_mapper.dart';
import 'package:uwords/features/learn/domain/mapper/word_info_mapper.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';

class WordsRepository implements IWordsRepository {
  final IWordsDataSource wordsDataSource;

  WordsRepository({required this.wordsDataSource});

  @override
  Future<List<Topic>> getTopicsForStudy({required String accessToken}) async {
    try {
      List<TopicDto> newTopics =
          await wordsDataSource.getAllTopicsInfo(accessToken: accessToken);
      List<Topic> result = newTopics.toModel();
      return result;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<List<Topic>> getTopics({required String accessToken}) async {
    try {
      final List<TopicDto> topicsDto =
          await wordsDataSource.fetchTopics(accessToken: accessToken);
      return topicsDto.map((topic) => topic.toModel()).toList();
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<List<WordInfo>> getWordsByTopicAndSubtopic(
      {required String accessToken,
      required String topic,
      required String subtopic}) async {
    try {
      final List<WordInfoDto> wordsInfoDto =
          await wordsDataSource.fetchWordsByTopicAndSubtopic(
              accessToken: accessToken, topic: topic, subtopic: subtopic);
      final List<WordInfo> words =
          wordsInfoDto.map((element) => element.toModel()).toList();
      return words;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<void> sendLearnedWords(
      {required String accessToken, required List<int> wordsId}) async {
    try {
      await wordsDataSource.sendLearnedWords(
          wordsIds: wordsId, accessToken: accessToken);
    } on Exception {
      rethrow;
    }
  }
}
