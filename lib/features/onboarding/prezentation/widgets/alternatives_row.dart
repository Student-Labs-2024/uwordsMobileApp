import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uwords/features/onboarding/domain/onboarding_consts.dart';
import 'package:uwords/features/profile/data/constants/profile_shadows.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class AlternativesRow extends StatelessWidget {
  const AlternativesRow(
      {super.key, required this.svgIconAssest, required this.text});
  final String svgIconAssest;
  final String text;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(OnboardingConsts.aroundSpace),
        boxShadow: ProfileShadows.statisticCard,
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: OnboardingConsts.aroundSpace,
          right: OnboardingConsts.aroundSpace + OnboardingConsts.iconSize,
        ),
        child: Row(
          children: [
            SizedBox(
              width: OnboardingConsts.iconSize,
              height: OnboardingConsts.iconSize,
              child: ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return AppColors.violetGradient.createShader(bounds);
                },
                child: SvgPicture.asset(
                  svgIconAssest,
                ),
              ),
            ),
            const Spacer(),
            Text(
              text,
              style: LearnTextStyles.alternativesTile,
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
