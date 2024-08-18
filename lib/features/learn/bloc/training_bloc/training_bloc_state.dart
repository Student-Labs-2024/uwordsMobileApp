part of 'training_bloc.dart';

@Freezed(equal: false)
abstract class TrainingState with _$TrainingState {
  const factory TrainingState.initial() = _TrainingInitial;
  const factory TrainingState.loading() = _TrainingIsLoading;
  const factory TrainingState.failed({
    required String message,
  }) = _TrainingFailed;
  const factory TrainingState.screen1({
    required ValueKey valueKey,
    required WordModel word,
  }) = _Screen1;
  const factory TrainingState.screen2({
    required ValueKey valueKey,
    required WordModel word,
    required List<Pair<String, int>> letters,
  }) = _Screen2;
  const factory TrainingState.screen3({
    required ValueKey valueKey,
    required WordModel word,
  }) = _Screen3;
  const factory TrainingState.screen4({
    required ValueKey valueKey,
    required bool cantHear,
    required WordModel word,
    required List<WordModel> selectableWords,
  }) = _Screen4;
  const factory TrainingState.finalScreen({
    required ValueKey valueKey,
    required List<WordModel> words,
    required List<int> newProgress,
  }) = _FinalScreen;
}
