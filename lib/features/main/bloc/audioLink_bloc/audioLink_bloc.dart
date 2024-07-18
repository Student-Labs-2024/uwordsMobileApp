import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/main/data/repositories/interface_audio_repository.dart';

part 'audioLink_bloc.freezed.dart';
part 'audioLink_state.dart';
part 'audioLink_event.dart';

class AudioLinkBloc extends Bloc<AudioLinkEvent, AudioLinkState> {
  final IAudioRepository audioRepository;
  final IUserRepository userRepository;

  AudioLinkBloc({required this.audioRepository, required this.userRepository})
      : super(const AudioLinkState.initial()) {
    on<_SendLink>(_handleSendLink);
  }

  Future<void> _handleSendLink(
      _SendLink event, Emitter<AudioLinkState> emit) async {
    try {
      if (_isValidYoutubeUrl(event.link)) {
        String accessToken = await userRepository.getCurrentUserAccessToken();
        await checkTokenExpirationAndUpdateIfNeed(
            accessToken: accessToken, userRepository: userRepository);
        await audioRepository.sendLink(
            link: event.link, accessToken: accessToken);
        emit(const AudioLinkState.sended());
        await Future.delayed(const Duration(milliseconds: 1500));
        emit(const AudioLinkState.initial());
      } else {
        emit(const AudioLinkState.failed('invalidLink'));
        await Future.delayed(const Duration(seconds: 5));
        emit(const AudioLinkState.initial());
      }
    } catch (e) {
      log(e.toString());
      emit(const AudioLinkState.failed('unknowError'));
    }
  }

  bool _isValidYoutubeUrl(String url) {
    final RegExp youtubeRegex = RegExp(
        r'^(?:https?:\/\/)?(?:www\.)?youtube\.com\/(?:watch\?v=|embed\/)([a-zA-Z0-9_-]{11})(?:[&?].*)?$');
    final RegExp youtubeShortRegex = RegExp(
        r'^(?:https?:\/\/)?(?:www\.)?youtu\.be\/([a-zA-Z0-9_-]{11})(?:[&?].*)?$');
    final RegExp youtubeShortsRegex = RegExp(
        r'^(?:https?:\/\/)?(?:www\.)?youtube\.com\/shorts\/([a-zA-Z0-9_-]{11})(?:[&?].*)?$');
    return youtubeRegex.hasMatch(url) ||
        youtubeShortRegex.hasMatch(url) ||
        youtubeShortsRegex.hasMatch(url);
  }
}
