import 'package:drift/drift.dart';
import 'package:uwords/features/auth/data/user_auth_dto.dart';
import 'package:uwords/features/auth/domain/user_auth_model.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';
import 'package:uwords/features/global/domain/metrics.dart';

extension UserAuthMapper on UserAuthDto {
  UserAuthModel toModel() => UserAuthModel(
        id: id,
        email: email,
        username: username,
        firstname: firstname,
        lastname: lastname,
        avatarUrl: avatarUrl,
        phoneNumber: phoneNumber,
        birthDate: birthDate,
        allowedAudioSeconds: allowedAudioSeconds,
        allowedVideoSeconds: allowedVideoSeconds,
        energy: energy,
        metrics: metricsDto.toModel(),
        accessToken: accessToken,
        refreshToken: refreshToken,
        isEducationCompleted: isEducationCompleted,
        provider: provider,
        isFeedbackComplete: isFeedbackComplete,
      );
  UserAuthCompanion toDB() => UserAuthCompanion(
        id: Value(id),
        email: Value(email),
        username: Value(username),
        firstname: Value(firstname),
        lastname: Value(lastname),
        avatarUrl: Value(avatarUrl),
        phoneNumber: Value(phoneNumber),
        birthDate: Value(birthDate),
        subscriptionType: Value(subscriptionType),
        subscriptionAcquisition: Value(subscriptionAcquisition),
        subscriptionExpired: Value(subscriptionExpired),
        allowedAudioSeconds: Value(allowedAudioSeconds),
        allowedVideoSeconds: Value(allowedVideoSeconds),
        energy: Value(energy),
        accessToken: Value(accessToken),
        refreshToken: Value(refreshToken),
        isEducationCompleted: Value(isEducationCompleted),
        provider: Value(provider),
        isCurrent: const Value(true),
        isFeedbackComplete: Value(isFeedbackComplete),
      );
}
