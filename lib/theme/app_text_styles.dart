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
}
