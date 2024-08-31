import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';
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
  bool isFromCurrentTopic = false;

  LearningBloc({required this.wordsRepository, required this.userRepository})
      : super(const LearningState.initial(topics: [])) {
    on<_GetTopicsEvent>(_handleGetTopics);
    on<_ChooseTopicEvent>(_handleChooseTopic);
    on<_ReturnToAllTopicsEvent>(_handleReturnToAllTopics);
    on<_UpdateSubtopicSortEvent>(_handleUpdateSubtopicSort);
    on<_ReverseSubtopicSortEvent>(_handleReverseSubtopicSort);
    on<_GetWordsBySubtopicEvent>(_handleGetWordsBySubtopic);
    on<_SortWordsEvent>(_handleSortWords);
    on<_DeleteWordEvent>(_handleDeleteWord);
  }

  Future<void> _handleGetTopics(
      _GetTopicsEvent event, Emitter<LearningState> emit) async {
    inProgressTopicName = event.inProgressTopicName;
    await _getTopicsFromServer(emit);
  }

  int getSubtopicProgress(Subtopic subtopic, WordInfo deletedWordInfo) {
    if (subtopic.wordInfoList.length == 1) {
      return 0;
    }
    int maxProgress =
        (subtopic.wordInfoList.length - 1) * OtherLearnConstants.countRepeats;
    int currentProgress = 0;
    for (WordInfo wordInfo in subtopic.wordInfoList) {
      if (wordInfo == deletedWordInfo) continue;
      currentProgress += wordInfo.progress;
    }
    int result = ((currentProgress / maxProgress) * 100).toInt();
    return result;
  }

  Future<void> _handleDeleteWord(
      _DeleteWordEvent event, Emitter<LearningState> emit) async {
    Subtopic saveSubtopic = event.subtopic;
    try {
      String accessToken = await userRepository.getCurrentUserAccessToken();
      await checkTokenExpirationAndUpdateIfNeed(
          accessToken: accessToken, userRepository: userRepository);

      await wordsRepository.deleteWord(
          accessToken: accessToken, id: event.wordInfo.id);

      List<WordInfo> tempWords = [];
      tempWords.addAll(event.subtopic.wordInfoList);
      tempWords.remove(event.wordInfo);

      saveSubtopic = Subtopic(
          subtopicTitle: event.subtopic.subtopicTitle,
          topicTitle: event.subtopic.topicTitle,
          wordCount: event.subtopic.wordInfoList.length - 1,
          progress: getSubtopicProgress(event.subtopic, event.wordInfo),
          pictureLink: event.subtopic.pictureLink,
          wordInfoList: tempWords);

      for (Topic topic in topics) {
        if ((topic.topicTitle == OtherLearnConstants.inProgressTopic) ||
            (topic.topicTitle == event.subtopic.topicTitle)) {
          topic.subtopics.removeWhere((el) =>
              (el.subtopicTitle == event.subtopic.subtopicTitle) &&
              (el.topicTitle == event.subtopic.topicTitle));
          if (saveSubtopic.wordInfoList.isNotEmpty) {
            topic.subtopics.add(saveSubtopic);
          }
        }
      }
      topics.removeWhere((el) => el.subtopics.isEmpty);
    } on Exception catch (e) {
      addError(e);
    }
    emit(LearningState.openSubtopic(subtopic: saveSubtopic));
  }

  void _handleChooseTopic(
      _ChooseTopicEvent event, Emitter<LearningState> emit) {
    currentTopic = event.topic;
    isFromCurrentTopic = true;
    emit(LearningState.openMore(topic: currentTopic));
  }

  void _handleReturnToAllTopics(
      _ReturnToAllTopicsEvent event, Emitter<LearningState> emit) {
    if (isFromCurrentTopic) {
      emit(LearningState.openMore(topic: currentTopic));
    } else {
      isFromCurrentTopic = false;
      emit(LearningState.initial(topics: topics));
    }
  }

  void _handleUpdateSubtopicSort(
      _UpdateSubtopicSortEvent event, Emitter<LearningState> emit) {
    currentTopic.subtopics.sort(event.comparator);
    currentComparator = event.comparator;
    emit(const LearningState.changedSort());
    emit(LearningState.openMore(topic: currentTopic));
  }

  void _handleReverseSubtopicSort(
      _ReverseSubtopicSortEvent event, Emitter<LearningState> emit) {
    currentTopic.subtopics.replaceRange(0, currentTopic.subtopics.length,
        currentTopic.subtopics.reversed.toList());
    emit(const LearningState.changedSort());
    emit(LearningState.openMore(topic: currentTopic));
  }

  Future<void> _getTopicsFromServer(Emitter<LearningState> emit) async {
    isFromCurrentTopic = false;
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

  Future<void> _handleGetWordsBySubtopic(
      _GetWordsBySubtopicEvent event, Emitter<LearningState> emit) async {
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
      List<WordInfo> newWords =
          await wordsRepository.getWordsByTopicAndSubtopic(
              accessToken: accessToken,
              topic: subtopic.topicTitle,
              subtopic: subtopic.subtopicTitle);
      subtopic.wordInfoList.clear();
      subtopic.wordInfoList.addAll(newWords);
    } on Exception catch (e) {
      addError(e);
    }
  }

  void _handleSortWords(_SortWordsEvent event, Emitter<LearningState> emit) {
    event.subtopic.wordInfoList.sort(event.comparator);
    emit(LearningState.openSubtopic(subtopic: event.subtopic));
  }

  @override
  void onError(Object error, StackTrace stackTrace) async {
    log(error.toString());
    switch (error.runtimeType) {
      case const (OldAccessTokenException):
        userRepository.refreshAccessToken();
        await _getTopicsFromServer(_emitter);
      case const (SocketException):
        _emitter(LearningState.failed(topics: topics));
    }
    super.onError(error, stackTrace);
  }
}
