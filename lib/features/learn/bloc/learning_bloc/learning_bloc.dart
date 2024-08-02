import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

part 'learning_bloc_state.dart';
part 'learning_bloc_event.dart';
part 'learning_bloc.freezed.dart';

class LearningBloc extends Bloc<LearningEvent, LearningState> {
  final IWordsRepository wordsRepository;
  final IUserRepository userRepository;

  List<WordModel> words = [];

  List<Topic> topics = [];

  late Topic currentTopic;
  late Comparator<Subtopic> currentComparator;

  LearningBloc({required this.wordsRepository, required this.userRepository})
      : super(const LearningState.initial(topics: [])) {
    on<_GetTopics>(_handleGetTopics);
    on<_ChooseTopic>(_handleChooseTopic);
    on<_ReturnToAllTopics>(_handleReturnToAllTopics);
    on<_UpdateSubtopicSort>(_handleUpdateSubtopicSort);
    on<_ReverseSubtopicSort>(_handleReverseSubtopicSort);
  }

  Future<void> _handleGetTopics(
      _GetTopics event, Emitter<LearningState> emit) async {
    try {
      await _getTopicsFromServer(emit);
    } on OldAccessException catch (e) {
      log(e.toString());
      userRepository.refreshAccessToken();
      await _getTopicsFromServer(emit);
    }
  }

  void _handleChooseTopic(_ChooseTopic event, Emitter<LearningState> emit) {
    currentTopic = event.topic;
    emit(LearningState.choseTopic(topic: currentTopic));
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
    emit(LearningState.choseTopic(topic: currentTopic));
  }

  void _handleReverseSubtopicSort(_ReverseSubtopicSort event, Emitter<LearningState> emit){
    currentTopic.subtopics.replaceRange(0, currentTopic.subtopics.length, currentTopic.subtopics.reversed.toList());
    emit(const LearningState.changedSort());
    emit(LearningState.choseTopic(topic: currentTopic));
  }

  Future<void> _getTopicsFromServer(Emitter<LearningState> emit) async {
    String accessToken = await userRepository.getCurrentUserAccessToken();
    await checkTokenExpirationAndUpdateIfNeed(
        accessToken: accessToken, userRepository: userRepository);
    List<Topic> newTopics =
        await wordsRepository.getTopics(accessToken: accessToken);
    topics = newTopics;
    emit(LearningState.gotWordsForStudy(topics: topics));
    emit(LearningState.initial(topics: topics));
  }
}
