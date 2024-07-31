import 'package:flutter/material.dart';
import 'package:uwords/features/profile/data/constants/profile_shadows.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;

class StatisticCard extends StatelessWidget {
  const StatisticCard(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: fis.BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: ProfileShadows.statisticCard),
      width:
          MediaQuery.of(context).size.width * ProfileSizes.statisticCardWidth,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(Size(
              MediaQuery.of(context).size.width *
                  ProfileSizes.statisticCardWidth,
              MediaQuery.of(context).size.height *
                  ProfileSizes.statisticCardHeight)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppTextStyles.statisticCardTitle,
                ),
                Text(
                  subtitle,
                  style: AppTextStyles.statisticCardSubtitle,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
