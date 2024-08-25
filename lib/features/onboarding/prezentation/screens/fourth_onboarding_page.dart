import 'package:flutter/material.dart';
import 'package:uwords/features/onboarding/domain/onboarding_consts.dart';
import 'package:uwords/features/onboarding/prezentation/widgets/onboarding_bottom_sheet.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FourthOnboardingPage extends StatelessWidget {
  const FourthOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO change UI for Future Design
    return SafeArea(
        child: DecoratedBox(
      decoration:
          const BoxDecoration(gradient: AppColors.backgroundOnboardingGradient),
      child: Stack(
        children: [
          Center(
            child: Text(AppLocalizations.of(context).startQuestion),
          ),
          OnboardingBottomSheet(
              title: AppLocalizations.of(context).startQuestion,
              subtitle: AppLocalizations.of(context).startQuestionText,
              heightMultiplication: OnboardingConsts.onboardingMulti4)
        ],
      ),
    ));
  }
}
