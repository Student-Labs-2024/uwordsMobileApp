import 'dart:async';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/main/data/repositories/interface_audio_repository.dart';

part 'record_bloc.freezed.dart';
part 'record_state.dart';
part 'record_event.dart';

class RecordBloc extends Bloc<RecordEvent, RecordState> {
  final IAudioRepository audioRepository;
  final IUserRepository userRepository;

  RecordBloc({required this.audioRepository, required this.userRepository})
      : super(const RecordState.initial()) {
    on<_SendError>(_handleSendError);
    on<_SendPath>(_handleSendPath);
  }

  Future<void> _handleSendError(
      _SendError event, Emitter<RecordState> emit) async {
    if (state is! _RecordFailed) {
      emit(RecordState.failed(event.message));
      await Future.delayed(const Duration(seconds: 4));
      emit(const RecordState.initial());
    }
  }

  Future<void> _handleSendPath(
      _SendPath event, Emitter<RecordState> emit) async {
    String audioPath = event.path;
    if (audioPath.isNotEmpty) {
      try {
        await _sendFile(audioPath);
        emit(const RecordState.sended());
        emit(const RecordState.initial());
      } on DioException catch (e) {
        log(e.toString());
        emit(const RecordState.failed('unknownDioError'));
        emit(const RecordState.initial());
      }
    } else {
      emit(const RecordState.failed('lostFilePath'));
      emit(const RecordState.initial());
    }
  }

  Future<void> _sendFile(String audioPath) async {
    String accessToken = await userRepository.getCurrentUserAccessToken();
    log(accessToken);
    await checkTokenExpirationAndUpdateIfNeed(
        accessToken: accessToken, userRepository: userRepository);
    await audioRepository.sendFile(
        audioPath: audioPath, accessToken: accessToken);
  }
}
