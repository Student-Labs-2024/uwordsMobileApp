import 'package:flutter/material.dart';
import 'package:uwords/features/global/domain/achievement.dart';
import 'package:uwords/features/global/widgets/custom_progress_bar.dart';
import 'package:uwords/features/profile/data/constants/profile_shadows.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:uwords/theme/image_source.dart';

class AchievementCard extends StatelessWidget {
  const AchievementCard({super.key, required this.achievement});
  final AchievementInfoModel achievement;

  String getImageSource() {
    if (achievement.progress > achievement.achievementModel.target) {
      return AppImageSource.achieveActiveIcon;
    }
    return AppImageSource.achieveInactiveIcon;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: fis.BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: ProfileShadows.statisticCard),
      width:
          MediaQuery.of(context).size.width * ProfileSizes.achievementCardWidth,
      height: MediaQuery.of(context).size.height *
          ProfileSizes.achievementCardHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            getImageSource(),
            width: MediaQuery.of(context).size.width *
                ProfileSizes.sachievementCardIconWidth,
            height: MediaQuery.of(context).size.width *
                ProfileSizes.sachievementCardIconWidth,
          ),
          const SizedBox(
            height: ProfileSizes.sachievementCardSpacer,
          ),
          CustomProgressBar(
            width: MediaQuery.of(context).size.width *
                ProfileSizes.progressWordTileIndicatorWidth,
            percent: achievement.progressPercent.toInt(),
          ),
          const SizedBox(
            height: ProfileSizes.sachievementCardSpacer,
          ),
          Text(
            achievement.achievementModel.description,
            style: AppTextStyles.achievementCard,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
