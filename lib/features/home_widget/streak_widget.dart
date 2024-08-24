import 'package:flutter/material.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:uwords/features/home_widget/streak_widget_data.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class StreakWidget extends StatelessWidget {
  const StreakWidget({super.key, required this.streakWidgetData});
  final StreakWidgetData streakWidgetData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 160,
      child: DecoratedBox(
        decoration: fis.BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 14.0, right: 14.0, top: 15.0, bottom: 36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AppImageSource.onfireIcon,
                    height: ProfileSizes.optionsButtonSize,
                  ),
                  Text(
                    textScaler: streakWidgetData.days <100 ? TextScaler.noScaling : streakWidgetData.days <1000 ? const TextScaler.linear(0.9) : const TextScaler.linear(0.6),
                    overflow: TextOverflow.ellipsis,
                    streakWidgetData.title,
                    style: AppTextStyles.statisticCardTitle,
                  )
                ],
              ),
              Text(
                streakWidgetData.description,
                textAlign: TextAlign.center,
                style: AppTextStyles.profileSubtitle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
