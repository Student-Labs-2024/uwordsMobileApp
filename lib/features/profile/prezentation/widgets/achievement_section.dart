import 'package:flutter/material.dart';
import 'package:uwords/features/global/domain/achievement.dart';
import 'package:uwords/features/profile/data/constants/profile_paddings.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/widgets/achievement_card.dart';
import 'package:uwords/theme/app_text_styles.dart';

class AchievementSection extends StatelessWidget {
  const AchievementSection(
      {super.key, required this.title, required this.achievementsInfo});
  final List<AchievementInfoModel> achievementsInfo;
  final String title;

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
            title,
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
                achievement: achievementsInfo[index],
              ),
            ),
            itemCount: achievementsInfo.length,
          ),
        ),
      ],
    );
  }
}
