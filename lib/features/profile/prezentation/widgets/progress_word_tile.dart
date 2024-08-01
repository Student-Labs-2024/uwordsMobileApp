import 'package:flutter/material.dart';
import 'package:uwords/features/global/widgets/custom_image_network_view.dart';
import 'package:uwords/features/global/widgets/custom_progress_bar.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProgressWordTile extends StatelessWidget {
  const ProgressWordTile({super.key, required this.wordInfo});
  final WordInfo wordInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageNetworkView(
              imageSource: wordInfo.word.pictureLink,
              width: MediaQuery.of(context).size.width *
                  ProfileSizes.progressWordTileImageWidth,
              height: MediaQuery.of(context).size.height *
                  ProfileSizes.progressWordTileImageHeight,
              clipRadius: 10),
          const SizedBox(
            width: ProfileSizes.progressWordTile,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *
                ProfileSizes.progressWordTileImageHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  wordInfo.word.ruValue,
                  style: AppTextStyles.progressWordTileTitle,
                ),
                CustomProgressBar(
                  width: MediaQuery.of(context).size.width *
                      ProfileSizes.progressWordTileIndicatorWidth,
                  percent: wordInfo.progress,
                )
              ],
            ),
          ),
          const SizedBox(
            width: ProfileSizes.progressWordTile,
          ),
          Row(
            children: [
              Text(
                AppLocalizations.of(context).passed,
                style: AppTextStyles.progressWordTileProgress,
              ),
              Text(
                ' ${wordInfo.progress}%',
                style: AppTextStyles.progressWordTileProgressBold,
              ),
            ],
          )
        ],
      ),
    );
  }
}
