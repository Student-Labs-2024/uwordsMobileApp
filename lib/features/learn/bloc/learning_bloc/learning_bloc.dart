import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';

part 'learning_bloc_state.dart';
part 'learning_bloc_event.dart';
part 'learning_bloc.freezed.dart';

class LearningBloc extends Bloc<LearningEvent, LearningState> {
  final IWordsRepository wordsRepository;
  final IUserRepository userRepository;

  List<Topic> topics = [];
  late Topic currentTopic;
  late Comparator<Subtopic> currentComparator;
  late Emitter<LearningState> _emitter;
  late String inProgressTopicName;

  LearningBloc({required this.wordsRepository, required this.userRepository})
      : super(const LearningState.initial(topics: [])) {
    on<_GetTopics>(_handleGetTopics);
    on<_ChooseTopic>(_handleChooseTopic);
    on<_ReturnToAllTopics>(_handleReturnToAllTopics);
    on<_UpdateSubtopicSort>(_handleUpdateSubtopicSort);
    on<_ReverseSubtopicSort>(_handleReverseSubtopicSort);
    on<_GetWordsByTopic>(_handleGetWordsByTopic);
    on<_GetWordsBySubtopic>(_handleGetWordsBySubtopic);
    on<_SortWords>(_handleSortWords);
  }

  Future<void> _handleGetTopics(
      _GetTopics event, Emitter<LearningState> emit) async {
    inProgressTopicName = event.inProgressTopicName;
    await _getTopicsFromServer(emit);
  }

  void _handleChooseTopic(_ChooseTopic event, Emitter<LearningState> emit) {
    currentTopic = event.topic;
    emit(LearningState.openMore(topic: currentTopic));
  }

  void _handleReturnToAllTopics(
      _ReturnToAllTopics event, Emitter<LearningState> emit) {
    emit(LearningState.initial(topics: topics));
  }

  void _handleUpdateSubtopicSort(
      _UpdateSubtopicSort event, Emitter<LearningState> emit) {
    currentTopic.subtopics.sort(event.comparator);
    currentComparator = event.comparator;
    emit(const LearningState.changedSort());
    emit(LearningState.openMore(topic: currentTopic));
  }

  void _handleReverseSubtopicSort(
      _ReverseSubtopicSort event, Emitter<LearningState> emit) {
    currentTopic.subtopics.replaceRange(0, currentTopic.subtopics.length,
        currentTopic.subtopics.reversed.toList());
    emit(const LearningState.changedSort());
    emit(LearningState.openMore(topic: currentTopic));
  }

  Future<void> _getTopicsFromServer(Emitter<LearningState> emit) async {
    try {
      String accessToken = await userRepository.getCurrentUserAccessToken();
      await checkTokenExpirationAndUpdateIfNeed(
          accessToken: accessToken, userRepository: userRepository);
      List<Topic> newTopics =
          await wordsRepository.getTopics(accessToken: accessToken);
      topics = [];
      topics.addAll(newTopics);
      emit(LearningState.gotWordsForStudy(topics: topics));
      emit(LearningState.initial(topics: topics));
    } on Exception catch (e) {
      _emitter = emit;
      addError(e);
    }
  }

  Future<void> _handleGetWordsByTopic(
      _GetWordsByTopic event, Emitter<LearningState> emit) async {
    try {
      String accessToken = await userRepository.getCurrentUserAccessToken();
      await checkTokenExpirationAndUpdateIfNeed(
          accessToken: accessToken, userRepository: userRepository);
      List<Subtopic> subtopics = topics
          .firstWhere((element) => event.topic.topicTitle == element.topicTitle)
          .subtopics;

      for (Subtopic element in subtopics) {
        await _getWordsByTopicAndSubtopic(accessToken, element);
      }
    } on Exception catch (e) {
      addError(e);
    }
  }

  Future<void> _handleGetWordsBySubtopic(
      _GetWordsBySubtopic event, Emitter<LearningState> emit) async {
    try {
      String accessToken = await userRepository.getCurrentUserAccessToken();
      await checkTokenExpirationAndUpdateIfNeed(
          accessToken: accessToken, userRepository: userRepository);
      await _getWordsByTopicAndSubtopic(accessToken, event.subtopic);
      emit(LearningState.openSubtopic(subtopic: event.subtopic));
    } on Exception catch (e) {
      addError(e);
    }
  }

  Future<void> _getWordsByTopicAndSubtopic(
      String accessToken, Subtopic subtopic) async {
    try {
      subtopic.wordInfoList.insertAll(
          0,
          await wordsRepository.getWordsByTopicAndSubtopic(
              accessToken: accessToken,
              topic: subtopic.topicTitle,
              subtopic: subtopic.subtopicTitle));
    } on Exception catch (e) {
      addError(e);
    }
  }

  void _handleSortWords(_SortWords event, Emitter<LearningState> emit) {
    event.subtopic.wordInfoList.sort(event.comparator);
  }

  @override
  void onError(Object error, StackTrace stackTrace) async {
    log(error.toString());
    switch (error.runtimeType) {
      case const (OldAccessToken):
        userRepository.refreshAccessToken();
        await _getTopicsFromServer(_emitter);
      case const (SocketException):
        _emitter(LearningState.failed(topics: topics));
    }
    super.onError(error, stackTrace);
  }
}
