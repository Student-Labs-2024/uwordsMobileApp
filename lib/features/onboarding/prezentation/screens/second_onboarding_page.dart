import 'package:flutter/material.dart';
import 'package:uwords/features/onboarding/domain/onboarding_consts.dart';
import 'package:uwords/features/onboarding/prezentation/widgets/onboarding_bottom_sheet.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SecondOnboardingPage extends StatelessWidget {
  const SecondOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: const BoxDecoration(
            gradient: AppColors.backgroundOnboardingGradient),
        child: SafeArea(
            child: Stack(
          children: [
            Center(
                child: Image.asset(
              AppImageSource.onboarding2,
              width: MediaQuery.of(context).size.width *
                  OnboardingConsts.onboardingMulti2,
            )),
            Align(
                alignment: Alignment.bottomCenter,
                child: OnboardingBottomSheet(
                    title: AppLocalizations.of(context).themesForLearning,
                    heightMultiplication:
                        OnboardingConsts.onboardingBottomMulti2,
                    subtitle:
                        AppLocalizations.of(context).themesForLearningText))
          ],
        )));
  }
}
