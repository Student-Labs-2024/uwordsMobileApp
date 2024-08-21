import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/global/widgets/custom_image_network_view.dart';
import 'package:uwords/features/global/widgets/custom_progress_bar.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/profile/data/constants/profile_paddings.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProgressWordTile extends StatelessWidget {
  const ProgressWordTile({super.key, required this.subtopic});
  final Subtopic subtopic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: ProfilePaddings.progressWordTileBottom),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) {
              return AppColors.blueIconGradient.createShader(bounds);
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius:
                    BorderRadius.circular(GlobalSizes.borderRadiusSmall),
              ),
              child: SvgPicture.network(
                fit: BoxFit.cover,
                subtopic.pictureLink,
                width: MediaQuery.of(context).size.width *
                    ProfileSizes.progressWordTileImageWidth,
                height: MediaQuery.of(context).size.height *
                    ProfileSizes.progressWordTileImageHeight,
              ),
            ),
          ),
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
                  subtopic.subtopicTitle,
                  style: AppTextStyles.progressWordTileTitle,
                ),
                CustomProgressBar(
                  width: MediaQuery.of(context).size.width *
                      ProfileSizes.progressWordTileIndicatorWidth,
                  percent: subtopic.progress,
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
                ' ${subtopic.progress}%',
                style: AppTextStyles.progressWordTileProgressBold,
              ),
            ],
          )
        ],
      ),
    );
  }
}
