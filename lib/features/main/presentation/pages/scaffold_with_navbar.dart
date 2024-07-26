import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/features/main/data/constants/scaffold_with_navbar_paddings.dart';
import 'package:uwords/features/main/data/constants/scaffold_with_navbar_sizes.dart';
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

  @override
  Widget build(BuildContext context) {
    var currentRoute =
        GoRouter.of(context).routeInformationProvider.value.uri.toString();
    return Scaffold(
      body: Stack(children: [
        widget.child,
        Positioned(
          bottom: ScaffoldWithNavbarPaddings.navBarBottom,
          left: (MediaQuery.of(context).size.width) *
              ScaffoldWithNavbarPaddings.navBarLeft,
          child: ((currentRoute == "/") || (currentRoute == "/auth"))
              ? const SizedBox()
              : Container(
                  width: (MediaQuery.of(context).size.width) *
                      ScaffoldWithNavbarSizes.navBarWidth,
                  padding: const EdgeInsets.symmetric(
                      horizontal: ScaffoldWithNavbarPaddings.navBarHorizontal),
                  decoration: fis.BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: AppColors.whiteBackgroundColor,
                    boxShadow: MainBoxShadows.main,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => pushAtIndex(0, context),
                        icon: SvgPicture.asset(
                          AppImageSource.voiceIco,
                          color: _selectedIndex == 0
                              ? AppColors.darkMainColor
                              : AppColors.mainColor,
                          height: ScaffoldWithNavbarSizes.navBarIconHeight,
                        ),
                      ),
                      IconButton(
                        onPressed: () => pushAtIndex(1, context),
                        icon: SvgPicture.asset(
                          AppImageSource.learnIco,
                          color: _selectedIndex == 1
                              ? AppColors.darkMainColor
                              : AppColors.mainColor,
                          height: ScaffoldWithNavbarSizes.navBarIconHeight,
                        ),
                      ),
                      IconButton(
                          onPressed: () => pushAtIndex(2, context),
                          icon: Image.asset(
                            AppImageSource.navBubbleIco,
                            height:
                                ScaffoldWithNavbarSizes.navBarCentralIconHeight,
                          )),
                      IconButton(
                        onPressed: () => pushAtIndex(3, context),
                        icon: SvgPicture.asset(
                          AppImageSource.notificationIco,
                          color: _selectedIndex == 3
                              ? AppColors.darkMainColor
                              : AppColors.mainColor,
                          height: ScaffoldWithNavbarSizes.navBarIconHeight,
                        ),
                      ),
                      IconButton(
                        onPressed: () => pushAtIndex(4, context),
                        icon: SvgPicture.asset(
                          AppImageSource.profileIco,
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
        context.go("/");
    }
  }
}
