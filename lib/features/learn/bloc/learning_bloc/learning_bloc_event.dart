part of 'learning_bloc.dart';

@freezed
class LearningEvent with _$LearningEvent {
  const factory LearningEvent.getWordsForStudy() = _GetWordsForStudy;
  const factory LearningEvent.sendLearnedWords(List<int> wordsId) =
      _SendLearnedWords;
}
