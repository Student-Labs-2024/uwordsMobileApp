import 'package:drift/drift.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

class AchievementDto {
  final int id;
  final String title;
  final String description;
  final String pictureLink;
  final String category;
  final int stage;
  final int target;

  AchievementDto(
      {required this.id,
      required this.title,
      required this.description,
      required this.pictureLink,
      required this.category,
      required this.stage,
      required this.target});

  factory AchievementDto.fromJson(
      {required Map<String, dynamic> achievementMap}) {
    return AchievementDto(
        id: achievementMap['id'],
        title: achievementMap['title'],
        description: achievementMap['description'],
        pictureLink: achievementMap['pictureLink'] ?? '',
        category: achievementMap['category'],
        stage: achievementMap['stage'],
        target: achievementMap['target']);
  }
}

class AchievementModel {
  final int id;
  final String title;
  final String description;
  final String pictureLink;
  final String category;
  final int stage;
  final int target;

  AchievementModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.pictureLink,
      required this.category,
      required this.stage,
      required this.target});
}

extension AchievementMapper on AchievementDto {
  AchievementModel toModel() => AchievementModel(
      id: id,
      title: title,
      description: description,
      pictureLink: pictureLink,
      category: category,
      stage: stage,
      target: target);
}

class AchievementInfoDto {
  final int id;
  final int userId;
  final int progress;
  final double progressPercent;
  final bool isCompleted;
  final AchievementDto achievementDto;

  AchievementInfoDto(
      {required this.id,
      required this.userId,
      required this.progress,
      required this.progressPercent,
      required this.isCompleted,
      required this.achievementDto});

  factory AchievementInfoDto.fromJson(
      {required Map<String, dynamic> achievementInfoMap}) {
    return AchievementInfoDto(
        id: achievementInfoMap['id'],
        userId: achievementInfoMap['user_id'],
        progress: achievementInfoMap['progress'],
        progressPercent: achievementInfoMap['progress_percent'],
        isCompleted: achievementInfoMap['is_completed'],
        achievementDto: AchievementDto.fromJson(
            achievementMap: achievementInfoMap['achievement']));
  }
  factory AchievementInfoDto.fromDB({required Achievement achievement}) {
    return AchievementInfoDto(
        id: achievement.id,
        userId: achievement.userId,
        progress: achievement.progress,
        progressPercent: achievement.progressPercent,
        isCompleted: achievement.isCompleted,
        achievementDto: AchievementDto(
            id: achievement.achievementId,
            title: achievement.title,
            description: achievement.description,
            pictureLink: achievement.pictureLink,
            category: achievement.category,
            stage: achievement.stage,
            target: achievement.target));
  }
}

class AchievementInfoModel {
  final int id;
  final int userId;
  final int progress;
  final double progressPercent;
  final bool isCompleted;
  final AchievementModel achievementModel;

  AchievementInfoModel(
      {required this.id,
      required this.userId,
      required this.progress,
      required this.progressPercent,
      required this.isCompleted,
      required this.achievementModel});
}

extension AchievementInfoMapper on AchievementInfoDto {
  AchievementInfoModel toModel() => AchievementInfoModel(
      id: id,
      userId: userId,
      progress: progress,
      progressPercent: progressPercent,
      isCompleted: isCompleted,
      achievementModel: achievementDto.toModel());
  AchievementDBCompanion toDB(
          {required AchievementCategory achievementCategory}) =>
      AchievementDBCompanion(
          id: Value(id),
          userId: Value(userId),
          categoryTitle: Value(achievementCategory.title),
          progress: Value(progress),
          progressPercent: Value(progressPercent),
          isCompleted: Value(isCompleted),
          achievementId: Value(achievementDto.id),
          title: Value(achievementDto.title),
          description: Value(achievementDto.description),
          pictureLink: Value(achievementDto.pictureLink),
          category: Value(achievementDto.category),
          stage: Value(achievementDto.stage),
          target: Value(achievementDto.target));
}
