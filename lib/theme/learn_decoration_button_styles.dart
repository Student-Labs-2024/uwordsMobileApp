import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';

class LearnDecorButtStyle {
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
}
