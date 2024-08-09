import 'package:flutter/material.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/theme/app_colors.dart';

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar(
      {super.key, required this.width, required this.percent, this.height, this.greenOnly});
  final double width;
  final double? height;
  final int percent;
  final bool? greenOnly;

  LinearGradient backColor() {
    if (percent > 50) {
      return AppColors.progressBarGreenGradientBack;
    } else {
      return AppColors.progressBarRedGradientBack;
    }
  }

  LinearGradient progressColor() {
    if (percent > 50) {
      return AppColors.progressBarGreenGradient;
    } else {
      return AppColors.progressBarRedGradient;
    }
  }

  double getVisiblePercent() {
    if (percent < 0) {
      return 0;
    } else if (percent > 100) {
      return 1;
    } else {
      return percent / 100;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height ?? GlobalSizes.progressIndicatorHeight,
          decoration: BoxDecoration(
            gradient: greenOnly != null
                ? (greenOnly!
                    ? AppColors.progressBarGreenGradient
                    : backColor())
                : backColor(),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          height: height ?? GlobalSizes.progressIndicatorHeight,
          width: width * getVisiblePercent(),
          decoration: BoxDecoration(
            gradient: greenOnly != null
                ? (greenOnly!
                    ? AppColors.progressBarGreenGradientBack
                    : backColor())
                : backColor(),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
