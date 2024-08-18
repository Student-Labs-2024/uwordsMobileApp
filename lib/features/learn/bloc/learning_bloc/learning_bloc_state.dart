part of 'learning_bloc.dart';

@freezed
abstract class LearningState with _$LearningState {
  const factory LearningState.initial({
    required List<Topic> topics,
  }) = _LearningInitial;

  const factory LearningState.gotWordsForStudy({
    required List<Topic> topics,
  }) = _LearningGotWordsForStudy;

  const factory LearningState.openMore({
    required Topic topic,
  }) = _LearningOpenMore;

  const factory LearningState.changedSort() = _ChangedSort;

  const factory LearningState.failed({
    required List<Topic> topics,
  }) = _LearningFailed;

  const factory LearningState.openSubtopic(
     {required Subtopic subtopic}) = _OpenSubtopic;
}
