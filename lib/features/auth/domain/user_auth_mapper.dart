import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/auth/domain/user_auth_model.dart';

extension ProductMapper on UserAuthDto {
  UserModel toModel() => UserModel(
        email: email,
        accessToken: accessToken,
        refreshToken: refreshToken,
        isEducationCompleted: isEducationCompleted,
      );
}
