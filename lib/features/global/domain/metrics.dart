import 'package:drift/drift.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

class MetricsDto {
  final int userId;
  final int alltimeUserwordsAmount;
  final int alltimeLearnedAmount;
  final double alltimeLearnedPercents;
  final int alltimeSpeechSeconds;
  final int alltimeVideoSeconds;
  final int wordsAmount;
  final int userwordsAmount;
  final double learnedPercents;
  final int speechSeconds;
  final int videoSeconds;
  MetricsDto({
    required this.userId,
    required this.alltimeUserwordsAmount,
    required this.alltimeLearnedAmount,
    required this.alltimeLearnedPercents,
    required this.alltimeSpeechSeconds,
    required this.alltimeVideoSeconds,
    required this.wordsAmount,
    required this.userwordsAmount,
    required this.learnedPercents,
    required this.speechSeconds,
    required this.videoSeconds,
  });

  factory MetricsDto.fromJson({required Map<String, dynamic> metricMap}) {
    return MetricsDto(
        userId: metricMap['user_id'],
        alltimeUserwordsAmount: metricMap['alltime_userwords_amount'],
        alltimeLearnedAmount: metricMap['alltime_learned_amount'],
        alltimeLearnedPercents: metricMap['alltime_learned_percents'],
        alltimeSpeechSeconds: metricMap['alltime_speech_seconds'],
        alltimeVideoSeconds: metricMap['alltime_video_seconds'],
        wordsAmount: metricMap['words_amount'],
        userwordsAmount: metricMap['learned_amount'],
        learnedPercents: metricMap['learned_percents'],
        speechSeconds: metricMap['speech_seconds'],
        videoSeconds: metricMap['video_seconds']);
  }

  factory MetricsDto.fromDB({required Metric metric}) {
    return MetricsDto(
        userId: metric.userId,
        alltimeUserwordsAmount: metric.alltimeUserwordsAmount,
        alltimeLearnedAmount: metric.alltimeLearnedAmount,
        alltimeLearnedPercents: metric.alltimeLearnedPercents,
        alltimeSpeechSeconds: metric.alltimeSpeechSeconds,
        alltimeVideoSeconds: metric.alltimeVideoSeconds,
        wordsAmount: metric.wordsAmount,
        userwordsAmount: metric.userwordsAmount,
        learnedPercents: metric.learnedPercents,
        speechSeconds: metric.speechSeconds,
        videoSeconds: metric.videoSeconds);
  }
}

class Metrics {
  final int userId;
  final int alltimeUserwordsAmount;
  final int alltimeLearnedAmount;
  final double alltimeLearnedPercents;
  final int alltimeSpeechSeconds;
  final int alltimeVideoSeconds;
  final int wordsAmount;
  final int userwordsAmount;
  final double learnedPercents;
  final int speechSeconds;
  final int videoSeconds;
  Metrics({
    required this.userId,
    required this.alltimeUserwordsAmount,
    required this.alltimeLearnedAmount,
    required this.alltimeLearnedPercents,
    required this.alltimeSpeechSeconds,
    required this.alltimeVideoSeconds,
    required this.wordsAmount,
    required this.userwordsAmount,
    required this.learnedPercents,
    required this.speechSeconds,
    required this.videoSeconds,
  });
}

extension MetricsMapper on MetricsDto {
  Metrics toModel() => Metrics(
      userId: userId,
      alltimeUserwordsAmount: alltimeUserwordsAmount,
      alltimeLearnedAmount: alltimeLearnedAmount,
      alltimeLearnedPercents: alltimeLearnedPercents,
      alltimeSpeechSeconds: alltimeSpeechSeconds,
      alltimeVideoSeconds: alltimeVideoSeconds,
      wordsAmount: wordsAmount,
      userwordsAmount: userwordsAmount,
      learnedPercents: learnedPercents,
      speechSeconds: speechSeconds,
      videoSeconds: videoSeconds);
  MetricDBCompanion toDB() => MetricDBCompanion(
      userId: Value(userId),
      alltimeUserwordsAmount: Value(alltimeUserwordsAmount),
      alltimeLearnedAmount: Value(alltimeLearnedAmount),
      alltimeLearnedPercents: Value(alltimeLearnedPercents),
      alltimeSpeechSeconds: Value(alltimeSpeechSeconds),
      alltimeVideoSeconds: Value(alltimeVideoSeconds),
      wordsAmount: Value(wordsAmount),
      userwordsAmount: Value(userwordsAmount),
      learnedPercents: Value(learnedPercents),
      speechSeconds: Value(speechSeconds),
      videoSeconds: Value(videoSeconds),
    );
}