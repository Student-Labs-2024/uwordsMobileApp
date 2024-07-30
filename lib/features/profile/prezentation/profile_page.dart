import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/global/widgets/custom_image_view.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/widgets/options_button.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
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
                    right: MediaQuery.of(context).size.width * 24 / 375,
                    top: 30,
                    left: MediaQuery.of(context).size.width * 24 / 375),
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
                        CustomImageView(
                            imageSource:
                                'https://i.pinimg.com/originals/86/e9/b5/86e9b52d3cfb854b855faa0e7dabfb74.jpg',
                            width: MediaQuery.of(context).size.width *
                                ProfileSizes.avatarSize,
                            height: MediaQuery.of(context).size.width *
                                ProfileSizes.avatarSize,
                            clipRadius: 50),
                        const SizedBox(height: 10),
                        const Text(
                          'KatzeKet',
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
            ],
          ),
        ),
      ),
    );
  }
}
