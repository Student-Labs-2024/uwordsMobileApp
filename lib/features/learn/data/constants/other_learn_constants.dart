import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';

class OtherLearnConstants {
  static const Duration smallDuration = Duration(milliseconds: 500);
  static const int checkMoreInt = 4;
  static const int zeroProgress = 0;
  static const int halfProgress = 50;

  static const String stateSuccess = 'success';
  static const String stateZero = 'zero';
  static const String stateWrong = 'wrong';
  static const String stateActive = 'active';

  static const String stateCantHear = 'cantHear';
  static const String stateCantTell = 'cantTell';

  static LinearGradient getGradient(String state) {
    switch (state) {
      case stateWrong:
        return AppColors.redStandartGradient;
      case stateSuccess:
        return AppColors.greenStandartGradient;
      default:
        return AppColors.purpleStandartGradient;
    }
  }

  static LinearGradient getBubbleButtonGradient(String state) {
    switch (state) {
      case stateWrong:
        return AppColors.wrongBubbleButtonGradient;
      default:
        return AppColors.unactiveBubbleButtonGradient;
    }
  }
}
