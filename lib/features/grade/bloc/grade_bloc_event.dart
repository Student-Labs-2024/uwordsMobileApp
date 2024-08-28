part of 'grade_bloc.dart';

@freezed
class GradeEvent with _$GradeEvent {
  const factory GradeEvent.open() = _OpenEvent;
  const factory GradeEvent.close() = _CloseEvent;
  const factory GradeEvent.sendGrade(int stars, String textGrade) =
      _SendGradeEvent;
}
