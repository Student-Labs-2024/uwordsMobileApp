part of 'audioLink_bloc.dart';

@freezed
class AudioLinkEvent with _$AudioLinkEvent {
  const factory AudioLinkEvent.sendLink(String link) = _SendLink;
}
