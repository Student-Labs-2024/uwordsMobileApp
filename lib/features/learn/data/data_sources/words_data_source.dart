import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:uwords/common/utils/exception_check.dart';
import 'package:uwords/common/utils/jwt.dart';
import 'package:uwords/features/learn/data/data_sources/interface_words_data_source.dart';
import 'package:uwords/features/learn/data/learn_client.dart';
import 'package:uwords/features/learn/domain/dto/topic_dto.dart';
import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';

class WordsDataSource implements IWordsDataSource {
  static Dio dio = Dio();
  final client = LearnClient(dio);
  final String tokenType = "Bearer";

  @override
  Future<List<TopicDto>> getAllTopicsInfo({required String accessToken}) async {
    try {
      List<TopicDto> topics = [];
      topics = await client.getAllWords(
          joinTokenTypeAndToken(tokenType: tokenType, token: accessToken));
      return topics;
    } on DioException catch (e) {
      noInternetCheck(e);
      rethrow;
    }
  }

  @override
  Future<List<TopicDto>> fetchTopics({required String accessToken}) async {
    try {
      List<TopicDto> topics = [];
      topics = await client.getTopics(
          joinTokenTypeAndToken(tokenType: tokenType, token: accessToken));
      return topics;
    } on DioException catch (e) {
      noInternetCheck(e);
      rethrow;
    }
  }

  @override
  Future<List<WordInfoDto>> fetchWordsByTopicAndSubtopic(
      {required String accessToken,
      required String topic,
      required String subtopic}) async {
    try {
      List<WordInfoDto> words = [];
      words = await client.getWordsByTopicAndSubtopic(
          joinTokenTypeAndToken(tokenType: tokenType, token: accessToken),
          topic,
          subtopic);
      return words;
    } on DioException catch (e) {
      noInternetCheck(e);
      rethrow;
    }
  }

  @override
  Future<void> sendLearnedWords(
      {required String accessToken, required List<int> wordsIds}) async {
    final body = {'words_ids': wordsIds};
    await client.sendWordsWhenFinished(
        joinTokenTypeAndToken(tokenType: tokenType, token: accessToken),
        jsonEncode(body));
  }

  @override
  Future<List<WordInfoDto>> fetchWordsForStart(
      {required String accessToken,
      required String topicTitle,
      required String subtopicTitle}) async {
    try {
      List<WordInfoDto> words = [];
      words = await client.getWordsForStartTraining(
          joinTokenTypeAndToken(tokenType: tokenType, token: accessToken),
          topicTitle,
          subtopicTitle);
      return words;
    } on DioException catch (e) {
      noInternetCheck(e);
      rethrow;
    }
  }
}
