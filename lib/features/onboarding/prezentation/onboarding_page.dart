import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/onboarding/domain/onboarding_consts.dart';
import 'package:uwords/features/onboarding/prezentation/screens/first_onboarding_page.dart';
import 'package:uwords/features/onboarding/prezentation/screens/fourth_onboarding_page.dart';
import 'package:uwords/features/onboarding/prezentation/screens/second_onboarding_page.dart';
import 'package:uwords/features/onboarding/prezentation/screens/third_onboarding_page.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void updateDataWithServer() async {
    IUserRepository userRepositoryInstanse =
        GetIt.instance.get<IUserRepository>();
    await userRepositoryInstanse.onboardingCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            isNotLastPage = index < OnboardingConsts.beforeLastScreen;
            if (index <= OnboardingConsts.beforeLastScreen) {
              setState(() {});
            }
          },
          children: const [
            FirstOnboardingPage(),
            SecondOnboardingPage(),
            ThirdOnboardingPage(),
            FourthOnboardingPage()
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
                      count: OnboardingConsts.countOfScreens,
                      effect: const SwapEffect(
                        type: SwapType.yRotation,
                        dotColor: AppColors.imperial45,
                        activeDotColor: AppColors.darkMainColor,
                        dotHeight: OnboardingConsts.dotSize,
                        dotWidth: OnboardingConsts.dotSize,
                        spacing: OnboardingConsts.dotSpacing,
                      ),
                      onDotClicked: (index) => pageController.animateToPage(
                          index,
                          duration: const Duration(
                              milliseconds: OnboardingConsts.animationDuration),
                          curve: Curves.easeInOut),
                    ),
                  ),
                ),
              )
            : ColoredBox(
                color: AppColors.whiteColor,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: OnboardingConsts.bottom,
                  child: InkWell(
                    child: Center(
                        child:
                            Text(AppLocalizations.of(context).startQuestion)),
                    onTap: () {
                      updateDataWithServer();
                      context.go("/home");
                    },
                  ),
                )));
  }
}
