import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:home_widget/home_widget.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/home_widget/home_widgets_conts.dart';
import 'package:uwords/features/home_widget/streak_widget_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void updateHeadline(StreakWidgetData newHeadline) {
  HomeWidget.saveWidgetData<String>('headline_title', newHeadline.title);
  HomeWidget.saveWidgetData<String>(
      'headline_description', newHeadline.description);
  HomeWidget.updateWidget(
    androidName: HomeWidgetsConts.androidWidgetName,
  );
}

void updateHomeWidgetByUserData({required BuildContext context}) {
  if (Platform.isAndroid) {
    final IUserRepository userRepositoryInstanse =
        GetIt.instance.get<IUserRepository>();
    final days = userRepositoryInstanse.getCurrentUserDaysStreak();
    final StreakWidgetData streakWidgetData = StreakWidgetData(
        title: AppLocalizations.of(context).streakDays(days),
        description: AppLocalizations.of(context).goDayStreak);
    updateHeadline(streakWidgetData);
  }
}
