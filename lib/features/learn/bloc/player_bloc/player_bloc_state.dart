part of 'player_bloc.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState.initial() = _PlayerInitialState;
  const factory PlayerState.playing() = _PlayerPlayingState;
  const factory PlayerState.failed() = _PlayerFailedState;
}
