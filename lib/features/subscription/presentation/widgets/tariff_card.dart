import 'package:flutter/material.dart';
import 'package:uwords/features/subscription/data/subscription_consts.dart';
import 'package:uwords/features/subscription/subscription_styles.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';

class TariffCard extends StatelessWidget {
  final String name;
  final String priceStr;
  final String? freePeriodStr;
  final String comment;
  final int? discount;
  final String? previousPriceStr;
  final bool isSelected;
  final Function(int index) onTap;
  final int index;

  const TariffCard({
    super.key,
    required this.name,
    required this.priceStr,
    required this.freePeriodStr,
    required this.comment,
    required this.discount,
    required this.previousPriceStr,
    required this.isSelected,
    required this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: Container(
        height: SubscriptionConsts.containerHeight,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(SubscriptionConsts.borderRadius),
          boxShadow: const [SubscriptionShadow.shadow],
        ),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(SubscriptionConsts.fifteenPadding),
            child: Stack(children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: SubscriptionsStyles.name),
                        const SizedBox(
                            height:
                                SubscriptionConsts.biggerThanSmallestPadding),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(priceStr, style: SubscriptionsStyles.price),
                            const SizedBox(
                                width: SubscriptionConsts
                                    .biggerThanSmallestPadding),
                            if (previousPriceStr != null)
                              Text(
                                previousPriceStr!,
                                style: AppTextStyles.oldPrice,
                              )
                            else
                              const SizedBox(),
                          ],
                        ),
                        const SizedBox(
                            height: SubscriptionConsts.smallestPadding),
                        if (freePeriodStr != null)
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: SubscriptionConsts.smallestPadding,
                              ),
                              child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    gradient: AppColors
                                        .backgroundOnboardingGradientWithOpacity015,
                                    borderRadius: BorderRadius.circular(
                                        SubscriptionConsts
                                            .smallestBorderRadius),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        SubscriptionConsts.smallestPadding),
                                    child: ShaderMask(
                                      blendMode: BlendMode.srcIn,
                                      shaderCallback: (bounds) => AppColors
                                          .backgroundOnboardingGradient
                                          .createShader(
                                        Rect.zero,
                                      ),
                                      child: Text(freePeriodStr!,
                                          style: AppTextStyles.freeTimeText),
                                    ),
                                  ))),
                        const SizedBox(
                            height: SubscriptionConsts.smallestPadding),
                        Text(comment, style: SubscriptionsStyles.comment),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: SubscriptionConsts.iconSize,
                  height: SubscriptionConsts.iconSize,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      SizedBox(
                        width: SubscriptionConsts.biggestPadding,
                        height: SubscriptionConsts.biggestPadding,
                        child: Center(
                          child: DecoratedBox(
                            decoration: ShapeDecoration(
                                shape: const CircleBorder(),
                                color: isSelected
                                    ? AppColors.whiteColor
                                    : AppColors.greyIconColor),
                            child: Icon(
                              isSelected ? Icons.check_circle : Icons.circle,
                              color: isSelected
                                  ? AppColors.blueColor
                                  : AppColors.whiteColor,
                              size: SubscriptionConsts.normalSpace,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          if (discount != null)
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: SubscriptionConsts.smallAngleWidth,
                height: SubscriptionConsts.smallAngleHeight,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(SubscriptionConsts.borderRadius),
                        bottomRight:
                            Radius.circular(SubscriptionConsts.borderRadius)),
                    gradient: AppColors.backgroundOnboardingGradient,
                  ),
                  child: Center(
                    child: Text(
                      "-$discount%",
                      style: SubscriptionsStyles.discount,
                    ),
                  ),
                ),
              ),
            )
        ]),
      ),
    );
  }
}
