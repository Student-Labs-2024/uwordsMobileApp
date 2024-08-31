import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/global/presentation/widgets/constants/words_localization.dart';
import 'package:uwords/features/global/presentation/widgets/custom_progress_bar.dart';
import 'package:uwords/features/learn/presentation/constants/learn_paddings.dart';
import 'package:uwords/features/learn/presentation/constants/learn_sizes.dart';
import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/presentation/widgets/clip_big_subtopic_card.dart';
import 'package:uwords/features/learn/presentation/widgets/clip_sort_button.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class BigSubtopicCard extends StatefulWidget {
  final double width;
  final double height;
  final Subtopic subtopic;
  final Function onSort;
  final bool isActive;

  const BigSubtopicCard({
    super.key,
    required this.width,
    required this.height,
    required this.subtopic,
    required this.onSort,
    required this.isActive,
  });

  @override
  State<BigSubtopicCard> createState() => _BigSubtopicCardState();
}

class _BigSubtopicCardState extends State<BigSubtopicCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: LearnPaddings.paddingForBigCard),
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipPath(
                  clipper: MyClipper(),
                  child: ColoredBox(
                    color: AppColors.whiteColor,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: LearnPaddings.normalEdgeInsets * 2,
                              top: LearnPaddings.normalEdgeInsets * 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.subtopic.subtopicTitle,
                                style: AppTextStyles.bigSubtopicTitle,
                              ),
                              const SizedBox(
                                  height: LearnPaddings.smallestEmptySpace),
                              Text(
                                '${widget.subtopic.wordCount} ${pluralizeWords(widget.subtopic.wordCount)}',
                                style: AppTextStyles.pinCodeText,
                              ),
                              const SizedBox(
                                  height: LearnPaddings.svgIconLeftPadding),
                              CustomProgressBar(
                                  width: widget.width / LearnSizes.divider,
                                  height:
                                      GlobalSizes.progressIndicatorHeight * 2,
                                  percent: widget.subtopic.progress),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            width: LearnSizes.angleBigButtonWidth,
                            height: LearnSizes.angleBigButtonHeight,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: ShaderMask(
                                    blendMode: BlendMode.srcIn,
                                    shaderCallback: (bounds) {
                                      return widget.subtopic.progress <=
                                              OtherLearnConstants.zeroProgress
                                          ? AppColors.greyIconGradient
                                              .createShader(bounds)
                                          : widget.subtopic.progress >=
                                                  OtherLearnConstants
                                                      .halfProgressBar
                                              ? AppColors.blueIconGradient
                                                  .createShader(bounds)
                                              : AppColors.redIconGradient
                                                  .createShader(bounds);
                                    },
                                    child: SvgPicture.network(
                                      fit: BoxFit.cover,
                                      widget.subtopic.pictureLink,
                                      width: LearnSizes.bigSubtopicIconSize,
                                      height: LearnSizes.bigSubtopicIconSize,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(
                                    widget.subtopic.progress <=
                                            OtherLearnConstants.zeroProgress
                                        ? AppImageSource.greyBigAngleButton
                                        : widget.subtopic.progress >=
                                                OtherLearnConstants
                                                    .halfProgressBar
                                            ? AppImageSource.blueBigAngleButton
                                            : AppImageSource.redBigAngleButton,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                bottom: 0,
                right: 0,
                child: InkWell(
                  onTap: () {
                    widget.onSort();
                  },
                  child: SizedBox(
                    height: LearnSizes.classicSortIconWidth,
                    width: LearnSizes.classicSortIconWidth,
                    child: ClipPath(
                      clipper: SortClipper(),
                      clipBehavior: Clip.hardEdge,
                      child: ColoredBox(
                        color: widget.isActive
                            ? AppColors.darkMainColor
                            : AppColors.whiteColor,
                        child: SizedBox(
                          height: LearnSizes.arrowBackIconSize,
                          width: LearnSizes.arrowBackIconSize,
                          child: SvgPicture.asset(
                            widget.isActive
                                ? AppImageSource.sortActiveIcon
                                : AppImageSource.sortIcon,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
