import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/global/widgets/custom_image_network_view.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';

class ProgressImageCard extends StatefulWidget {
  const ProgressImageCard(
      {super.key, required this.word, required this.currentProgress});

  final WordModel word;
  final int currentProgress;
  @override
  State<ProgressImageCard> createState() => ProgressImageCardState();
}

class ProgressImageCardState extends State<ProgressImageCard> {
  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  int stage = 0;

  void startAnimation() async {
    await Future.delayed(
        const Duration(milliseconds: OtherLearnConstants.progressMilisec1));
    setState(() {
      stage = 1;
    });
    await Future.delayed(
        const Duration(milliseconds: OtherLearnConstants.progressMilisec2));
    setState(() {
      stage = 2;
    });
  }

  String getImage() {
    if (stage == 0) {
      return AppImageSource.circleEmpty;
    }
    switch (widget.currentProgress + 1) {
      case OtherLearnConstants.quarterProgress:
        return AppImageSource.sircleGreen1;

      case OtherLearnConstants.halfProgress:
        return AppImageSource.sircleGreen2;

      case OtherLearnConstants.thirdQuarterProgress:
        return AppImageSource.sircleGreen3;

      case OtherLearnConstants.fullProgress:
        return AppImageSource.sircleGreen4;

      default:
        return AppImageSource.sircleGreen0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: LearnPaddings.imageCardHorizontal,
          vertical: LearnPaddings.imageCardVertical),
      child: Stack(
        children: [
          Container(
            width:
                MediaQuery.of(context).size.width * LearnSizes.imageCardWidth,
            height:
                MediaQuery.of(context).size.height * LearnSizes.imageCardHeight,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(GlobalSizes.borderRadiusLarge)),
            child: CustomImageNetworkView(
              imageSource: widget.word.pictureLink,
              extraDarken: stage == 2 ? null : true,
              width:
                  MediaQuery.of(context).size.width * LearnSizes.imageCardWidth,
              height: MediaQuery.of(context).size.height *
                  LearnSizes.imageCardHeight,
              clipRadius: GlobalSizes.borderRadiusLarge,
            ),
          ),
          SizedBox(
              width:
                  MediaQuery.of(context).size.width * LearnSizes.imageCardWidth,
              height: MediaQuery.of(context).size.height *
                  LearnSizes.imageCardHeight,
              child: AnimatedAlign(
                duration: const Duration(
                    milliseconds: OtherLearnConstants
                        .animationAlignChangeMilisecDuration),
                curve: Curves.easeOutQuart,
                alignment: stage == 2 ? Alignment.topRight : Alignment.center,
                child: Padding(
                  padding:
                      const EdgeInsets.all(LearnPaddings.greenProgressCircle),
                  child: ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) {
                      return AppColors.greenCircleProgressGradient
                          .createShader(bounds);
                    },
                    child: SvgPicture.asset(
                      getImage(),
                      width: stage == 2
                          ? MediaQuery.of(context).size.width *
                              LearnSizes.circleGreenSmallProgressSize
                          : MediaQuery.of(context).size.width *
                              LearnSizes.circleGreenBigProgressSize,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
