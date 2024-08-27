part of 'audio_link_bloc.dart';

@freezed
class AudioLinkEvent with _$AudioLinkEvent {
  const factory AudioLinkEvent.sendLink(String link) = _SendLinkEvent;
}
