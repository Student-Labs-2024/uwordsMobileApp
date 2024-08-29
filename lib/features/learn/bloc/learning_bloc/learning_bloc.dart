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

  int getSubtopicProgress(Subtopic subtopic) {
    if (subtopic.wordInfoList.isEmpty) {
      return 0;
    }
    int maxProgress =
        subtopic.wordInfoList.length * OtherLearnConstants.countRepeats;
    int currentProgress = 0;
    for (WordInfo wordInfo in subtopic.wordInfoList) {
      currentProgress += wordInfo.progress;
    }
    int result = ((currentProgress / maxProgress) * 100).toInt();
    return result;
  }

  Future<void> _handleDeleteWord(
      _DeleteWordEvent event, Emitter<LearningState> emit) async {
    Subtopic saveSubtopic = event.subtopic;
    try {
      List<Topic> saveTopics = [];
      saveTopics.addAll(topics);
      String accessToken = await userRepository.getCurrentUserAccessToken();
      await checkTokenExpirationAndUpdateIfNeed(
          accessToken: accessToken, userRepository: userRepository);

      await wordsRepository.deleteWord(
          accessToken: accessToken, id: event.wordInfo.word.id);
      //TODO Think about optimization
      for (Topic topic in saveTopics) {
        if (topic.topicTitle != event.subtopic.topicTitle) continue;
        for (int i = 0; i < topic.subtopics.length; i++) {
          if (topic.subtopics[i].subtopicTitle !=
              event.subtopic.subtopicTitle) {
            continue;
          }
          topic.subtopics[i].wordInfoList
              .removeWhere((item) => item == event.wordInfo);
          saveSubtopic = Subtopic(
              subtopicTitle: topic.subtopics[i].subtopicTitle,
              topicTitle: topic.subtopics[i].topicTitle,
              wordCount: topic.subtopics[i].wordInfoList.length,
              progress: getSubtopicProgress(topic.subtopics[i]),
              pictureLink: topic.subtopics[i].pictureLink,
              wordInfoList: topic.subtopics[i].wordInfoList);
          if (topic.subtopics[i].wordInfoList.isNotEmpty) {
            topic.subtopics.removeAt(i);
            topic.subtopics.insert(i, saveSubtopic);
          }
        }
      }
      if (saveSubtopic.wordInfoList.isEmpty) {
        List<int> unusedTopicsIndex = [];
        for (int i = 0; i < saveTopics.length; i++) {
          if (saveTopics[i].topicTitle == saveSubtopic.topicTitle) {
            saveTopics[i].subtopics.removeWhere(
                (el) => el.subtopicTitle == saveSubtopic.subtopicTitle);
            if (saveTopics[i].subtopics.isEmpty) {
              unusedTopicsIndex.add(i);
            }
          }
        }
        int offset = 0;
        if (unusedTopicsIndex.isNotEmpty) {
          for (int unusedTopicIndex in unusedTopicsIndex) {
            saveTopics.removeAt(unusedTopicIndex - offset);
            offset++;
          }
        }
      }
      topics = saveTopics;
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
