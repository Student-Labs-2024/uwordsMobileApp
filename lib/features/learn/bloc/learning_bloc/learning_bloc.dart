import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
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

  LearningBloc({required this.wordsRepository, required this.userRepository})
      : super(const LearningState.initial(topics: [])) {
    on<_GetWordsForStudy>(_handleGetWordsForStudy);
  }

  Future<void> _handleGetWordsForStudy(
      _GetWordsForStudy event, Emitter<LearningState> emit) async {
    try {
      await _getTopicsFromServer(emit);
    } on OldAccessException catch (e) {
      log(e.toString());
      userRepository.refreshAccessToken();
      await _getTopicsFromServer(emit);
    }
  }

  Future<void> _getTopicsFromServer(Emitter<LearningState> emit) async {
    String accessToken = await userRepository.getCurrentUserAccessToken();
    await checkTokenExpirationAndUpdateIfNeed(
        accessToken: accessToken, userRepository: userRepository);
    List<Topic> newTopics =
        await wordsRepository.getTopicsForStudy(accessToken: accessToken);
    topics = newTopics;
    emit(LearningState.gotWordsForStudy(topics: topics));
    emit(LearningState.initial(topics: topics));
  }
}
