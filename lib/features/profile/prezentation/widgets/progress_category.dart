import 'package:flutter/material.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/profile/data/constants/profile_paddings.dart';
import 'package:uwords/features/profile/prezentation/widgets/progress_word_tile.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';

class ProgressCategory extends StatelessWidget {
  const ProgressCategory(
      {super.key, required this.title, required this.subtopics});
  final String title;
  final List<Subtopic> subtopics;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: ProfilePaddings.subtitleHorizontal,
              bottom: ProfilePaddings.subtitleBot),
          child: Text(
            title,
            style: AppTextStyles.profileSubtitle,
          ),
        ),
        Container(
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius:
                  BorderRadius.circular(GlobalSizes.borderRadiusMedium),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: ProfilePaddings.progressWordTileWrapper,
                  left: ProfilePaddings.progressWordTileWrapper,
                  right: ProfilePaddings.progressWordTileWrapper,
                  bottom: ProfilePaddings.progressWordTileWrapperBottom),
              child: Column(
                children: subtopics
                    .map(
                      (e) => ProgressWordTile(subtopic: e),
                    )
                    .toList(),
              ),
            )),
      ],
    );
  }
}
