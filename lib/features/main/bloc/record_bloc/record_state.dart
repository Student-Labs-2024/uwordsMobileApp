part of 'record_bloc.dart';

@freezed
class RecordState with _$RecordState {
  const factory RecordState.initial() = _RecordInitialSate;
  const factory RecordState.failed(String message) = _RecordFailedState;
  const factory RecordState.sended() = _RecordSendedState;
}
