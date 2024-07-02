part of 'player_bloc.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState.initial() = _PlayerInitial;
  const factory PlayerState.playing() = _PlayerPlaying;
  const factory PlayerState.failed() = _PlayerFailed;
}
