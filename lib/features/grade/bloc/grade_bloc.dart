import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/auth/data/user_auth_dto.dart';

part 'grade_bloc.freezed.dart';
part 'grade_bloc_state.dart';
part 'grade_bloc_event.dart';

class GradeBloc extends Bloc<GradeEvent, GradeState> {
  final IUserRepository userRepository;

  GradeBloc({required this.userRepository})
      : super(const GradeState.disabled()) {
    on<_OpenEvent>(_handleOpen);
    on<_CloseEvent>(_handleClose);
    on<_SendGradeEvent>(_handleSend);
  }

  Future<void> _handleOpen(_OpenEvent event, Emitter<GradeState> emit) async {
    UserAuthDto currentUserInfo = await userRepository.getCurrentUserInfo();
    if (!currentUserInfo.isFeedbackComplete) {
      var doubleValue = Random().nextDouble() * 100;
      if (doubleValue < 80) return;
      emit(const GradeState.enabled());
    }
  }

  void _handleClose(_CloseEvent event, Emitter<GradeState> emit) {
    emit(const GradeState.disabled());
  }

  Future<void> _handleSend(
      _SendGradeEvent event, Emitter<GradeState> emit) async {
    try {
      String accessToken = await userRepository.getCurrentUserAccessToken();
      await checkTokenExpirationAndUpdateIfNeed(
          accessToken: accessToken, userRepository: userRepository);
      await userRepository.sendGrade(accessToken, event.stars, event.textGrade);
    } on Exception catch (e) {
      await userRepository.updateInfoAboutUser();
      addError(e);
    } finally {
      emit(const GradeState.disabled());
    }
  }
}
