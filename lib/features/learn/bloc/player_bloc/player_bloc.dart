import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

part 'player_bloc.freezed.dart';
part 'player_bloc_state.dart';
part 'player_bloc_event.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final player = AudioPlayer();
  PlayerBloc() : super(const PlayerState.initial()) {
    on<_PlayAudioEvent>(_handlePlayAudio);
  }

  Future<void> _handlePlayAudio(
      _PlayAudioEvent event, Emitter<PlayerState> emit) async {
    try {
      await player.setUrl(event.link);
      emit(const PlayerState.playing());
      player.setVolume(2.5);
      player.play();
      emit(const PlayerState.initial());
    } catch (e) {
      log(e.toString());
      emit(const PlayerState.failed());
    }
  }
}
