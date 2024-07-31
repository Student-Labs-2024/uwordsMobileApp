import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:uwords/features/global/widgets/custom_image_network_view.dart';
import 'package:uwords/features/global/widgets/custom_progress_bar.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';
import 'package:uwords/features/profile/data/constants/achievements_constants.dart';
import 'package:uwords/features/profile/data/constants/profile_paddings.dart';
import 'package:uwords/features/profile/data/constants/profile_shadows.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/widgets/achievement_card.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AchievementSection extends StatelessWidget {
  const AchievementSection(
      {super.key, required this.type, required this.count});
  final String type;
  final int count;

  int getNeedCount(int index) {
    if (type == 'onfire') {
      return AchievementsConstants.onfireCounts[index];
    } else if (type == 'wordsLearned') {
      return AchievementsConstants.wordsLearnedCounts[index];
    } else if (type == 'recordTime') {
      return AchievementsConstants.recordTimeCounts[index];
    } else if (type == 'addedFriends') {
      return AchievementsConstants.addedFriendsCounts[index];
    }
    return AchievementsConstants.errorCounts[index];
  }

  String getTitle(BuildContext context) {
    if (type == 'onfire') {
      return AppLocalizations.of(context).daysOnFireTitle;
    } else if (type == 'wordsLearned') {
      return AppLocalizations.of(context).learnedWordsTitle;
    } else if (type == 'recordTime') {
      return AppLocalizations.of(context).recordTimeTitle;
    } else if (type == 'addedFriends') {
      return AppLocalizations.of(context).addedFriendsTitle;
    }
    return AppLocalizations.of(context).unknowError;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width *
                  ProfilePaddings.headerHorizontal),
          child: Text(
            getTitle(context),
            style: AppTextStyles.profileSubtitle,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height *
                  ProfileSizes.achievementCardHeight +
              2 * ProfilePaddings.subtitleHorizontal,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(
                vertical: ProfilePaddings.subtitleHorizontal),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                  left: index == 0
                      ? MediaQuery.of(context).size.width *
                          ProfilePaddings.headerHorizontal
                      : 0,
                  right: 10),
              child: AchievementCard(
                type: type,
                count: count,
                needCount: getNeedCount(index),
              ),
            ),
            itemCount: 3,
          ),
        ),
      ],
    );
  }
}
