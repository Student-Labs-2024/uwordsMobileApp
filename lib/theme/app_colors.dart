import 'package:flutter/material.dart';

class AppColors {
  static const Color mainColor = Color.fromRGBO(83, 45, 106, 0.6);
  static const Color darkMainColor = Color.fromRGBO(83, 45, 106, 1);
  static const Color mainColorOpacity = Color.fromRGBO(83, 45, 106, 0.7);
  static const Color darkMainColorOpacity = Color.fromRGBO(83, 45, 106, 0.9);
  static const Color errorColor = Colors.red;
  static const Color incorrectChooseColor = Color.fromRGBO(255, 74, 74, 0.6);

  static const Color pushedPincodeColor = Color.fromRGBO(170, 117, 202, 1);
  static const Color defaultPincodeColor = Color.fromRGBO(211, 211, 212, 1);

  static const Color homePageStartRecord = Color.fromRGBO(241, 245, 249, 1);

  static const Color whiteBackgroundColor = Color.fromRGBO(248, 247, 243, 0.5);

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
    Color.fromRGBO(209, 223, 250, 1)
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);

  static const LinearGradient backgroundGradient = LinearGradient(colors: [
    Color.fromRGBO(229, 243, 255, 1),
    Color.fromRGBO(216, 227, 255, 1)
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);

  static const Color white05Color = Color.fromRGBO(255, 255, 255, 0.5);
  static const Color blackColor = Color.fromARGB(255, 0, 0, 0);
  static const Color whiteColor = Color.fromARGB(255, 255, 255, 255);
  static const Color greenColor = Color.fromARGB(255, 84, 187, 92);
  static const Color brownColor = Color.fromARGB(255, 215, 204, 200);
  static const Color lightWhite = Color.fromRGBO(238, 238, 238, 1);

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

}
