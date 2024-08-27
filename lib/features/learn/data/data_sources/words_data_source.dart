import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:uwords/common/exceptions/training_exceptions.dart';
import 'package:uwords/common/utils/exception_check.dart';
import 'package:uwords/common/utils/jwt.dart';
import 'package:uwords/features/learn/data/data_sources/interface_words_data_source.dart';
import 'package:uwords/features/learn/data/learn_client.dart';
import 'package:uwords/features/learn/data/dto/topic_dto.dart';
import 'package:uwords/features/learn/data/dto/word_info_dto.dart';

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
      _isEnergyEnded(e);
      rethrow;
    }
  }

  void _isEnergyEnded(DioException exception) {
    switch (exception.response!.statusCode) {
      case 404:
        throw NoEnergyException();
    }
  }

  @override
  Future<void> deleteWord(
      {required String accessToken, required int id}) async {
    try {
      await client.deleteWords(
          joinTokenTypeAndToken(tokenType: tokenType, token: accessToken), id);
    } on DioException catch (e) {
      noInternetCheck(e);
      rethrow;
    }
  }
}
