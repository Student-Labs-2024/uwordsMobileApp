import 'package:flutter/material.dart';
import 'package:uwords/features/onboarding/prezentation/widgets/onboarding_bottom_sheet.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FirstOnboardingPage extends StatelessWidget {
  const FirstOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: const BoxDecoration(
            gradient: AppColors.backgroundOnboardingGradient),
        child: Stack(
          children: [
            Center(
                child: Image.asset(
              AppImageSource.onboarding1,
              width: MediaQuery.of(context).size.width * 0.7,
            )),
            Align(
                alignment: Alignment.bottomCenter,
                child: OnboardingBottomSheet(
                  title: AppLocalizations.of(context).recordingWords,
                  heightMultiplication: 0.4,
                  subtitle: AppLocalizations.of(context).recordingWordsText,
                  otherText:
                      AppLocalizations.of(context).recordingWordsOtherText,
                  linkText: AppLocalizations.of(context).moreDetails,
                ))
          ],
        ));
  }
}
