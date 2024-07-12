import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
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
          bottom: 16,
          left: MediaQuery.of(context).size.width * 0.07,
          child: GoRouter.of(context)
                      .routeInformationProvider
                      .value
                      .uri
                      .toString() ==
                  "/"
              ? SizedBox()
              : Container(
                  width: MediaQuery.of(context).size.width * 0.86,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: const fis.BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: AppColors.whiteBackgroundColor,
                    boxShadow: [
                      fis.BoxShadow(
                        color: Color.fromRGBO(97, 120, 201, 0.26),
                        blurRadius: 16.0,
                        spreadRadius: 0,
                        offset: Offset(4, 4),
                        inset: false,
                      ),
                      fis.BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 0.08),
                        blurRadius: 16.0,
                        spreadRadius: 0,
                        offset: Offset(2, 2),
                        inset: false,
                      ),
                      fis.BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                        blurRadius: 80.0,
                        spreadRadius: 1,
                        offset: Offset(2, 2),
                        inset: true,
                      ),
                    ],
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
                          height: 24,
                        ),
                      ),
                      IconButton(
                        onPressed: () => pushAtIndex(1, context),
                        icon: SvgPicture.asset(
                          'assets/svg/learn_ico.svg',
                          color: _selectedIndex == 1
                              ? AppColors.darkMainColor
                              : AppColors.mainColor,
                          height: 24,
                        ),
                      ),
                      IconButton(
                          onPressed: () => pushAtIndex(2, context),
                          icon: Image.asset(
                            'assets/png/bub_but2x.png',
                            height: 54,
                          )),
                      IconButton(
                        onPressed: () => pushAtIndex(3, context),
                        icon: SvgPicture.asset(
                          'assets/svg/notification_ico.svg',
                          color: _selectedIndex == 3
                              ? AppColors.darkMainColor
                              : AppColors.mainColor,
                          height: 24,
                        ),
                      ),
                      IconButton(
                        onPressed: () => pushAtIndex(4, context),
                        icon: SvgPicture.asset(
                          'assets/svg/profile_ico.svg',
                          color: _selectedIndex == 4
                              ? AppColors.darkMainColor
                              : AppColors.mainColor,
                          height: 24,
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
