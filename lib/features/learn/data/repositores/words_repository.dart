import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/data/data_sources/interface_words_data_source.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/learn/data/dto/topic_dto.dart';
import 'package:uwords/features/learn/data/dto/word_info_dto.dart';
import 'package:uwords/features/learn/domain/mapper/topic_mapper.dart';
import 'package:uwords/features/learn/domain/mapper/word_info_mapper.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
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
  Future<List<Subtopic>> getAllSubtopics({required String accessToken}) async {
    try {
      List<Subtopic> subtopics = [];
      List<Topic> topics = await getTopics(accessToken: accessToken);
      for (Topic topic in topics) {
        if (topic.topicTitle == OtherLearnConstants.topickNameInProgress) {
          continue;
        }
        for (Subtopic subtopic in topic.subtopics) {
          if (subtopic.subtopicTitle !=
              OtherLearnConstants.subtopickNameUnsorted) {
            subtopics.add(subtopic);
          }
        }
      }
      return subtopics;
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

  @override
  Future<List<WordInfo>> getWordsForStart(
      {required String accessToken,
      required String topicTitle,
      required String subtopicTitle}) async {
    try {
      List<WordInfoDto> wordsInfoDTOs =
          await wordsDataSource.fetchWordsForStart(
              accessToken: accessToken,
              topicTitle: topicTitle,
              subtopicTitle: subtopicTitle);
      List<WordInfo> wordsInfo = wordsInfoDTOs.toModel();
      return wordsInfo;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<void> deleteWord(
      {required String accessToken, required int id}) async {
    try {
      await wordsDataSource.deleteWord(accessToken: accessToken, id: id);
    } on Exception {
      rethrow;
    }
  }
}
