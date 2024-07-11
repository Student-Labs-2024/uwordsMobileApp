import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/auth/old_access_token_exception.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

part 'learning_bloc_state.dart';
part 'learning_bloc_event.dart';
part 'learning_bloc.freezed.dart';

class LearningBloc extends Bloc<LearningEvent, LearningState> {
  final IWordsRepository wordsRepository;
  final IUserRepository userRepository;
  List<WordModel> words = [];
  LearningBloc({required this.wordsRepository, required this.userRepository})
      : super(const LearningState.initial(words: [])) {
    on<_GetWordsForStudy>(_handleGetWordsForStudy);
    on<_SendLearnedWords>(_handleSendLearnedWords);
  }

  Future<void> _handleGetWordsForStudy(
      _GetWordsForStudy event, Emitter<LearningState> emit) async {
    try {
      _getWordsFromServer(emit);
    } on OldAccessException catch (e) {
      userRepository.refreshAccessToken();
      _getWordsFromServer(emit);
    }
  }

  Future<void> _handleSendLearnedWords(
      _SendLearnedWords event, Emitter<LearningState> emit) async {
    await wordsRepository.sendLearnedWords(
        wordsId: event.wordsId,
        accessToken: await userRepository.getCurrentUserAccessToken());
    emit(LearningState.sendedLearnedWords(words: words));
  }

  Future<void> _getWordsFromServer(Emitter<LearningState> emit) async {
    List<WordModel> newWords = await wordsRepository.getWordsForStudy(
        accessToken: await userRepository.getCurrentUserAccessToken());
    words = newWords;
    emit(LearningState.gotWordsForStudy(words: words));
    emit(LearningState.initial(words: words));
  }
}
