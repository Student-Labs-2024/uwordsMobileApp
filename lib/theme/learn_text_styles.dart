import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';

class LearnTextStyles {
  static const wordTileTitle = TextStyle(
    fontSize: 14,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w500,
  );
  static const wordTileSubtitle = TextStyle(
      fontSize: 12, color: AppColors.grayColor, fontWeight: FontWeight.w400);
  static const startTraining = TextStyle(
    fontSize: 18,
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w700,
  );
  static const wordScreenTitle = TextStyle(
    fontSize: 25,
    color: AppColors.darkMainColor,
    fontWeight: FontWeight.w700,
  );
  static const wordScreenSubtitle = TextStyle(
    fontSize: 20,
    color: AppColors.darkMainColor,
    fontWeight: FontWeight.w500,
  );
  static const wordScreenDescription = TextStyle(
    fontSize: 22,
    color: AppColors.darkMainColor,
    fontWeight: FontWeight.w600,
  );
  static const wordScreenTextInput = TextStyle(
    fontSize: 21,
    color: AppColors.darkMainColor,
    fontWeight: FontWeight.w600,
  );
  static const successfulWordScreenTitle = TextStyle(
    fontSize: 50,
    color: AppColors.greenColor,
    fontWeight: FontWeight.w700,
  );
  static const bubbleButton = TextStyle(
    fontSize: 18,
    color: AppColors.darkMainColor,
    fontWeight: FontWeight.w600,
  );
  static const buttomSheetTitle = TextStyle(
    fontSize: 20,
    color: AppColors.darkMainColor,
    fontWeight: FontWeight.w600,
  );
  static const buttomSheetSubtitle = TextStyle(
    fontSize: 18,
    color: AppColors.darkMainColor,
    fontWeight: FontWeight.w500,
  );
  static const onboardingText = TextStyle(
      fontSize: 17,
      color: AppColors.darkMainColor,
      fontWeight: FontWeight.w500, fontFamily: 'Inter-V',);
  static const alternativesTile = TextStyle(
      fontSize: 17,
      color: AppColors.blackColor,
      fontWeight: FontWeight.w500, fontFamily: 'Inter-V',);
  static const otherText = TextStyle(fontSize: 12, color: AppColors.imperialOpacity45, fontWeight: FontWeight.w500, fontFamily: 'Inter-V',);
  static const linkText = TextStyle(fontSize: 12, color: AppColors.imperialOpacity45, fontWeight: FontWeight.w500, decoration: TextDecoration.underline, fontFamily: 'Inter-V',);
}
