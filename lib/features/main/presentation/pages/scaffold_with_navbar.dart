import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      body: widget.child,
      bottomNavigationBar:
          GoRouter.of(context).routeInformationProvider.value.uri.toString() ==
                  "/"
              ? SizedBox()
              : BottomNavigationBar(
                  onTap: (value) {
                    pushAtIndex(value, context);
                  },
                  currentIndex: _selectedIndex,
                  selectedItemColor: Color(0xFF466DF2),
                  unselectedItemColor: Colors.black,
                  unselectedLabelStyle: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                  selectedLabelStyle: const TextStyle(
                      color: AppColors.mainColor, fontWeight: FontWeight.w700),
                  items: [
                    BottomNavigationBarItem(
                        label: "record", icon: Icon(Icons.keyboard_voice)),
                    BottomNavigationBarItem(
                      label: "learn",
                      icon: Icon(Icons.book_outlined),
                    ),
                    BottomNavigationBarItem(
                        label: "profile", icon: Icon(Icons.person)),
                  ],
                ),
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
      case 2:
        context.go("/auth");
    }
  }
}
