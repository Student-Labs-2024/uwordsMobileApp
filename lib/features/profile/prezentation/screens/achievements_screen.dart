import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/global/data/models/pair_model.dart';
import 'package:uwords/features/global/widgets/custom_image_network_view.dart';
import 'package:uwords/features/profile/data/constants/profile_paddings.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/widgets/achievement_card.dart';
import 'package:uwords/features/profile/prezentation/widgets/achievement_section.dart';
import 'package:uwords/features/profile/prezentation/widgets/options_button.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen({super.key});

  @override
  State<AchievementsScreen> createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {
  @override
  void initState() {
    super.initState();
  }

  final List<Pair<String, int>> exampleAchievements = [
    Pair('onfire', 11),
    Pair('wordsLearned', 16),
    Pair('recordTime', 16),
    Pair('addedFriends', 16)
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: ProfilePaddings.subtitleHorizontal,
      ),
      ...exampleAchievements
          .map((e) => AchievementSection(type: e.first, count: e.second))
          .toList(),
      const SizedBox(
        height: ProfileSizes.endSpacer,
      ),
    ]);
  }
}
