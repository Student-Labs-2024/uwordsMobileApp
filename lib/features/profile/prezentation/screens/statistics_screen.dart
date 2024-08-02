import 'package:flutter/material.dart';
import 'package:uwords/features/profile/data/constants/profile_data_example.dart';
import 'package:uwords/features/profile/data/constants/profile_paddings.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/widgets/progress_word_tile.dart';
import 'package:uwords/features/profile/prezentation/widgets/statistic_card.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width *
              ProfilePaddings.headerHorizontal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: ProfileSizes.statisticSpacer,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatisticCard(
                image: AppImageSource.onfireIcon,
                title: '${ProfileDataExample.exampleMetrics[0]}',
                subtitle: AppLocalizations.of(context).daysOnFireCard,
                onPressed: () => {},
              ),
              StatisticCard(
                image: AppImageSource.wordsLearnedIcon,
                title: '${ProfileDataExample.exampleMetrics[1]}',
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
                title: AppLocalizations.of(context)
                    .hours(ProfileDataExample.exampleMetrics[2]),
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
          Padding(
            padding: const EdgeInsets.only(
                top: ProfilePaddings.subtitleHorizontal,
                bottom: ProfilePaddings.subtitleBot),
            child: Text(
              AppLocalizations.of(context).almostLearned,
              style: AppTextStyles.profileSubtitle,
            ),
          ),
          Container(
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(
                    ProfilePaddings.progressWordTileWrapper),
                child: Column(
                  children: ProfileDataExample.exampleWords
                      .map(
                        (e) => ProgressWordTile(wordInfo: e),
                      )
                      .toList(),
                ),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * ProfileSizes.endSpacer,
          ),
        ],
      ),
    );
  }
}
