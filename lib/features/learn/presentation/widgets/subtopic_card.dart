import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/global/widgets/custom_progress_bar.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/profile/data/constants/profile_shadows.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class SubtopicCard extends StatelessWidget {
  final double width;
  final double height;
  final Subtopic subtopic;
  const SubtopicCard(
      {super.key,
      required this.width,
      required this.height,
      required this.subtopic});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(width, height),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: ProfileShadows.statisticCard,
          shape: BoxShape.rectangle,
        ),
        child: InkWell(
          onTap: () {
            // TODO Need to think how to do it better way
            context
                .read<LearningBloc>()
                .add(LearningEvent.getWordsBySubtopic(subtopic));
            Future.delayed(OtherLearnConstants.smallDuration).whenComplete(() {
              context
                  .read<TrainingBloc>()
                  .add(TrainingEvent.setSubtopic(subtopic));
              context.go("/learnCore");
            });
          },
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(LearnPaddings.normalEdgeInsets),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(subtopic.subtopicTitle,
                        style: AppTextStyles.subtopicCardName),
                    const SizedBox(height: LearnPaddings.smallestEmptySpace),
                    Text(
                      '${subtopic.wordCount} ${AppLocalizations.of(context).learnedWordsCard}',
                      style: AppTextStyles.subtopicCardWords,
                    ),
                    const SizedBox(height: LearnPaddings.smallEmptySpace),
                    CustomProgressBar(
                        width: width / LearnSizes.divider,
                        percent: subtopic.progress),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: LearnSizes.angleButtonWidth,
                  height: LearnSizes.angleButtonHeight,
                  margin: const EdgeInsets.only(
                      top: LearnPaddings.normalEdgeInsets),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(
                        subtopic.progress <= OtherLearnConstants.zeroProgress
                            ? AppImageSource.greyAngleButton
                            : subtopic.progress >=
                                    OtherLearnConstants.halfProgress
                                ? AppImageSource.blueAngleButton
                                : AppImageSource.redAngleButton,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: LearnPaddings.svgIconLeftPadding,
                          top: LearnPaddings.svgIconTopPadding),
                      child: ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) {return subtopic.progress <= OtherLearnConstants.zeroProgress
                            ? AppColors.greyIconGradient.createShader(bounds)
                            : subtopic.progress >=
                                    OtherLearnConstants.halfProgress
                                ? AppColors.blueIconGradient.createShader(bounds)
                                : AppColors.redIconGradient.createShader(bounds);},
                        child: SvgPicture.network(
                          subtopic.pictureLink,
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
