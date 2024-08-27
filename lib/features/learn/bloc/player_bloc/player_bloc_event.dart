part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.playAudio(String link) = _PlayAudioEvent;
}
