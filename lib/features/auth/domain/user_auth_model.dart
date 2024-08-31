import 'package:uwords/features/global/domain/metrics.dart';

class UserAuthModel {
  final int id;
  final String email;
  final String username;
  final String firstname;
  final String lastname;
  final String avatarUrl;
  final String phoneNumber;
  final Metrics metrics;
  final int allowedAudioSeconds;
  final int allowedVideoSeconds;
  final int energy;
  final DateTime birthDate;
  final String accessToken;
  final String refreshToken;
  final bool isEducationCompleted;
  final String provider;
  final bool isFeedbackComplete;

  UserAuthModel(
      {required this.id,
      required this.email,
      required this.username,
      required this.firstname,
      required this.lastname,
      required this.avatarUrl,
      required this.phoneNumber,
      required this.birthDate,
      required this.metrics,
      required this.allowedAudioSeconds,
      required this.allowedVideoSeconds,
      required this.energy,
      required this.accessToken,
      required this.refreshToken,
      required this.isEducationCompleted,
      required this.provider,
      required this.isFeedbackComplete});
}
