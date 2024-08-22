import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/profile/data/constants/profile_shadows.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class AnimatedSubtopic extends StatefulWidget {
  const AnimatedSubtopic({super.key});

  @override
  State<AnimatedSubtopic> createState() => _AnimatedSubtopicState();
}

class _AnimatedSubtopicState extends State<AnimatedSubtopic> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startRepeatingAnimation();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startRepeatingAnimation() {
    _timer = Timer.periodic(
        const Duration(
            milliseconds: OtherLearnConstants
                .animatedSubtopicProgressRepeatMiliseconds), (timer) {
      animate();
    });
  }

  int secondsSum =
      OtherLearnConstants.animatedSubtopicProgressSmallSecondsPart * 2 +
          OtherLearnConstants.animatedSubtopicProgressMediumSecondsPart;
  Duration duration = Duration.zero;
  LinearGradient backGradient = AppColors.progressBarGreenGradientBack;
  LinearGradient progressGradient = AppColors.progressBarRedGradient;
  double progressWidth = 0;
  int animatedSubtopicProgress = 0;
  int animatedSubtopicIconProgress = 0;

  void animate() async {
    setState(() {
      duration = Duration(seconds: secondsSum);
      backGradient = AppColors.progressBarGreenGradientBack;
      progressGradient = AppColors.progressBarGreenGradient;
      progressWidth = MediaQuery.of(context).size.width *
          LearnSizes.animatedSubtopicWidth *
          LearnSizes.animatedSubtopicProgressbarWidthModifier;
      animatedSubtopicProgress =
          OtherLearnConstants.animatedSubtopicProgressMedium;
    });
    await Future.delayed(const Duration(
        seconds:
            OtherLearnConstants.animatedSubtopicProgressMediumSecondsPart));
    setState(() {
      animatedSubtopicIconProgress =
          OtherLearnConstants.animatedSubtopicProgressMedium;
      animatedSubtopicProgress =
          OtherLearnConstants.animatedSubtopicProgressMax;
    });
    await Future.delayed(const Duration(
        seconds: OtherLearnConstants.animatedSubtopicProgressSmallSecondsPart));
    setState(() {
      animatedSubtopicIconProgress =
          OtherLearnConstants.animatedSubtopicProgressMax;
    });
    await Future.delayed(const Duration(
        seconds: OtherLearnConstants.animatedSubtopicProgressSmallSecondsPart));
    setState(() {
      duration = Duration.zero;
      backGradient = AppColors.progressBarRedGradientBack;
      progressGradient = AppColors.progressBarRedGradient;
      progressWidth = 0;
      animatedSubtopicProgress = 0;
      animatedSubtopicIconProgress = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double maximumWidth = MediaQuery.of(context).size.width;
    double maximumHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: maximumWidth * LearnSizes.animatedSubtopicWidth,
      height: maximumHeight * LearnSizes.animatedSubtopicHeight,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: ProfileShadows.statisticCard,
          shape: BoxShape.rectangle,
        ),
        child: InkWell(
          onTap: () {
            animate();
          },
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: maximumHeight *
                        LearnPaddings.animatedSubtopicContentTop,
                    left: maximumWidth *
                        LearnPaddings.animatedSubtopicContentLeft),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(OtherLearnConstants.animatedSubtopicTitle,
                        style: AppTextStyles.animatedSubtopicCardName),
                    const SizedBox(height: LearnPaddings.smallestEmptySpace),
                    Text(
                      '${OtherLearnConstants.animatedSubtopicWordsCount} ${AppLocalizations.of(context).learnedWordsCard}',
                      style: AppTextStyles.animatedSubtopicCardWords,
                    ),
                    SizedBox(
                        height: maximumHeight *
                            LearnPaddings.animatedSubtopicProgressTop),
                    Stack(
                      children: [
                        AnimatedContainer(
                          duration: duration,
                          width: maximumWidth *
                              LearnSizes.animatedSubtopicWidth *
                              LearnSizes
                                  .animatedSubtopicProgressbarWidthModifier,
                          height: GlobalSizes.progressIndicatorHeight,
                          decoration: BoxDecoration(
                            gradient: backGradient,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        AnimatedContainer(
                          duration: duration,
                          height: GlobalSizes.progressIndicatorHeight,
                          width: progressWidth,
                          decoration: BoxDecoration(
                            gradient: progressGradient,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: AnimatedContainer(
                  duration: duration.inSeconds == secondsSum
                      ? const Duration(
                          seconds: OtherLearnConstants
                              .animatedSubtopicProgressMediumSecondsPart)
                      : Duration.zero,
                  width: maximumWidth * LearnSizes.animatedSubtopicBackWidth,
                  height: maximumHeight * LearnSizes.animatedSubtopicBackHeight,
                  margin: const EdgeInsets.only(
                      top: LearnPaddings.normalEdgeInsets),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(GlobalSizes.borderRadiusMedium),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(
                        animatedSubtopicProgress <=
                                OtherLearnConstants.zeroProgress
                            ? AppImageSource.greyAngleButton
                            : animatedSubtopicProgress >=
                                    OtherLearnConstants.halfProgressBar
                                ? AppImageSource.blueAngleButton
                                : AppImageSource.redAngleButton,
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: maximumWidth *
                              LearnPaddings.animatedSubtopicIconRight,
                          bottom: maximumHeight *
                              LearnPaddings.animatedSubtopicIconBottom),
                      child: ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) {
                          return animatedSubtopicIconProgress <=
                                  OtherLearnConstants.zeroProgress
                              ? AppColors.greyIconGradient.createShader(bounds)
                              : animatedSubtopicIconProgress >=
                                      OtherLearnConstants.halfProgressBar
                                  ? AppColors.blueIconGradient
                                      .createShader(bounds)
                                  : AppColors.redIconGradient
                                      .createShader(bounds);
                        },
                        child: SvgPicture.asset(
                          width: maximumWidth *
                              LearnSizes.animatedSubtopicIconWidth,
                          AppImageSource.animatedSubtopicIcon,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
