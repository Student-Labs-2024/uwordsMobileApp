part of 'training_bloc.dart';

@freezed
abstract class TrainingState with _$TrainingState {
  const factory TrainingState.initial() = _TrainingInitial;
  const factory TrainingState.loading() = _TrainingIsLoading;
  const factory TrainingState.failed({
    required String message,
  }) = _TrainingFailed;

  const factory TrainingState.screen1({
    required WordModel word,
  }) = _Screen1;
  const factory TrainingState.screen2({
    required WordModel word,
    required List<Pair<String, int>> letters,
  }) = _Screen2;
  const factory TrainingState.screen3({
    required WordModel word,
  }) = _Screen3;
  const factory TrainingState.screen4({
    required WordModel word,
    required List<WordModel> selectableWords,
  }) = _Screen4;
  const factory TrainingState.finalScreen() = _FinalScreen;
  const factory TrainingState.success({
    required WordModel word,
  }) = _Success;
}
