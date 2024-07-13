import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
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
      await _getWordsFromServer(emit);
    } on OldAccessException catch (e) {
      userRepository.refreshAccessToken();
      await _getWordsFromServer(emit);
    }
  }

  Future<void> _handleSendLearnedWords(
      _SendLearnedWords event, Emitter<LearningState> emit) async {
    String accessToken = await userRepository.getCurrentUserAccessToken();
    await checkTokenExpirationAndUpdateIfNeed(
        accessToken: accessToken, userRepository: userRepository);
    await wordsRepository.sendLearnedWords(
        wordsId: event.wordsId, accessToken: accessToken);
    emit(LearningState.sendedLearnedWords(words: words));
  }

  Future<void> _getWordsFromServer(Emitter<LearningState> emit) async {
    String accessToken = await userRepository.getCurrentUserAccessToken();
    await checkTokenExpirationAndUpdateIfNeed(
        accessToken: accessToken, userRepository: userRepository);
    List<WordModel> newWords = await wordsRepository.getWordsForStudy(
        accessToken: accessToken);
    words = newWords;
    emit(LearningState.gotWordsForStudy(words: words));
    emit(LearningState.initial(words: words));
  }
}
