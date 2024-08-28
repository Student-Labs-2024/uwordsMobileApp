part of 'learning_bloc.dart';

@freezed
abstract class LearningState with _$LearningState {
  const factory LearningState.initial({
    required List<Topic> topics,
  }) = _LearningInitialState;

  const factory LearningState.gotWordsForStudy({
    required List<Topic> topics,
  }) = _LearningGotWordsForStudyState;

  const factory LearningState.openMore({
    required Topic topic,
  }) = _LearningOpenMoreState;

  const factory LearningState.changedSort() = _ChangedSort;

  const factory LearningState.failed({
    required List<Topic> topics,
  }) = _LearningFailedState;

  const factory LearningState.openSubtopic({required Subtopic subtopic}) =
      _OpenSubtopicState;
}
