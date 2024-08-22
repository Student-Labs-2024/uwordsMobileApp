import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AchievementsConstants {
  /*static const List<int> onfireCounts = [14, 16, 180];
  static const List<int> wordsLearnedCounts = [10, 100, 1000];
  static const List<int> recordTimeCounts = [1, 10, 100];
  static const List<int> addedFriendsCounts = [1, 5, 10];
  static const List<int> errorCounts = [1, 5, 10];

  static const int stagesCount = 3;*/

  static const String wordsLearnedAchievement = "learned_words";
  static const String addedWordsAchievement = "added_words";
  static const String speechSecondsAchievement = "speech_seconds";
  static const String videoSecondsAchievement = "video_seconds";
}

String getTitle(String type, BuildContext context) {
  switch (type) {
    case AchievementsConstants.wordsLearnedAchievement:
      return 'Выучено слов';

    case AchievementsConstants.addedWordsAchievement:
      return 'Добавлено слов';

    case AchievementsConstants.speechSecondsAchievement:
      return 'Время записи';

    case AchievementsConstants.videoSecondsAchievement:
      return 'Время видео';
    default:
      return AppLocalizations.of(context).unknowError;
  }
}
/*
int getNeedCount(String type, int index) {
  if (type == 'onfire') {
    return AchievementsConstants.onfireCounts[index];
  } else if (type == 'wordsLearned') {
    return AchievementsConstants.wordsLearnedCounts[index];
  } else if (type == 'recordTime') {
    return AchievementsConstants.recordTimeCounts[index];
  } else if (type == 'addedFriends') {
    return AchievementsConstants.addedFriendsCounts[index];
  }
  return AchievementsConstants.errorCounts[index];
}

String getTitle(String type, BuildContext context) {
  if (type == 'onfire') {
    return AppLocalizations.of(context).daysOnFireTitle;
  } else if (type == 'wordsLearned') {
    return AppLocalizations.of(context).learnedWordsTitle;
  } else if (type == 'recordTime') {
    return AppLocalizations.of(context).recordTimeTitle;
  } else if (type == 'addedFriends') {
    return AppLocalizations.of(context).addedFriendsTitle;
  }
  return AppLocalizations.of(context).unknowError;
}

String getText(String type, int needCount, BuildContext context) {
  if (type == 'onfire') {
    return AppLocalizations.of(context).daysOnFire(needCount);
  } else if (type == 'wordsLearned') {
    return AppLocalizations.of(context).learnedWords(needCount);
  } else if (type == 'recordTime') {
    return AppLocalizations.of(context).recordTime(needCount);
  } else if (type == 'addedFriends') {
    return AppLocalizations.of(context).addedFriends(needCount);
  }
  return AppLocalizations.of(context).unknowError;
}
*/