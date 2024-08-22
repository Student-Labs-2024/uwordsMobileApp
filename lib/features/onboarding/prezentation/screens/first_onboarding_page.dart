import 'package:flutter/material.dart';
import 'package:uwords/features/onboarding/prezentation/widgets/onboarding_bottom_sheet.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';

class FirstOnboardingPage extends StatelessWidget {
  const FirstOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration:
            BoxDecoration(gradient: AppColors.backgroundOnboardingGradient),
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
                  title: "Запись слов",
                  heightMultiplication: 0.4,
                  subtitle:
                      "Записывайте свои повседневные разговоры, а мы оставим только Ваши любимые слова",
                  otherText:
                      "Алгоритмы uwords не хранят записи, а используют речь только для определения самых частотных слов",
                  linkText: "Подробнее",
                ))
          ],
        ));
  }
}
