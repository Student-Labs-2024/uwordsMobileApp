import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

part 'player_bloc.freezed.dart';
part 'player_bloc_state.dart';
part 'player_bloc_event.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(const PlayerState.initial()) {
    on<_PlayAudio>(_handlePlayAudio);
  }

  Future<void> _handlePlayAudio(
      _PlayAudio event, Emitter<PlayerState> emit) async {
    try {
      final player = AudioPlayer();
      await player.setUrl(event.link);
      emit(const PlayerState.playing());
      player.setVolume(2.5);
      player.play();
      player.dispose();
      emit(const PlayerState.initial());
    } catch (e) {
      log(e.toString());
      emit(const PlayerState.failed());
    }
  }
}
