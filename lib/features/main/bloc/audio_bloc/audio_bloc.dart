import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:path_provider/path_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/main/data/repositories/interface_audio_repository.dart';
import 'package:permission_handler/permission_handler.dart';

part 'audio_bloc.freezed.dart';
part 'audio_state.dart';
part 'audio_event.dart';

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  late FlutterSoundRecorder recorder;
  Timer? _timer;
  int _time = 0;
  String _audioPath = "";
  final IAudioRepository audioRepository;
  final IUserRepository userRepository;

  AudioBloc({required this.audioRepository, required this.userRepository})
      : super(const AudioState.initial()) {
    on<_StartRecord>(_handleStartRecord);
    on<_StopRecord>(_handleStopRecord);
    on<_SendLink>(_handleSendLink);
  }

  Future<void> _handleStartRecord(
      _StartRecord event, Emitter<AudioState> emit) async {
    try {
      _requestPermission();
      await _initRecorder();
      Directory appDocDirectory;
      if (Platform.isIOS) {
        appDocDirectory = await getApplicationDocumentsDirectory();
      } else {
        appDocDirectory = (await getExternalStorageDirectory())!;
      }
      _audioPath =
          "${appDocDirectory.path}/audio_records${DateTime.now().millisecondsSinceEpoch}";
      await recorder.startRecorder(toFile: _audioPath);
      emit(const AudioState.started());
    } catch (e) {
      log(e.toString());
      emit(const AudioState.failed());
    }
  }

  Future<void> _handleStopRecord(
      _StopRecord event, Emitter<AudioState> emit) async {
    var path = await recorder.stopRecorder();
    String? audioPath = path.toString();
    if (audioPath.isNotEmpty) {
      _timer?.cancel();
      emit(const AudioState.stopped());
      try {
        await _sendFile(audioPath);
        emit(const AudioState.sended());
        emit(const AudioState.initial());
      } on DioException catch (e) {
        log(e.toString());
        emit(const AudioState.failed());
      }
    }
    _closeRecorder();
  }

  Future<void> _handleSendLink(
      _SendLink event, Emitter<AudioState> emit) async {
    try {
      if (_isValidYoutubeUrl(event.link)) {
        String accessToken = await userRepository.getCurrentUserAccessToken();
        await checkTokenExpirationAndUpdateIfNeed(
            accessToken: accessToken, userRepository: userRepository);
        await audioRepository.sendLink(
            link: event.link, accessToken: accessToken);
        emit(const AudioState.sended());
        await Future.delayed(const Duration(milliseconds: 1500));
        emit(const AudioState.initial());
      } else {
        emit(const AudioState.notValidLink());
        await Future.delayed(const Duration(seconds: 5));
        emit(const AudioState.initial());
      }
    } catch (e) {
      log(e.toString());
      emit(const AudioState.failed());
    }
  }

  Future<void> _initRecorder() async {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) => _time++);
    recorder = (await FlutterSoundRecorder().openRecorder())!;
  }

  void _closeRecorder() {
    recorder.closeRecorder();
  }

  Future<void> _sendFile(String audioPath) async {
    String accessToken = await userRepository.getCurrentUserAccessToken();
    await checkTokenExpirationAndUpdateIfNeed(
        accessToken: accessToken, userRepository: userRepository);
    await audioRepository.sendFile(
        audioPath: audioPath, accessToken: accessToken);
  }

  bool _isValidYoutubeUrl(String url) {
    final RegExp youtubeRegex = RegExp(
        r'^(?:https?:\/\/)?(?:www\.)?youtube\.com\/(?:watch\?v=|embed\/)([a-zA-Z0-9_-]{11})');
    return youtubeRegex.hasMatch(url);
  }

  Future<void> _requestPermission() async {
    if (!kIsWeb) {
      final granted = await Permission.microphone.isGranted;
      if (!granted) {
        await Permission.microphone.request();
      }
    }
  }
}
