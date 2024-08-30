import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/global/presentation/widgets/custom_image_network_view.dart';
import 'package:uwords/features/grade/bloc/grade_bloc.dart';
import 'package:uwords/features/grade/presentation/widgets/grade_bottom_sheet.dart';
import 'package:uwords/features/profile/bloc/profile_bloc.dart';
import 'package:uwords/features/profile/prezentation/constants/other_profile_constants.dart';
import 'package:uwords/features/profile/prezentation/constants/profile_paddings.dart';
import 'package:uwords/features/profile/prezentation/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/screens/achievements_screen.dart';
import 'package:uwords/features/profile/prezentation/screens/statistics_screen.dart';
import 'package:uwords/features/profile/prezentation/widgets/nav_button.dart';
import 'package:uwords/features/profile/prezentation/widgets/options_button.dart';
import 'package:uwords/features/subscription/bloc/subscription_bloc/subscription_bloc.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/image_source.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(const ProfileEvent.getUserInfo());

    context.read<GradeBloc>().add(
          const GradeEvent.open(),
        );
  }

  String currentScreen = OtherProfileConstants.staticticsScreen;

  void changeNavState(String buttonTag) {
    if (currentScreen == buttonTag) return;
    setState(() {
      currentScreen = buttonTag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.backgroundGradient,
        ),
        child: Stack(
          children: [
            SafeArea(
              child: BlocBuilder<ProfileBloc, ProfileState>(
                builder: (BuildContext context, ProfileState state) {
                  return state.maybeWhen(
                    gotInfo: (userName, avatarUrl, almostLearned, learned,
                        achievements, metrics) {
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
                                    BlocBuilder<SubscriptionBloc,
                                        SubscriptionState>(
                                      builder: (context, state) {
                                        return state.maybeWhen(
                                          orElse: () => const SizedBox(),
                                          subscriptionStatus:
                                              (isActive, date) => DecoratedBox(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      GlobalSizes
                                                          .borderRadiusCircle),
                                              border: isActive
                                                  ? const GradientBoxBorder(
                                                      gradient: AppColors
                                                          .purpleGradient,
                                                      width: ProfileSizes
                                                          .avatarBorder,
                                                    )
                                                  : null,
                                            ),
                                            child: avatarUrl == ''
                                                ? ClipRRect(
                                                    borderRadius: BorderRadius
                                                        .circular(GlobalSizes
                                                            .borderRadiusCircle),
                                                    child: Image.asset(
                                                      AppImageSource
                                                          .emptyProfile,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              ProfileSizes
                                                                  .avatarSize,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              ProfileSizes
                                                                  .avatarSize,
                                                    ))
                                                : CustomImageNetworkView(
                                                    imageSource: avatarUrl,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            ProfileSizes
                                                                .avatarSize,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            ProfileSizes
                                                                .avatarSize,
                                                    clipRadius: GlobalSizes
                                                        .borderRadiusCircle),
                                          ),
                                        );
                                      },
                                    ),
                                    const SizedBox(
                                        height: ProfileSizes.headerSpacer),
                                    Text(
                                      userName == ''
                                          ? OtherProfileConstants.haventName
                                          : userName,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              NavButton(
                                text: AppLocalizations.of(context).statistics,
                                onPressed: () => changeNavState(
                                    OtherProfileConstants.staticticsScreen),
                                isSelected: currentScreen ==
                                        OtherProfileConstants.staticticsScreen
                                    ? true
                                    : false,
                              ),
                              const SizedBox(
                                width: ProfileSizes.navButtonSpacer,
                              ),
                              NavButton(
                                text: AppLocalizations.of(context).achievements,
                                onPressed: () => changeNavState(
                                    OtherProfileConstants.achievementsScreen),
                                isSelected: currentScreen ==
                                        OtherProfileConstants.achievementsScreen
                                    ? true
                                    : false,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: ProfilePaddings.navButtonBottom,
                          ),
                          currentScreen ==
                                  OtherProfileConstants.staticticsScreen
                              ? StatisticsScreen(
                                  learned: learned,
                                  almostLearned: almostLearned,
                                  metrics: metrics,
                                )
                              : AchievementsScreen(achievements: achievements),
                        ],
                      );
                    },
                    orElse: () => const Center(
                      child: CircularProgressIndicator(
                        color: AppColors.darkMainColor,
                      ),
                    ),
                  );
                },
              ),
            ),
            BlocBuilder<GradeBloc, GradeState>(
                builder: (BuildContext context, GradeState state) =>
                    state.maybeWhen(
                        enabled: () => const GradeBottomSheet(),
                        orElse: () => const SizedBox())),
          ],
        ),
      ),
    );
  }
}
