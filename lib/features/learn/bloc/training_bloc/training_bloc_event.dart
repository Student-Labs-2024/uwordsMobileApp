part of 'training_bloc.dart';

@freezed
class TrainingEvent with _$TrainingEvent {
  const factory TrainingEvent.setTopic(Topic topic) = _SetTopic;
  const factory TrainingEvent.setSubtopic(Subtopic subtopic) = _SetSubtopic;
  const factory TrainingEvent.nextStep() = _NextStep;
  const factory TrainingEvent.goSuccessfulScreen() = _GoSuccessfulScreen;
  const factory TrainingEvent.cantHear() = _CantHear;
  const factory TrainingEvent.cantSpeak() = _CantSpeak;
  const factory TrainingEvent.zeroHealth() = _ZeroHealth;
  const factory TrainingEvent.startStudy(Subtopic subtopic) = _StartStudy;
}
