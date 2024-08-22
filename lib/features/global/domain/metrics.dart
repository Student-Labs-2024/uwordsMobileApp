import 'package:drift/drift.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

class MetricsDto {
  final int userId;
  final int alltimeUserwordsAmount;
  final int alltimeLearnedAmount;
  final double alltimeLearnedPercents;
  final int alltimeSpeechSeconds;
  final int alltimeVideoSeconds;
  final int days;
  MetricsDto({
    required this.userId,
    required this.alltimeUserwordsAmount,
    required this.alltimeLearnedAmount,
    required this.alltimeLearnedPercents,
    required this.alltimeSpeechSeconds,
    required this.alltimeVideoSeconds,
    required this.days,
  });

  factory MetricsDto.fromJson({required Map<String, dynamic> metricMap}) {
    return MetricsDto(
        userId: metricMap['user_id'],
        alltimeUserwordsAmount: metricMap['alltime_userwords_amount'],
        alltimeLearnedAmount: metricMap['alltime_learned_amount'],
        alltimeLearnedPercents: metricMap['alltime_learned_percents'],
        alltimeSpeechSeconds: metricMap['alltime_speech_seconds'],
        alltimeVideoSeconds: metricMap['alltime_video_seconds'],
        days: metricMap['days']);
  }

  factory MetricsDto.fromDB({required Metric metric}) {
    return MetricsDto(
      userId: metric.userId,
      alltimeUserwordsAmount: metric.alltimeUserwordsAmount,
      alltimeLearnedAmount: metric.alltimeLearnedAmount,
      alltimeLearnedPercents: metric.alltimeLearnedPercents,
      alltimeSpeechSeconds: metric.alltimeSpeechSeconds,
      alltimeVideoSeconds: metric.alltimeVideoSeconds,
      days: metric.days,
    );
  }
}

class Metrics {
  final int userId;
  final int alltimeUserwordsAmount;
  final int alltimeLearnedAmount;
  final double alltimeLearnedPercents;
  final int alltimeSpeechSeconds;
  final int alltimeVideoSeconds;
  final int days;
  Metrics({
    required this.userId,
    required this.alltimeUserwordsAmount,
    required this.alltimeLearnedAmount,
    required this.alltimeLearnedPercents,
    required this.alltimeSpeechSeconds,
    required this.alltimeVideoSeconds,
    required this.days,
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
        days: days,
      );
  MetricDBCompanion toDB() => MetricDBCompanion(
        userId: Value(userId),
        alltimeUserwordsAmount: Value(alltimeUserwordsAmount),
        alltimeLearnedAmount: Value(alltimeLearnedAmount),
        alltimeLearnedPercents: Value(alltimeLearnedPercents),
        alltimeSpeechSeconds: Value(alltimeSpeechSeconds),
        alltimeVideoSeconds: Value(alltimeVideoSeconds),
        days: Value(days),
      );
}
