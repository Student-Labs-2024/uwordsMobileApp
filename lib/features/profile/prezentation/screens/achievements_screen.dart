import 'package:flutter/material.dart';
import 'package:uwords/features/global/data/models/pair_model.dart';
import 'package:uwords/features/global/domain/achievement.dart';
import 'package:uwords/features/profile/data/constants/achievements_constants.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/widgets/achievement_section.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key, required this.achievements});

  final List<AchievementInfoModel> achievements;

  List<Pair<String, List<AchievementInfoModel>>> getAchievementsInfoCategories(
      BuildContext context) {
    List<Pair<String, List<AchievementInfoModel>>> result = [];
    List<List<AchievementInfoModel>> preresult = [];
    preresult.add(achievements
        .where((x) =>
            x.achievementModel.category ==
            AchievementsConstants.wordsLearnedAchievement)
        .toList());
    preresult.add(achievements
        .where((x) =>
            x.achievementModel.category ==
            AchievementsConstants.addedWordsAchievement)
        .toList());
    preresult.add(achievements
        .where((x) =>
            x.achievementModel.category ==
            AchievementsConstants.speechSecondsAchievement)
        .toList());
    preresult.add(achievements
        .where((x) =>
            x.achievementModel.category ==
            AchievementsConstants.videoSecondsAchievement)
        .toList());
    for (List<AchievementInfoModel> e in preresult) {
      if (e.isNotEmpty) {
        result.add(Pair(getTitle(e[0].achievementModel.category, context), e));
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...getAchievementsInfoCategories(context).map(
        (el) =>
            AchievementSection(title: el.first, achievementsInfo: el.second),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * ProfileSizes.endSpacer,
      ),
    ]);
  }
}
