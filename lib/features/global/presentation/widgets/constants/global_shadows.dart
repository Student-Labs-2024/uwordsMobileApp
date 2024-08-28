import 'package:flutter/material.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:uwords/theme/app_colors.dart';

class GlobalShadows {
  static var basicShadow = const [
    fis.BoxShadow(
      color: AppColors.shadowColor1,
      blurRadius: 16.0,
      spreadRadius: 0,
      offset: Offset(4, 4),
      inset: false,
    ),
    fis.BoxShadow(
      color: AppColors.shadowColor2,
      blurRadius: 16.0,
      spreadRadius: 0,
      offset: Offset(2, 2),
      inset: false,
    ),
  ];
}
