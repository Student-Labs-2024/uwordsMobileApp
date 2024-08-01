import 'package:flutter/material.dart';
import 'package:uwords/features/global/widgets/custom_progress_bar.dart';
import 'package:uwords/features/profile/data/constants/profile_shadows.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/image_source.dart';

class AchievementCard extends StatelessWidget {
  const AchievementCard(
      {super.key,
      required this.type,
      required this.count,
      required this.needCount});
  final String type;
  final int needCount;
  final int count;

  String getImageSource() {
    if (count > needCount) {
      return AppImageSource.achieveActiveIcon;
    }
    return AppImageSource.achieveInactiveIcon;
  }

  int getProgress() {
    if (count > needCount) {
      return 100;
    }
    return (count / needCount * 100).toInt();
  }

  String getText(BuildContext context) {
    if (type == 'onfire') {
      return AppLocalizations.of(context).daysOnFire(needCount);
    } else if (type == 'wordsLearned') {
      return AppLocalizations.of(context).learnedWords(needCount);
    } else if (type == 'recordTime') {
      return AppLocalizations.of(context).recordTime(needCount);
    } else if (type == 'addedFriends') {
      return AppLocalizations.of(context).addedFriends(needCount);
    }
    return AppLocalizations.of(context).unknowError;
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
            percent: getProgress(),
          ),
          const SizedBox(
            height: ProfileSizes.sachievementCardSpacer,
          ),
          Text(
            getText(context),
            style: AppTextStyles.achievementCard,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
