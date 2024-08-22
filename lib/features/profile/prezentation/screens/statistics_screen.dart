import 'package:flutter/material.dart';
import 'package:uwords/features/global/domain/metrics.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/profile/data/constants/profile_data_example.dart';
import 'package:uwords/features/profile/data/constants/profile_paddings.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/widgets/progress_category.dart';
import 'package:uwords/features/profile/prezentation/widgets/statistic_card.dart';
import 'package:uwords/features/profile/prezentation/widgets/subscription_view.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen(
      {super.key,
      required this.learned,
      required this.almostLearned,
      required this.metrics});

  final List<Subtopic> learned;
  final List<Subtopic> almostLearned;
  final Metrics metrics;
  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  String getPrecisionIcon(int percent) {
    if (percent == 100) {
      return AppImageSource.precision100Icon;
    } else if (percent >= 70) {
      return AppImageSource.precision70Icon;
    } else if (percent >= 50) {
      return AppImageSource.precision50Icon;
    } else if (percent >= 20) {
      return AppImageSource.precision20Icon;
    } else {
      return AppImageSource.precision0Icon;
    }
  }

  bool haveSubscription = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width *
              ProfilePaddings.headerHorizontal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubscriptionView(
            image: haveSubscription
                ? AppImageSource.subscriptionActive
                : AppImageSource.subscriptionInactive,
            title: haveSubscription
                ? AppLocalizations.of(context).subscriptionIsActive
                : AppLocalizations.of(context).subscriptionIsNotActive,
            subtitle: haveSubscription
                ? AppLocalizations.of(context).upgradeSubscription('03.10.2024')
                : AppLocalizations.of(context).subscribe,
            onPressed: () {},
          ),
          const SizedBox(
            height: ProfilePaddings.subscriptionBottom,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatisticCard(
                image: AppImageSource.onfireIcon,
                title: '${widget.metrics.days}',
                subtitle: AppLocalizations.of(context).daysOnFireCard,
                onPressed: () => {},
              ),
              StatisticCard(
                image: AppImageSource.wordsLearnedIcon,
                title: '${widget.metrics.alltimeLearnedAmount}',
                subtitle: AppLocalizations.of(context).learnedWordsCard,
                onPressed: () => {},
              ),
            ],
          ),
          const SizedBox(
            height: ProfileSizes.statisticSpacer,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatisticCard(
                image: AppImageSource.recordTimeIcon,
                title: AppLocalizations.of(context).hours(
                    (widget.metrics.alltimeSpeechSeconds +
                            widget.metrics.alltimeVideoSeconds) /
                        3600),
                subtitle: AppLocalizations.of(context).recordTimeCard,
                onPressed: () => {},
              ),
              StatisticCard(
                image: getPrecisionIcon(83),
                title: '${ProfileDataExample.exampleMetrics[3]}%',
                subtitle: AppLocalizations.of(context).precisionCard,
                onPressed: () => {},
              ),
            ],
          ),
          if (widget.almostLearned.isNotEmpty)
            ProgressCategory(
              subtopics: widget.almostLearned,
              title: AppLocalizations.of(context).almostLearned,
            ),
          if (widget.learned.isNotEmpty)
            ProgressCategory(
              subtopics: widget.learned,
              title: AppLocalizations.of(context).learned,
            ),
          //if (widget.almostLearned.isEmpty && widget.learned.isEmpty)
          Center(
            child: Text(
              AppLocalizations.of(context).haveNoThemeInStatistics,
              style: AppTextStyles.profileNavNotActive,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * ProfileSizes.endSpacer,
          ),
        ],
      ),
    );
  }
}
