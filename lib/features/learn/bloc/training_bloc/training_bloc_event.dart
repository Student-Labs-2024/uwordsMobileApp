part of 'training_bloc.dart';

@freezed
class TrainingEvent with _$TrainingEvent {
  const factory TrainingEvent.setTopic(Topic topic) = _SetTopicEvent;
  const factory TrainingEvent.setSubtopic(Subtopic subtopic) =
      _SetSubtopicEvent;
  const factory TrainingEvent.nextStep() = _NextStepEvent;
  const factory TrainingEvent.goSuccessfulScreen() = _GoSuccessfulScreenEvent;
  const factory TrainingEvent.cantHear() = _CantHearEvent;
  const factory TrainingEvent.cantSpeak() = _CantSpeakEvent;
  const factory TrainingEvent.zeroHealth() = _ZeroHealthEvent;
  const factory TrainingEvent.startStudy(Subtopic subtopic) = _StartStudyEvent;
}
