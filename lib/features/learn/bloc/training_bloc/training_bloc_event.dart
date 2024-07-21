part of 'training_bloc.dart';

@freezed
class TrainingEvent with _$TrainingEvent {
  const factory TrainingEvent.setTopic(Topic topic) = _SetTopic;
  const factory TrainingEvent.setSubtopic(Subtopic subtopic) = _SetSubtopic;
  const factory TrainingEvent.nextStep() = _NextStep;
}
