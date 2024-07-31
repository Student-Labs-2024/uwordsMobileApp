import 'package:flutter/material.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/theme/app_colors.dart';

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar(
      {super.key, required this.width, required this.percent});
  final double width;
  final int percent;

  LinearGradient backColor() {
    if (percent > 50) {
      return LinearGradient(colors: [
        AppColors.goodProgressbarColor1.withOpacity(0.15),
        AppColors.goodProgressbarColor2.withOpacity(0.15)
      ]);
    } else {
      return LinearGradient(colors: [
        AppColors.badProgressbarColor1.withOpacity(0.15),
        AppColors.badProgressbarColor2.withOpacity(0.15)
      ]);
    }
  }

  LinearGradient progressColor() {
    if (percent > 50) {
      return const LinearGradient(colors: [
        AppColors.goodProgressbarColor1,
        AppColors.goodProgressbarColor2
      ]);
    } else {
      return const LinearGradient(colors: [
        AppColors.badProgressbarColor1,
        AppColors.badProgressbarColor2
      ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: GlobalSizes.progressIndicatorHeight,
          decoration: BoxDecoration(
            gradient: backColor(),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          width: width * (percent / 100),
          height: GlobalSizes.progressIndicatorHeight,
          decoration: BoxDecoration(
            gradient: progressColor(),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
