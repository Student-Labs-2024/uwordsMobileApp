part of 'learning_bloc.dart';

@freezed
class LearningEvent with _$LearningEvent {
  const factory LearningEvent.getTopics(String inProgressTopicName) =
      _GetTopicsEvent;
  const factory LearningEvent.getWordsByTopic(Topic topic) =
      _GetWordsByTopicEvent;
  const factory LearningEvent.getWordsBySubtopic(Subtopic subtopic) =
      _GetWordsBySubtopicEvent;
  const factory LearningEvent.chooseTopic(Topic topic) = _ChooseTopicEvent;
  const factory LearningEvent.updateSubtopicsSort(
      Comparator<Subtopic> comparator) = _UpdateSubtopicSortEvent;
  const factory LearningEvent.reverseSubtopicsSort() =
      _ReverseSubtopicSortEvent;
  const factory LearningEvent.returnToAllTopics() = _ReturnToAllTopicsEvent;
  const factory LearningEvent.sortWords(
      Subtopic subtopic, Comparator<WordInfo> comparator) = _SortWordsEvent;
  const factory LearningEvent.deleteWord(WordInfo wordInfo, Subtopic subtopic) =
      _DeleteWordEvent;
}
