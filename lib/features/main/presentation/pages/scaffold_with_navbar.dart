import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/grade/bloc/grade_bloc.dart';
import 'package:uwords/features/main/presentation/constants/box_shadows.dart';
import 'package:uwords/features/main/presentation/constants/scaffold_with_navbar_paddings.dart';
import 'package:uwords/features/main/presentation/constants/scaffold_with_navbar_sizes.dart';
import 'package:uwords/theme/image_source.dart';
import '../../../../theme/app_colors.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  const ScaffoldWithNavBar({super.key, required this.child});

  final Widget child;

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  int _selectedIndex = 0;

  bool _isNavBarHiden = false;

  LinearGradient getGradient(String currentRoute) {
    if (currentRoute == '/home') {
      return AppColors.navBarRecord;
    } else if (currentRoute == '/learn') {
      return AppColors.navBarLearn;
    } else {
      return AppColors.navBarProfile;
    }
  }

  void pushAtIndex(int index, BuildContext context) async {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        context.go("/learn");
      case 1:
        context.go("/home");
      case 2:
        context.go("/profile");
    }
  }

  @override
  Widget build(BuildContext context) {
    var currentRoute =
        GoRouter.of(context).routeInformationProvider.value.uri.toString();
    return BlocListener<GradeBloc, GradeState>(
      listener: (context, state) {
        state.maybeWhen(
          enabled: () {
            setState(() {
              _isNavBarHiden = true;
            });
          },
          orElse: () {
            setState(() {
              _isNavBarHiden = false;
            });
          },
        );
      },
      child: Stack(children: [
        widget.child,
        Positioned(
          bottom: ScaffoldWithNavbarPaddings.navBarBottom,
          left: (MediaQuery.of(context).size.width) *
              ScaffoldWithNavbarPaddings.navBarLeft,
          child: (((currentRoute == "/") ||
                      (currentRoute == "/auth") ||
                      (currentRoute == "/learn/subtopic") ||
                      (currentRoute == "/learnCore") ||
                      (currentRoute == "/subscription") ||
                      (currentRoute == "/onboarding")) ||
                  _isNavBarHiden)
              ? const SizedBox()
              : Container(
                  width: (MediaQuery.of(context).size.width) *
                      ScaffoldWithNavbarSizes.navBarWidth,
                  padding: const EdgeInsets.symmetric(
                      horizontal: ScaffoldWithNavbarPaddings.navBarHorizontal),
                  decoration: fis.BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(GlobalSizes.borderRadiusLarge)),
                    gradient: getGradient(currentRoute),
                    boxShadow: MainBoxShadows.main,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => pushAtIndex(0, context),
                        icon: SvgPicture.asset(
                          AppImageSource.learnIco,
                          color: _selectedIndex == 0
                              ? AppColors.veryDarkMainColor
                              : AppColors.mainColor,
                          height: ScaffoldWithNavbarSizes.navBarIconHeight,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width *
                                ScaffoldWithNavbarPaddings
                                    .navBarCenterHorizontal),
                        child: Opacity(
                          opacity: _selectedIndex == 1 ? 1 : 0.7,
                          child: IconButton(
                              onPressed: () => pushAtIndex(1, context),
                              icon: Image.asset(
                                AppImageSource.navVoiceIcon,
                                height: ScaffoldWithNavbarSizes
                                    .navBarCentralIconHeight,
                              )),
                        ),
                      ),
                      IconButton(
                        onPressed: () => pushAtIndex(2, context),
                        icon: SvgPicture.asset(
                          AppImageSource.profileIco,
                          color: _selectedIndex == 2
                              ? AppColors.veryDarkMainColor
                              : AppColors.mainColor,
                          height: ScaffoldWithNavbarSizes.navBarIconHeight,
                        ),
                      ),
                    ],
                  )),
        ),
      ]),
    );
  }
}
