part of 'learning_bloc.dart';

@freezed
abstract class LearningState with _$LearningState {
  const factory LearningState.initial({
    required List<Topic> topics,
  }) = _LearningInitial;

  const factory LearningState.gotWordsForStudy({
    required List<Topic> topics,
  }) = _LearningGotWordsForStudy;

  const factory LearningState.choseTopic({
    required Topic topic,
  }) = _LearningChoseTopic;

  const factory LearningState.changedSort() = _ChangedSort;

  const factory LearningState.failed({
    required List<Topic> topics,
  }) = _LearningFailed;
}
