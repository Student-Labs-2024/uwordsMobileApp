import 'package:uwords/features/database/uwords_database/uwords_database.dart';
import 'package:uwords/features/global/domain/achievement.dart';

class AchievementCategoryDto {
  final String title;
  final List<AchievementInfoDto> achievementsInfoDtoList;

  AchievementCategoryDto(
      {required this.title, required this.achievementsInfoDtoList});

  factory AchievementCategoryDto.fromJson(
      {required Map<String, dynamic> achievementCategoryDtoMap}) {
    return AchievementCategoryDto(
        title: achievementCategoryDtoMap['title'],
        achievementsInfoDtoList:
            (achievementCategoryDtoMap['achievements'] as List<dynamic>?)
                    ?.map((achievement) => AchievementInfoDto.fromJson(
                        achievementInfoMap: achievement))
                    .toList() ??
                []);
  }

  factory AchievementCategoryDto.fromDB(
      {required AchievementCategory achievement,
      required List<Achievement> achievements}) {
    return AchievementCategoryDto(
        title: achievement.title,
        achievementsInfoDtoList: achievements
            .map((a) => AchievementInfoDto.fromDB(achievement: a))
            .toList());
  }
}

extension AchievementCategoryMapper on AchievementCategoryDto {
  AchievementCategoryModel toModel() => AchievementCategoryModel(
      title: title,
      achievementsInfoDtoList:
          achievementsInfoDtoList.map((e) => e.toModel()).toList());
  AchievementCategory toDB() => AchievementCategory(title: title);
}

class AchievementCategoryModel {
  final String title;
  final List<AchievementInfoModel> achievementsInfoDtoList;
  AchievementCategoryModel(
      {required this.title, required this.achievementsInfoDtoList});
}

List<AchievementCategoryDto> createAchievementCategoryDtos(
    Map<AchievementCategory, List<Achievement>> categoryMap) {
  return categoryMap.entries.map((entry) {
    final category = entry.key;
    final achievements = entry.value;
    return AchievementCategoryDto.fromDB(
      achievement: category,
      achievements: achievements,
    );
  }).toList();
}
