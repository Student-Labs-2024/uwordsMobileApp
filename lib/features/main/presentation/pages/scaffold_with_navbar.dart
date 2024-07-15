import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/features/main/data/constants/scaffold_with_navbar_paddings.dart';
import 'package:uwords/features/main/data/constants/scaffold_with_navbar_sizes.dart';
import '../../../../theme/app_colors.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  const ScaffoldWithNavBar({super.key, required this.child});

  final Widget child;

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        widget.child,
        Positioned(
          bottom: ScaffoldWithNavbarPaddings.navBarBottom,
          left: (MediaQuery.of(context).size.width) *
              ScaffoldWithNavbarPaddings.navBarLeft,
          child: GoRouter.of(context)
                      .routeInformationProvider
                      .value
                      .uri
                      .toString() ==
                  "/"
              ? const SizedBox()
              : Container(
                  width: (MediaQuery.of(context).size.width) *
                      ScaffoldWithNavbarSizes.navBarWidth,
                  padding: const EdgeInsets.symmetric(
                      horizontal: ScaffoldWithNavbarPaddings.navBarHorizontal),
                  decoration: fis.BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: AppColors.whiteBackgroundColor,
                    boxShadow: MainBoxShadows.navBar,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => pushAtIndex(0, context),
                        icon: SvgPicture.asset(
                          'assets/svg/voice_ico.svg',
                          color: _selectedIndex == 0
                              ? AppColors.darkMainColor
                              : AppColors.mainColor,
                          height: ScaffoldWithNavbarSizes.navBarIconHeight,
                        ),
                      ),
                      IconButton(
                        onPressed: () => pushAtIndex(1, context),
                        icon: SvgPicture.asset(
                          'assets/svg/learn_ico.svg',
                          color: _selectedIndex == 1
                              ? AppColors.darkMainColor
                              : AppColors.mainColor,
                          height: ScaffoldWithNavbarSizes.navBarIconHeight,
                        ),
                      ),
                      IconButton(
                          onPressed: () => pushAtIndex(2, context),
                          icon: Image.asset(
                            'assets/png/nav_bubble_ico.png',
                            height:
                                ScaffoldWithNavbarSizes.navBarCentralIconHeight,
                          )),
                      IconButton(
                        onPressed: () => pushAtIndex(3, context),
                        icon: SvgPicture.asset(
                          'assets/svg/notification_ico.svg',
                          color: _selectedIndex == 3
                              ? AppColors.darkMainColor
                              : AppColors.mainColor,
                          height: ScaffoldWithNavbarSizes.navBarIconHeight,
                        ),
                      ),
                      IconButton(
                        onPressed: () => pushAtIndex(4, context),
                        icon: SvgPicture.asset(
                          'assets/svg/profile_ico.svg',
                          color: _selectedIndex == 4
                              ? AppColors.darkMainColor
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

  void pushAtIndex(int index, BuildContext context) async {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        context.go("/home");
      case 1:
        context.go("/learn");
      case 4:
        context.go("/auth");
    }
  }
}
