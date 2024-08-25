import 'package:flutter/material.dart';

class AppColors {
  static const Color mainColor = Color.fromRGBO(83, 45, 106, 0.6);
  static const Color darkMainColor = Color.fromRGBO(83, 45, 106, 1);
  static const Color mainColorOpacity = Color.fromRGBO(83, 45, 106, 0.7);
  static const Color darkMainColorOpacity = Color.fromRGBO(83, 45, 106, 0.9);
  static const Color errorColor = Color.fromRGBO(227, 0, 0, 0.65);
  static const Color incorrectChooseColor = Color.fromRGBO(255, 74, 74, 0.3);

  static const Color pushedPincodeColor = Color.fromRGBO(170, 117, 202, 1);
  static const Color defaultPincodeColor = Color.fromRGBO(211, 211, 212, 1);

  static const Color homePageStartRecord = Color.fromRGBO(241, 245, 249, 1);

  static const Color whiteBackgroundColor = Color.fromRGBO(248, 247, 243, 0.5);
  static const Color wordInputBackgroundColor =
      Color.fromRGBO(237, 243, 255, 1);

  static const LinearGradient navBarRecord = LinearGradient(
      colors: [AppColors.whiteBackgroundColor, AppColors.whiteBackgroundColor],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
  static const LinearGradient navBarProfile = LinearGradient(colors: [
    Color.fromRGBO(226, 234, 253, 1),
    Color.fromRGBO(224, 233, 253, 1),
    Color.fromRGBO(222, 231, 253, 1)
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
  static const LinearGradient navBarLearn = LinearGradient(colors: [
    Color.fromRGBO(221, 233, 252, 1),
    Color.fromRGBO(221, 223, 250, 1)
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);

  static const LinearGradient backgroundGradient = LinearGradient(colors: [
    Color.fromRGBO(229, 243, 255, 1),
    Color.fromRGBO(216, 227, 255, 1)
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);

  static const LinearGradient backgroundOnboardingGradient = LinearGradient(
      colors: [
        Color.fromRGBO(150, 124, 253, 0.7),
        Color.fromRGBO(49, 119, 255, 0.7)
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);

  static const Color white05Color = Color.fromRGBO(255, 255, 255, 0.5);
  static const Color blackColor = Color.fromARGB(255, 0, 0, 0);
  static const Color whiteColor = Color.fromARGB(255, 255, 255, 255);
  static const Color greenColor = Color.fromARGB(255, 84, 187, 92);
  static const Color brownColor = Color.fromARGB(255, 215, 204, 200);
  static const Color lightWhite = Color.fromRGBO(238, 238, 238, 1);

  static Color black45Color = Color.fromARGB((255 * 0.45).toInt(), 0, 0, 0);
  static Color black25Color = Color.fromARGB((255 * 0.25).toInt(), 0, 0, 0);

  static const Color lightgrayColor = Color.fromRGBO(154, 147, 147, 1);
  static const Color lightgrayColor2 = Color.fromRGBO(133, 132, 134, 1);
  static const Color grayColor = Color.fromRGBO(102, 102, 102, 1);

  static const Color goodProgressbarColor1 = Color.fromRGBO(47, 234, 155, 1);
  static const Color goodProgressbarColor2 = Color.fromRGBO(127, 221, 83, 1);
  static const Color badProgressbarColor1 = Color.fromRGBO(255, 191, 26, 1);
  static const Color badProgressbarColor2 = Color.fromRGBO(255, 64, 128, 1);

  static const Color shadowColor1 = Color.fromRGBO(97, 120, 201, 0.26);
  static const Color shadowColor2 = Color.fromRGBO(255, 255, 255, 0.08);

  static const Color darkGreyColor = Color.fromRGBO(132, 127, 135, 1);
  static const Color yellowColor = Color.fromRGBO(255, 191, 26, 1);
  static const Color redColor = Color.fromRGBO(255, 64, 128, 1);
  static const Color violetColor = Color.fromRGBO(150, 124, 253, 1);
  static const Color purpleColor = Color.fromRGBO(83, 45, 106, 1);
  static const Color blueColor = Color.fromRGBO(49, 119, 255, 1);

  static const LinearGradient greyIconGradient = LinearGradient(
      colors: [AppColors.darkGreyColor, AppColors.darkGreyColor],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
  static const LinearGradient redIconGradient = LinearGradient(
      colors: [AppColors.yellowColor, AppColors.redColor],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
  static const LinearGradient blueIconGradient = LinearGradient(
      colors: [AppColors.violetColor, AppColors.blueColor],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
  static const LinearGradient violetGradient = LinearGradient(
      colors: [AppColors.violetColor, AppColors.darkMainColor],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
  static const SweepGradient centralGradient = SweepGradient(
    colors: [
      AppColors.violetColor,
      AppColors.blueColor,
      AppColors.violetColor,
      AppColors.blueColor,
      AppColors.violetColor
    ],
    tileMode: TileMode.repeated,
    stops: <double>[0.0, 0.25, 0.5, 0.75, 1.0],
  );

  static const Color goodColor1 = Color.fromRGBO(47, 234, 155, 0.2);

  static const LinearGradient greenStandartGradient = LinearGradient(colors: [
    AppColors.goodProgressbarColor1,
    AppColors.goodProgressbarColor2
  ], begin: Alignment.topLeft, end: Alignment.bottomRight);
  static const LinearGradient redStandartGradient = LinearGradient(
      colors: [AppColors.yellowColor, AppColors.redColor],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
  static const LinearGradient purpleStandartGradient = LinearGradient(
      colors: [AppColors.violetColor, AppColors.purpleColor],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);

  static LinearGradient wrongBubbleButtonGradient = LinearGradient(colors: [
    AppColors.yellowColor.withOpacity(0.5),
    AppColors.redColor.withOpacity(0.4)
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
  static LinearGradient unactiveBubbleButtonGradient = LinearGradient(colors: [
    AppColors.lightgrayColor.withOpacity(0.4),
    AppColors.grayColor.withOpacity(0.4)
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);

  static LinearGradient progressBarGreenGradient = const LinearGradient(
      colors: [
        AppColors.goodProgressbarColor1,
        AppColors.goodProgressbarColor2
      ]);
  static LinearGradient progressBarRedGradient = const LinearGradient(
      colors: [AppColors.badProgressbarColor1, AppColors.badProgressbarColor2]);
  static LinearGradient progressBarGreenGradientBack = LinearGradient(colors: [
    AppColors.goodProgressbarColor1.withOpacity(0.15),
    AppColors.goodProgressbarColor2.withOpacity(0.15)
  ]);
  static LinearGradient progressBarRedGradientBack = LinearGradient(colors: [
    AppColors.badProgressbarColor1.withOpacity(0.15),
    AppColors.badProgressbarColor2.withOpacity(0.15)
  ]);

  static const Color imperial45 = Color.fromRGBO(83, 45, 106, 0.45);
  static const Color imperialOpacity45 = Color.fromRGBO(178, 160, 188, 1);
  static const Color imperial = Color.fromRGBO(83, 45, 106, 1);

  static const Color animationColor = Color.fromRGBO(216, 227, 255, 1);

  static const LinearGradient greenCircleProgressGradient =
      LinearGradient(colors: [
    AppColors.goodProgressbarColor1,
    AppColors.goodProgressbarColor2,
    AppColors.goodProgressbarColor1,
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);

  static const LinearGradient purpleGradient = LinearGradient(colors: [
    Color.fromRGBO(150, 124, 253, 1),
    Color.fromRGBO(83, 45, 106, 1),
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);

  static const Color haventStatisticsColor = Color.fromRGBO(132, 127, 135, 1);

  static LinearGradient deleteWordRow = LinearGradient(colors: [
    AppColors.badProgressbarColor1.withOpacity(0.55),
    AppColors.badProgressbarColor2.withOpacity(0.55)
  ]);

  static const LinearGradient gradeButtonGradient = LinearGradient(colors: [
    Color.fromRGBO(150, 124, 253, 1),
    Color.fromRGBO(49, 119, 255, 1),
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);
}
