import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uwords/features/global/widgets/custom_image_network_view.dart';
import 'package:uwords/features/profile/data/constants/profile_data_example.dart';
import 'package:uwords/features/profile/data/constants/profile_paddings.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/screens/achievements_screen.dart';
import 'package:uwords/features/profile/prezentation/screens/activities_screen.dart';
import 'package:uwords/features/profile/prezentation/screens/statistics_screen.dart';
import 'package:uwords/features/profile/prezentation/widgets/options_button.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  CarouselController carouselController = CarouselController();
  int _currentPage = 0;

  late List<String> pages = [
    AppLocalizations.of(context).statistics,
    AppLocalizations.of(context).activity,
    AppLocalizations.of(context).achievements
  ];

  onCarouselPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      _currentPage = index;
    });
    log(index.toString());
  }

  Widget _buildPage() {
    if (_currentPage == 0) {
      return const StatisticsScreen();
    } else if (_currentPage == 1) {
      return const ActivitiesScreen();
    } else {
      return const AchievementsScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.gradientBackgroundColor1,
            AppColors.gradientBackgroundColor2
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width *
                        ProfilePaddings.headerHorizontal,
                    top: ProfilePaddings.headerTop,
                    left: MediaQuery.of(context).size.width *
                        ProfilePaddings.headerHorizontal,
                    bottom: ProfilePaddings.headerBottom),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: ProfileSizes.optionsButtonSize,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageNetworkView(
                            imageSource: ProfileDataExample.userIconExample,
                            width: MediaQuery.of(context).size.width *
                                ProfileSizes.avatarSize,
                            height: MediaQuery.of(context).size.width *
                                ProfileSizes.avatarSize,
                            clipRadius: 50),
                        const SizedBox(height: 10),
                        const Text(
                          ProfileDataExample.userNameExample,
                          style: AppTextStyles.profileName,
                        ),
                      ],
                    ),
                    OptionsButton(
                      onPressed: () => {},
                    ),
                  ],
                ),
              ),
              CarouselSlider.builder(
                itemCount: pages.length,
                carouselController: carouselController,
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    height: 42.0,
                    viewportFraction: 0.32,
                    onPageChanged: (index, reason) =>
                        onCarouselPageChanged(index, reason)),
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Text(
                  pages[itemIndex],
                  style: _currentPage == itemIndex
                      ? AppTextStyles.carouselActive
                      : AppTextStyles.carouselUnActive,
                ),
              ),
              _buildPage(),
            ],
          ),
        ),
      ),
    );
  }
}
