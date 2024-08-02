import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';

class TopicHeader extends StatelessWidget {
  final Topic topic;

  const TopicHeader({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          // TODO Need to think how to do it better way
          onTap: () {
            context
                .read<LearningBloc>()
                .add(LearningEvent.getWordsByTopic(topic));
            Future.delayed(Duration(milliseconds: 500)).whenComplete(() {
              context.read<TrainingBloc>().add(TrainingEvent.setTopic(topic));
              context.go("/learnCore");
            });
          },
          child: Text(
            topic.topicTitle,
            style: AppTextStyles.topicHeaderText,
          ),
        ),
        const Spacer(),
        if (topic.subtopics.length >= 4)
          InkWell(
            onTap: () {
              context
                  .read<LearningBloc>()
                  .add(LearningEvent.chooseTopic(topic));
            },
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context).checkAll,
                  style: AppTextStyles.checkMoreText,
                ),
                const Icon(
                  Icons.navigate_next_rounded,
                  color: AppColors.darkMainColor,
                )
              ],
            ),
          )
      ],
    );
  }
}
