import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/global/widgets/custom_image_network_view.dart';
import 'package:uwords/features/profile/bloc/profile_bloc.dart';
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

  @override
  void initState() {
    context.read<ProfileBloc>().add(const ProfileEvent.getUserInfo());
    super.initState();
  }

  onCarouselPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      _currentPage = index;
    });
    context.read<ProfileBloc>().add(ProfileEvent.setScreen(index));
    log(index.toString());
  }

  String currentUserName = ProfileDataExample.userNameExample;
  String currentUserAvatarUrl = ProfileDataExample.userIconExample;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.backgroundGradient,
        ),
        child: SafeArea(
          child: BlocConsumer<ProfileBloc, ProfileState>(
            listener: (context, state) {
              state.whenOrNull(
                userGot: (userName, avatarUrl) {
                  setState(() {
                    if (userName != '') {
                      currentUserName = userName;
                    }
                    if (avatarUrl != '') {
                      currentUserAvatarUrl = avatarUrl;
                    }
                  });
                },
              );
            },
            builder: (BuildContext context, ProfileState state) {
              state.whenOrNull(initial: () {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.darkMainColor,
                  ),
                );
              });
              return ListView(
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
                                imageSource: currentUserAvatarUrl,
                                width: MediaQuery.of(context).size.width *
                                    ProfileSizes.avatarSize,
                                height: MediaQuery.of(context).size.width *
                                    ProfileSizes.avatarSize,
                                clipRadius: 50),
                            const SizedBox(height: ProfileSizes.headerSpacer),
                            Text(
                              currentUserName,
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
                        height: ProfileSizes.carouselHeight,
                        viewportFraction: 0.33,
                        onPageChanged: (index, reason) =>
                            onCarouselPageChanged(index, reason)),
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Text(
                      pages[itemIndex],
                      style: _currentPage == itemIndex
                          ? AppTextStyles.carouselActive
                          : AppTextStyles.carouselUnActive,
                    ),
                  ),
                  state.maybeWhen(
                      statisticsScreen: () => const StatisticsScreen(),
                      achievementsScreen: () => const AchievementsScreen(),
                      activitiesScreen: () => const ActivitiesScreen(),
                      orElse: () => const Center(
                            child: CircularProgressIndicator(
                              color: AppColors.darkMainColor,
                            ),
                          )),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
