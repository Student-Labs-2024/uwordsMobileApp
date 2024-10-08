import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';

part 'grade_bloc.freezed.dart';
part 'grade_bloc_state.dart';
part 'grade_bloc_event.dart';

class GradeBloc extends Bloc<GradeEvent, GradeState> {
  final IUserRepository userRepository;

  GradeBloc({required this.userRepository})
      : super(const GradeState.disabled()) {
    on<_Open>(_handleOpen);
    on<_Close>(_handleClose);
    on<_SendGrade>(_handleSend);
  }

  void _handleOpen(_Open event, Emitter<GradeState> emit) {
    emit(const GradeState.enabled());
  }

  void _handleClose(_Close event, Emitter<GradeState> emit) {
    emit(const GradeState.disabled());
  }

  Future<void> _handleSend(_SendGrade event, Emitter<GradeState> emit) async {
    String accessToken = await userRepository.getCurrentUserAccessToken();
    await checkTokenExpirationAndUpdateIfNeed(
        accessToken: accessToken, userRepository: userRepository);
    await userRepository.sendGrade(accessToken, event.stars, event.textGrade);
    emit(const GradeState.disabled());
  }
}
