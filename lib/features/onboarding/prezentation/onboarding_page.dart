import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uwords/features/onboarding/domain/onboarding_consts.dart';
import 'package:uwords/features/onboarding/prezentation/screens/first_onboarding_page.dart';
import 'package:uwords/features/onboarding/prezentation/screens/second_onboarding_page.dart';
import 'package:uwords/features/onboarding/prezentation/screens/third_onboarding_page.dart';
import 'package:uwords/theme/app_colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageController = PageController();
  bool isNotLastPage = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            isNotLastPage = index < 3;
            if (index <= 3) {
              setState(() {});
            }
          },
          children: [
            const FirstOnboardingPage(),
            const SecondOnboardingPage(),
            ThirdOnboardingPage(),
            const Center(
              child: Text("Start?"),
            )
          ],
        ),
        bottomSheet: isNotLastPage
            ? ColoredBox(
                color: AppColors.whiteColor,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height *
                      OnboardingConsts.bottomSpace,
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 4,
                      effect: const SwapEffect(
                        type: SwapType.yRotation,
                        dotColor: AppColors.imperial45,
                        activeDotColor: AppColors.darkMainColor,
                        dotHeight: 15,
                        dotWidth: 15,
                        spacing: 14,
                      ),
                      onDotClicked: (index) => pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeInOut),
                    ),
                  ),
                ),
              )
            : ColoredBox(
                color: AppColors.whiteColor,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: InkWell(
                    child: Center(child: Text("Начать")),
                    onTap: () => context.go("/home"),
                  ),
                )));
  }
}
