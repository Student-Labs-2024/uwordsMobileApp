part of 'record_bloc.dart';

@freezed
class RecordEvent with _$RecordEvent {
  const factory RecordEvent.sendError(String message) = _SendError;
  const factory RecordEvent.sendPath(String path) = _SendPath;
}
