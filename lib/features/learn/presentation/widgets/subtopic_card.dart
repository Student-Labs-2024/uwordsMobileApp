import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/global/widgets/custom_progress_bar.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/profile/data/constants/profile_shadows.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';

class SubtopicCard extends StatelessWidget {
  final double width;
  final double height;
  final Subtopic subtopic;
  final Topic topic;
  const SubtopicCard(
      {super.key,
      required this.topic,
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
                .add(LearningEvent.getWordsByTopicSubtopic(topic, subtopic));
            Future.delayed(const Duration(milliseconds: 500)).whenComplete(() {
              context
                  .read<TrainingBloc>()
                  .add(TrainingEvent.setSubtopic(subtopic));
              context.go("/learnCore");
            });
          },
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subtopic.subtopicTitle,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      '${subtopic.wordCount} words',
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 5),
                    CustomProgressBar(
                        width: width / 2.5, percent: subtopic.progress),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 85,
                  height: 61,
                  margin: const EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(
                        subtopic.progress <= 0
                            ? AppImageSource.greyAngleButton
                            : subtopic.progress >= 50
                                ? AppImageSource.blueAngleButton
                                : AppImageSource.redAngleButton,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32.0, top: 20),
                      child: SvgPicture.network(
                        subtopic.pictureLink,
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
