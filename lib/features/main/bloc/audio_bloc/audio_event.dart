part of 'audio_bloc.dart';

@freezed
class AudioEvent with _$AudioEvent {
  const factory AudioEvent.startRecord() = _StartRecord;
  const factory AudioEvent.stopRecord() = _StopRecord;
  const factory AudioEvent.sendLink(String link) = _SendLink;
}
