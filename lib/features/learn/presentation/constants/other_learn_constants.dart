import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';

class OtherLearnConstants {
  static const Duration smallDuration = Duration(milliseconds: 500);
  static const int checkMoreInt = 4;
  static const int zeroProgress = 0;
  static const int quarterProgress = 1;
  static const int halfProgress = 2;
  static const int thirdQuarterProgress = 3;
  static const int fullProgress = 4;
  static const int halfProgressBar = 50;
  static const int countOfTypesOfTests = 4;
  static const int maxProgress = 100;

  static const String stateSuccess = 'success';
  static const String stateZero = 'zero';
  static const String stateWrong = 'wrong';
  static const String stateActive = 'active';

  static const String stateCantHear = 'cantHear';
  static const String stateCantSpeak = 'cantTell';

  static const String stateLoseHealth = 'zeroHP';
  static const String stateFinal = 'finaly';

  static const String stateDarkened = 'darkened';

  static LinearGradient getGradient(String state) {
    switch (state) {
      case stateWrong:
        return AppColors.redStandartGradient;
      case stateSuccess:
        return AppColors.greenStandartGradient;
      default:
        return AppColors.purpleStandartGradient;
    }
  }

  static LinearGradient getBubbleButtonGradient(String state) {
    switch (state) {
      case stateWrong:
        return AppColors.wrongBubbleButtonGradient;
      default:
        return AppColors.unactiveBubbleButtonGradient;
    }
  }

  static const int progressStep = 7;
  static const int maxHP = 3;

  static const int cantMinutes = 15;

  static const int milisecGood = 180;
  static const int milisecWrong = 500;

  static const int progressMilisec1 = 2500;
  static const int progressMilisec2 = 3000;
  static const int progressMilisec3 = 1000;

  static const int animationAlignChangeMilisecDuration = 500;

  static const int animationBottomSheetShowMilisecDuration = 400;

  static const int circleImageStage0 = 0;
  static const int circleImageStage1 = 1;
  static const int circleImageStage2 = 2;

  static const String topickNameInProgress = 'In Progress';
  static const String subtopickNameUnsorted = 'Unsorted';

  static const String animatedSubtopicpictureLink =
      'app.big-nose.ru:9100/uwords-subtopic-icons/Default Subtopic.svg';
  static const String animatedSubtopicTitle = 'Тема';
  static const int animatedSubtopicWordsCount = 31;

  static const int animatedSubtopicProgressMax = 100;
  static const int animatedSubtopicProgressMedium = 40;
  static const int animatedSubtopicProgressRepeatMiliseconds = 4100;

  static const int animatedSubtopicProgressSmallSecondsPart = 1;
  static const int animatedSubtopicProgressMediumSecondsPart = 2;

  static const Duration wordRowAnimation = Duration(milliseconds: 100);
  static const Duration wordRowDeletedTime = Duration(milliseconds: 800);
  static const int countRepeats = 4;

  static const String allLearned = "Всё уже изучено";
}
