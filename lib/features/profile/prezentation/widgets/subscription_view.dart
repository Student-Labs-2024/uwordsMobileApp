import 'package:flutter/material.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/profile/data/constants/profile_paddings.dart';
import 'package:uwords/features/profile/data/constants/profile_shadows.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;

class SubscriptionView extends StatelessWidget {
  const SubscriptionView(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.subtitle,
      required this.image});
  final VoidCallback onPressed;
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: fis.BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(GlobalSizes.borderRadiusMedium),
          boxShadow: ProfileShadows.statisticCard),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(GlobalSizes.borderRadiusMedium),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: ProfilePaddings.cardHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: MediaQuery.of(context).size.width *
                    ProfileSizes.statisticCardIconWidth,
              ),
              const SizedBox(
                width: ProfileSizes.statisticSpacer,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.subscriptionViewTitle,
                    ),
                    Text(
                      subtitle,
                      softWrap: true,
                      style: AppTextStyles.subscriptionViewSubtitle,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
