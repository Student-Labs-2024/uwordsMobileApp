import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/global/data/models/pair_model.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/global/domain/metrics.dart';
import 'package:uwords/features/global/presentation/widgets/constants/words_localization.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/profile/prezentation/constants/other_profile_constants.dart';
import 'package:uwords/features/profile/data/constants/profile_data_example.dart';
import 'package:uwords/features/profile/prezentation/constants/profile_paddings.dart';
import 'package:uwords/features/profile/prezentation/constants/profile_shadows.dart';
import 'package:uwords/features/profile/prezentation/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/widgets/progress_category.dart';
import 'package:uwords/features/profile/prezentation/widgets/statistic_card.dart';
import 'package:uwords/features/profile/prezentation/widgets/subscription_view.dart';
import 'package:uwords/features/subscription/bloc/subscription_bloc/subscription_bloc.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;

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
    if (percent == OtherProfileConstants.percentFor100Icon) {
      return AppImageSource.precision100Icon;
    } else if (percent >= OtherProfileConstants.percentFor70Icon) {
      return AppImageSource.precision70Icon;
    } else if (percent >= OtherProfileConstants.percentFor50Icon) {
      return AppImageSource.precision50Icon;
    } else if (percent >= OtherProfileConstants.percentFor20Icon) {
      return AppImageSource.precision20Icon;
    } else {
      return AppImageSource.precision0Icon;
    }
  }

  @override
  void initState() {
    context
        .read<SubscriptionBloc>()
        .add(const SubscriptionEvent.isSubscriptionActive());
    Pair<double, int> timeData = OtherProfileConstants.getTimeAndTypeTime(
        widget.metrics.alltimeSpeechSeconds +
            widget.metrics.alltimeVideoSeconds);
    time = timeData.first;
    timeType = timeData.second;
    super.initState();
  }

  double time = 0;
  int timeType = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width *
              ProfilePaddings.headerHorizontal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<SubscriptionBloc, SubscriptionState>(
              builder: (BuildContext context, SubscriptionState state) {
            return state.maybeWhen(
              subscriptionStatus: (status, date) => SubscriptionView(
                haveSubscription: status,
                updateDate: date,
                onPressed: () {
                  context.push("/subscription");
                },
              ),
              loading: () => Container(
                decoration: fis.BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius:
                        BorderRadius.circular(GlobalSizes.borderRadiusMedium),
                    boxShadow: ProfileShadows.statisticCard),
                child: const Center(
                    child: CircularProgressIndicator(
                  color: AppColors.darkMainColor,
                )),
              ),
              orElse: () => Container(
                decoration: fis.BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius:
                        BorderRadius.circular(GlobalSizes.borderRadiusMedium),
                    boxShadow: ProfileShadows.statisticCard),
                child: Center(
                    child: Text(AppLocalizations.of(context).unknowError)),
              ),
            );
          }),
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
                subtitle: pluralizeWords(widget.metrics.alltimeLearnedAmount),
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
                title: AppLocalizations.of(context).hours(time, timeType),
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
          if (widget.almostLearned.isEmpty && widget.learned.isEmpty) ...[
            const SizedBox(
              height: ProfilePaddings.haventStatisticsTop,
            ),
            Center(
              child: Text(
                AppLocalizations.of(context).haveNoThemeInStatistics,
                style: AppTextStyles.haventStatistics,
                textAlign: TextAlign.center,
              ),
            ),
          ],
          SizedBox(
            height: MediaQuery.of(context).size.height * ProfileSizes.endSpacer,
          ),
        ],
      ),
    );
  }
}
