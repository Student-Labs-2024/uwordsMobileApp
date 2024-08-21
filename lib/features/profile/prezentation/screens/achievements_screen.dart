import 'package:flutter/material.dart';
import 'package:uwords/features/profile/data/constants/profile_data_example.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/widgets/achievement_section.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen({super.key});

  @override
  State<AchievementsScreen> createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...ProfileDataExample.exampleAchievements
          .map((e) => AchievementSection(type: e.first, count: e.second)),
      SizedBox(
        height: MediaQuery.of(context).size.height * ProfileSizes.endSpacer,
      ),
    ]);
  }
}
