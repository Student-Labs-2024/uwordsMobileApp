part of 'learning_bloc.dart';

@freezed
class LearningEvent with _$LearningEvent {
  const factory LearningEvent.getTopics() = _GetTopics;
  const factory LearningEvent.chooseTopic(Topic topic) = _ChooseTopic;
  const factory LearningEvent.updateSubtopicsSort(Comparator<Subtopic> comparator) = _UpdateSubtopicSort;
  const factory LearningEvent.reverseSubtopicsSort() = _ReverseSubtopicSort;
  const factory LearningEvent.returnToAllTopics() = _ReturnToAllTopics;
}
