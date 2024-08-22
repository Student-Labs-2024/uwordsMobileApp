import 'package:flutter/material.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/profile/data/constants/other_profile_constants.dart';
import 'package:uwords/features/profile/data/constants/profile_paddings.dart';
import 'package:uwords/features/profile/data/constants/profile_shadows.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/image_source.dart';

class SubscriptionView extends StatelessWidget {
  const SubscriptionView(
      {super.key,
      required this.onPressed,
      required this.haveSubscription,
      this.updateDate});
  final VoidCallback onPressed;
  final bool haveSubscription;
  final String? updateDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: fis.BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(GlobalSizes.borderRadiusMedium),
          boxShadow: ProfileShadows.statisticCard),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(GlobalSizes.borderRadiusMedium),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: ProfilePaddings.cardHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                haveSubscription
                    ? AppImageSource.subscriptionActive
                    : AppImageSource.subscriptionInactive,
                height: MediaQuery.of(context).size.width *
                    ProfileSizes.statisticCardIconWidth,
              ),
              const SizedBox(
                width: ProfileSizes.statisticSpacer,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      haveSubscription
                          ? AppLocalizations.of(context).subscriptionIsActive
                          : AppLocalizations.of(context)
                              .subscriptionIsNotActive,
                      style: AppTextStyles.subscriptionViewTitle,
                    ),
                    Text(
                      haveSubscription
                          ? AppLocalizations.of(context).upgradeSubscription(
                              updateDate ??
                                  OtherProfileConstants.mockSubscriptionData)
                          : AppLocalizations.of(context).subscribe,
                      softWrap: true,
                      style: AppTextStyles.subscriptionViewSubtitle,
                    )
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
