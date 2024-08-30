import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_fonts.dart';

class AppTextStyles {
  static const recordButtonTitle = TextStyle(
    fontFamily: AppFonts.handwrite,
    fontWeight: FontWeight.w400,
    fontSize: 30,
    color: AppColors.darkMainColor,
  );
  static const recordButtonSubTitle = TextStyle(
    fontFamily: AppFonts.handwrite,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: AppColors.darkMainColor,
  );
  static const topicOpacityTitle = TextStyle(
    fontFamily: AppFonts.handwrite,
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.darkMainColor,
  );
  static const customTextfieldInput = TextStyle(
      color: Colors.grey,
      fontSize: 14,
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w400);
  static const customTextfieldExeption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.errorColor,
  );
  static const customTextFieldForAuth =
      TextStyle(color: Colors.brown, fontSize: 20, fontWeight: FontWeight.bold);

  static const authHeaderText = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: AppColors.darkMainColor);
  static const topicHeaderText = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColors.darkMainColor);
  static const checkMoreText = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.darkMainColor);
  static const authButtonText = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: AppColors.darkMainColor);
  static const authSmallText = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppColors.darkMainColor);
  static const authLinkText = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppColors.darkMainColor,
      decoration: TextDecoration.underline,
      decorationColor: AppColors.mainColorOpacity);
  static const authSmallestText = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: AppColors.darkMainColor);
  static const authSmallestLinkText = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: AppColors.darkMainColor,
      decoration: TextDecoration.underline,
      decorationColor: AppColors.mainColorOpacity);
  static const authSmallestLinkTextOpacity = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      color: AppColors.mainColorOpacity,
      decoration: TextDecoration.underline,
      decorationColor: AppColors.mainColorOpacity,
      letterSpacing: 0.1);
  static const authSmallestTextOpacity = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: AppColors.mainColorOpacity,
    letterSpacing: 0.1,
  );
  static const authSendedCodeText = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: AppColors.darkMainColor,
  );
  static const authSendedCodeUnderlinedText = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: AppColors.darkMainColor,
    decoration: TextDecoration.underline,
    decorationColor: AppColors.mainColorOpacity,
  );
  static const pinCodeText = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: AppColors.darkMainColor);

  static const profileName = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: AppColors.blackColor);

  static const carouselActive = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: AppColors.blackColor);
  static const carouselUnActive = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.lightgrayColor);

  static const statisticCardTitle = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 20,
      color: AppColors.blackColor);
  static const statisticCardSubtitle = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: AppColors.lightgrayColor2);

  static const profileSubtitle = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: AppColors.blackColor);

  static const progressWordTileTitle = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: AppColors.blackColor);
  static const progressWordTileProgress = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      color: AppColors.lightgrayColor2);
  static const progressWordTileProgressBold = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: AppColors.blackColor);
  static const achievementCard = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: AppColors.blackColor);

  static const activitiesTitleText = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.blackColor);
  static const activitiesTitleData = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppColors.grayColor);
  static const authSmallestBoldLinkText = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.bold,
    fontSize: 12,
    color: AppColors.darkMainColor,
  );
  static const subtopicCardName = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: AppColors.darkMainColor);
  static const subtopicCardWords = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.darkMainColor);
  static const bigSubtopicTitle = TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: AppColors.darkMainColor);
  static var learnCant = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.darkMainColor.withOpacity(0.45),
    decoration: TextDecoration.underline,
    decorationColor: AppColors.darkMainColor.withOpacity(0.45),
  );

  static const profileNavActive = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: AppColors.blackColor,
  );
  static const profileNavNotActive = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.lightgrayColor,
  );

  static const subscriptionViewTitle = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: AppColors.blackColor);
  static const subscriptionViewSubtitle = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: AppColors.lightgrayColor2);
  static const haventStatistics = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 17,
      color: AppColors.haventStatisticsColor);
  static const animatedSubtopicCardName = TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w600,
      color: AppColors.darkMainColor);
  static const animatedSubtopicCardWords = TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.w400,
      color: AppColors.darkMainColor);
  static const subscriptionTitle = TextStyle(
    fontSize: 22,
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w600,
  );
  static const animatedWordRow = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w800,
      fontSize: 17,
      color: AppColors.whiteColor);
  static const gradeButton = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: AppColors.whiteColor);
  static const gradeNotNow = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: AppColors.imperial);
  static const gradeTitle = TextStyle(
      fontFamily: AppFonts.inter,
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: AppColors.imperial);
  static const oldPrice = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w500,
    color: AppColors.darkGreyColor,
    fontSize: 13,
    decoration: TextDecoration.lineThrough,
    decorationColor: AppColors.darkGreyColor,
  );
  static const freeTimeText = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 13,
    fontWeight: FontWeight.w700,
  );
}
