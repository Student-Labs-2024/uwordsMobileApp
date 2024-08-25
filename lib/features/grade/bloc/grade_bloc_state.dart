part of 'grade_bloc.dart';

@freezed
class GradeState with _$GradeState {
  const factory GradeState.enabled() = _Enabled;
  const factory GradeState.disabled() = _Disabled;
}
