part of 'record_bloc.dart';

@freezed
class RecordState with _$RecordState {
  const factory RecordState.initial() = _RecordInitial;
  const factory RecordState.failed(String message) = _RecordFailed;
  const factory RecordState.sended() = _RecordSended;
}
