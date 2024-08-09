part of 'learning_bloc.dart';

@freezed
class LearningEvent with _$LearningEvent {
  const factory LearningEvent.getTopics(String inProgressTopicName) =
      _GetTopics;
  const factory LearningEvent.getWordsByTopic(Topic topic) = _GetWordsByTopic;
  const factory LearningEvent.getWordsBySubtopic(Subtopic subtopic) =
      _GetWordsBySubtopic;
  const factory LearningEvent.chooseTopic(Topic topic) = _ChooseTopic;
  const factory LearningEvent.updateSubtopicsSort(
      Comparator<Subtopic> comparator) = _UpdateSubtopicSort;
  const factory LearningEvent.reverseSubtopicsSort() = _ReverseSubtopicSort;
  const factory LearningEvent.returnToAllTopics() = _ReturnToAllTopics;
  const factory LearningEvent.sortWords(
      Subtopic subtopic, Comparator<WordInfo> comparator) = _SortWords;
}
