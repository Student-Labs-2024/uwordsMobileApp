import 'package:flutter/material.dart';
import 'package:uwords/features/onboarding/prezentation/widgets/onboarding_bottom_sheet.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';

class SecondOnboardingPage extends StatelessWidget {
  const SecondOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration:
            BoxDecoration(gradient: AppColors.backgroundOnboardingGradient),
        child: SafeArea(
            child: Stack(
          children: [
            Center(
                child: Image.asset(
              AppImageSource.onboarding2,
              width: MediaQuery.of(context).size.width * 0.9,
            )),
            Align(
              alignment: Alignment.bottomCenter,
                child: OnboardingBottomSheet(
                    title: "Темы для изучения",
                    heightMultiplication: 0.3,
                    subtitle:
                        "Cлова для тем формируются на основе вашей речи и формируются в темы"))
          ],
        )));
  }
}
