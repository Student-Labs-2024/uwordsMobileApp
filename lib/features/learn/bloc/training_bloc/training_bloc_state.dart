part of 'training_bloc.dart';

@freezed
abstract class TrainingState with _$TrainingState {
  const factory TrainingState.initial({
    required List<WordModel> words,
  }) = _TrainingInitial;
  const factory TrainingState.loading({
    required List<WordModel> words,
  }) = _TrainingIsLoading;
  const factory TrainingState.ready({
    required List<WordModel> words,
  }) = _TrainingReadyToStudy;
  const factory TrainingState.failed({
    required List<WordModel> words,
  }) = _TrainingFailed;
}
