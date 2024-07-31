import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/global/widgets/custom_image_view.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/profile/data/constants/profile_paddings.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/widgets/options_button.dart';
import 'package:uwords/features/profile/prezentation/widgets/progress_word_tile.dart';
import 'package:uwords/features/profile/prezentation/widgets/statistic_card.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  void initState() {
    super.initState();
  }

  final List<WordInfo> exampleWords = [
    WordInfo(
        id: 0,
        word: WordModel(
            id: 0,
            enValue: 'Street',
            ruValue: 'Улица',
            audioLink: 'audioLink',
            pictureLink:
                'https://get.wallhere.com/photo/street-light-city-street-cityscape-car-urban-building-sky-winter-road-house-evening-morning-traffic-town-highway-transport-Manhattan-metropolis-asphalt-infrastructure-pedestrian-tree-downtown-plant-newyork-nyc-landmark-daytime-suburb-lane-urban-area-woody-plant-metropolitan-area-neighbourhood-residential-area-road-surface-cabs-thoroughfare-885905.jpg'),
        userId: 0,
        latestStudy: null,
        frequency: 0,
        progress: 0),
    WordInfo(
        id: 1,
        word: WordModel(
            id: 1,
            enValue: 'Mountain',
            ruValue: 'Гора',
            audioLink: 'audioLink',
            pictureLink:
                'https://get.wallhere.com/photo/landscape-mountains-nature-snow-winter-mountain-pass-Alps-summit-plateau-ridge-mountain-weather-season-Massif-adventure-mountainous-landforms-landform-geographical-feature-geological-phenomenon-mountain-range-mountaineering-cirque-288828.jpg'),
        userId: 1,
        latestStudy: null,
        frequency: 0,
        progress: 20),
    WordInfo(
        id: 2,
        word: WordModel(
            id: 2,
            enValue: 'Field',
            ruValue: 'Поле',
            audioLink: 'audioLink',
            pictureLink:
                'https://img.goodfon.com/original/2048x1363/a/9b/leto-zelen-les-pole-trava-derevia-nebo-solntse-hdr.jpg'),
        userId: 2,
        latestStudy: null,
        frequency: 0,
        progress: 40),
    WordInfo(
        id: 3,
        word: WordModel(
            id: 3,
            enValue: 'Lake',
            ruValue: 'Озеро',
            audioLink: 'audioLink',
            pictureLink:
                'https://s1.1zoom.me/big0/21/Scenery_Mountains_Lake_489390.jpg'),
        userId: 3,
        latestStudy: null,
        frequency: 0,
        progress: 60),
    WordInfo(
        id: 4,
        word: WordModel(
            id: 4,
            enValue: 'Forest',
            ruValue: 'Лес',
            audioLink: 'audioLink',
            pictureLink: 'https://s1.1zoom.me/big3/196/396241-svetik.jpg'),
        userId: 4,
        latestStudy: null,
        frequency: 0,
        progress: 80),
    WordInfo(
        id: 5,
        word: WordModel(
            id: 5,
            enValue: 'Winter',
            ruValue: 'Зима',
            audioLink: 'audioLink',
            pictureLink:
                'https://img3.akspic.ru/crops/7/3/6/1/4/141637/141637-sneg-vetv-sinij-nebo-zimnyaya_doroga-2560x1440.jpg'),
        userId: 5,
        latestStudy: null,
        frequency: 0,
        progress: 100),
  ];

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
                title: '12',
                subtitle: 'В ударе',
                onPressed: () => {},
              ),
              StatisticCard(
                image: AppImageSource.wordsLearnedIcon,
                title: '55',
                subtitle: 'Слов',
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
                title: '1ч',
                subtitle: 'Записи',
                onPressed: () => {},
              ),
              StatisticCard(
                image: AppImageSource.precisionIcon,
                title: '83%',
                subtitle: 'Точность',
                onPressed: () => {},
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 15),
            child: Text(
              'Почти изучено',
              style: AppTextStyles.statisticsWordTileTitle,
            ),
          ),
          Container(
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: exampleWords
                      .map(
                        (e) => ProgressWordTile(wordInfo: e),
                      )
                      .toList(),
                ),
              ))
        ],
      ),
    );
  }
}
