part of 'grade_bloc.dart';

@freezed
class GradeEvent with _$GradeEvent {
  const factory GradeEvent.open() = _Open;
  const factory GradeEvent.close() = _Close;
  const factory GradeEvent.sendGrade(int stars, String textGrade) = _SendGrade;
}
