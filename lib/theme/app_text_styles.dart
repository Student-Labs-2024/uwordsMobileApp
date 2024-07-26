import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';

class AppTextStyles {
  static const recordButtonTitle = TextStyle(
    fontFamily: 'SNFBSTRD_handwrite',
    fontWeight: FontWeight.w400,
    fontSize: 30,
    color: AppColors.whiteColor,
  );
  static const recordButtonSubTitle = TextStyle(
    fontFamily: 'SNFBSTRD_handwrite',
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: AppColors.whiteColor,
  );
  static const customTextfieldInput = TextStyle(color: Colors.grey);
  static const customTextfieldExeption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.errorColor,
  );
  static const customTextFieldForAuth =
      TextStyle(color: Colors.brown, fontSize: 20, fontWeight: FontWeight.bold);

  static const authHeaderText = TextStyle(
      fontFamily: 'Inter-V',
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: AppColors.darkMainColor);
  static const authButtonText = TextStyle(
      fontFamily: 'Inter-V',
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: AppColors.darkMainColor);
  static const authSmallText = TextStyle(
      fontFamily: 'Inter-V',
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppColors.darkMainColor);
  static const authLinkText = TextStyle(
      fontFamily: 'Inter-V',
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppColors.darkMainColor,
      decoration: TextDecoration.underline,
      decorationColor: AppColors.mainColorOpacity);
  static const authSmallestText = TextStyle(
      fontFamily: 'Inter-V',
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: AppColors.darkMainColor);
  static const authSmallestLinkText = TextStyle(
      fontFamily: 'Inter-V',
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: AppColors.darkMainColor,
      decoration: TextDecoration.underline,
      decorationColor: AppColors.mainColorOpacity);
  static const authSmallestLinkTextOpacity = TextStyle(
      fontFamily: 'Inter-V',
      fontWeight: FontWeight.w600,
      fontSize: 12,
      color: AppColors.mainColorOpacity,
      decoration: TextDecoration.underline,
      decorationColor: AppColors.mainColorOpacity,
      letterSpacing: 0.1);
  static const authSmallestTextOpacity = TextStyle(
    fontFamily: 'Inter-V',
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: AppColors.mainColorOpacity,
    letterSpacing: 0.1,
  );
  static const authSendedCodeText = TextStyle(
    fontFamily: 'Inter-V',
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: AppColors.darkMainColor,
  );
}
