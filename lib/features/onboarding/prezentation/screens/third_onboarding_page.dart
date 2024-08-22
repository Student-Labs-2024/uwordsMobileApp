import 'package:flutter/material.dart';
import 'package:uwords/features/onboarding/prezentation/widgets/alternatives_row.dart';
import 'package:uwords/features/onboarding/prezentation/widgets/onboarding_bottom_sheet.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThirdOnboardingPage extends StatelessWidget {
  const ThirdOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: const BoxDecoration(
            gradient: AppColors.backgroundOnboardingGradient),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height* 0.24),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(bottom: 17.0),
                          child: SizedBox(
                              height: 60,
                              child: AlternativesRow(
                                  svgIconAssest: AppImageSource.youtubeIcon,
                                  text: AppLocalizations.of(context)
                                      .youtubeVideo))),
                      Padding(
                          padding: const EdgeInsets.only(bottom:  17.0),
                          child: SizedBox(
                              height: 60,
                              child: AlternativesRow(
                                  svgIconAssest: AppImageSource.telegramIcon,
                                  text:
                                      AppLocalizations.of(context).telegramBot))),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 17.0),
                          child: SizedBox(
                              height: 60,
                              child: AlternativesRow(
                                  svgIconAssest: AppImageSource.discordIcon,
                                  text:
                                      AppLocalizations.of(context).discordBot))),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 17.0),
                          child: SizedBox(
                              height: 60,
                              child: AlternativesRow(
                                  svgIconAssest: AppImageSource.chromeIcon,
                                  text: AppLocalizations.of(context)
                                      .chromeWidget))),
                    ],
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: OnboardingBottomSheet(
                    title: AppLocalizations.of(context).alternative,
                    subtitle: AppLocalizations.of(context).alternativeText,
                    heightMultiplication: 0.28))
          ],
        ));
  }
}
