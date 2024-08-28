import 'package:flutter/material.dart';
import 'package:uwords/features/global/domain/achievement_category.dart';
import 'package:uwords/features/profile/prezentation/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/widgets/achievement_section.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key, required this.achievements});

  final List<AchievementCategoryModel> achievements;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...achievements.map((achievement) => AchievementSection(
          title: achievement.title,
          achievementsInfo: achievement.achievementsInfoDtoList)),
      SizedBox(
        height: MediaQuery.of(context).size.height * ProfileSizes.endSpacer,
      ),
    ]);
  }
}
