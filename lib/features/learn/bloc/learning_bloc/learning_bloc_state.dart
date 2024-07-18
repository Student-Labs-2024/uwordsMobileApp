part of 'learning_bloc.dart';

@freezed
abstract class LearningState with _$LearningState {
  const factory LearningState.initial({
    required List<WordModel> words,
  }) = _LearningInitial;

  const factory LearningState.gotWordsForStudy({
    required List<WordModel> words,
  }) = _LearningGotWordsForStudy;

  const factory LearningState.sendedLearnedWords({
    required List<WordModel> words,
  }) = _LearningSendedLearnedWords;

  const factory LearningState.failed({
    required List<WordModel> words,
  }) = _LearningFailed;
}
