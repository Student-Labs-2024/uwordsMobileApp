import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';

class LearnStyles {
  static BoxDecoration wordScreenPopBackBDS = BoxDecoration(
    borderRadius: BorderRadius.circular(25),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 0,
        offset: const Offset(0, 2),
      ),
    ],
  );

  static BoxDecoration sucssesfulWordScreenCheckBDS = BoxDecoration(
    borderRadius: BorderRadius.circular(45),
    boxShadow: [
      BoxShadow(
        color: AppColors.greenColor.withOpacity(0.15),
        spreadRadius: 1,
        blurRadius: 0,
        offset: const Offset(0, 2),
      ),
    ],
  );

  static ButtonStyle wordScreenPopBackBS = TextButton.styleFrom(
    elevation: 0,
    alignment: Alignment.center,
    backgroundColor: Colors.white,
    foregroundColor: const Color.fromARGB(255, 69, 69, 69),
    padding: EdgeInsets.zero,
  );

  static BoxDecoration wordScreenSoundBDS = BoxDecoration(
    borderRadius: BorderRadius.circular(25),
  );
  static ButtonStyle wordScreenSoundBS = TextButton.styleFrom(
    elevation: 0,
    alignment: Alignment.center,
    backgroundColor: const Color.fromARGB(255, 213, 213, 213),
    foregroundColor: const Color.fromARGB(255, 69, 69, 69),
    padding: EdgeInsets.zero,
  );

  static EdgeInsets basicPadding =
      const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0);
  static TextStyle basicTitleStyle =
      const TextStyle(fontSize: 40, fontWeight: FontWeight.w700);
  static TextStyle basicSubtitleStyle =
      const TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static TextStyle basicWordStyle =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w400);
}
