import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/global/presentation/widgets/custom_progress_bar.dart';
import 'package:uwords/features/learn/presentation/constants/learn_paddings.dart';
import 'package:uwords/features/learn/presentation/constants/learn_sizes.dart';
import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            widget.isActive
                ? AppImageSource.subtopicActiveCardWithSort
                : AppImageSource.subtopicCardWithSort,
            width: widget.width,
            height: widget.height,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: LearnPaddings.normalEdgeInsets * 3,
                top: LearnPaddings.normalEdgeInsets),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.subtopic.subtopicTitle,
                  style: AppTextStyles.bigSubtopicTitle,
                ),
                const SizedBox(height: LearnPaddings.smallestEmptySpace),
                Text(
                  '${widget.subtopic.wordCount} ${AppLocalizations.of(context).learnedWordsCard}',
                  style: AppTextStyles.pinCodeText,
                ),
                const SizedBox(height: LearnPaddings.svgIconLeftPadding),
                CustomProgressBar(
                    width: widget.width / LearnSizes.divider,
                    height: GlobalSizes.progressIndicatorHeight * 2,
                    percent: widget.subtopic.progress),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: LearnPaddings.bottomSortIconPadding,
                right: MediaQuery.of(context).size.width *
                    LearnPaddings.bigSubtopicCardRight,
              ),
              child: InkWell(
                onTap: () {
                  widget.onSort();
                },
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
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: LearnSizes.angleBigButtonWidth,
              height: LearnSizes.angleBigButtonHeight,
              margin: const EdgeInsets.only(
                  right: LearnPaddings.rightPaddingForSubtopicCard),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) {
                        return widget.subtopic.progress <=
                                OtherLearnConstants.zeroProgress
                            ? AppColors.greyIconGradient.createShader(bounds)
                            : widget.subtopic.progress >=
                                    OtherLearnConstants.halfProgressBar
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
                                  OtherLearnConstants.halfProgressBar
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
    );
  }
}
