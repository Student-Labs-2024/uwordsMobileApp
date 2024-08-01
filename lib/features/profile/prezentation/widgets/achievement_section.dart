import 'package:flutter/material.dart';
import 'package:uwords/features/profile/data/constants/achievements_constants.dart';
import 'package:uwords/features/profile/data/constants/profile_paddings.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/widgets/achievement_card.dart';
import 'package:uwords/theme/app_text_styles.dart';

class AchievementSection extends StatelessWidget {
  const AchievementSection(
      {super.key, required this.type, required this.count});
  final String type;
  final int count;

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
            getTitle(type, context),
            style: AppTextStyles.profileSubtitle,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height *
                  ProfileSizes.achievementCardHeight +
              2 * ProfilePaddings.subtitleHorizontal,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
                vertical: ProfilePaddings.subtitleHorizontal),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                  left: index == 0
                      ? MediaQuery.of(context).size.width *
                          ProfilePaddings.headerHorizontal
                      : 0,
                  right: ProfilePaddings.achievementCardRight),
              child: AchievementCard(
                type: type,
                count: count,
                needCount: getNeedCount(type, index),
              ),
            ),
            itemCount: AchievementsConstants.stagesCount,
          ),
        ),
      ],
    );
  }
}
