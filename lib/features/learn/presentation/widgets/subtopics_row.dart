import 'package:flutter/material.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/presentation/widgets/subtopic_card.dart';

class SubtopicsRow extends StatelessWidget {
  final Topic topic;
  const SubtopicsRow({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: topic.subtopics.length,
        scrollDirection: Axis.horizontal,
        controller: ScrollController(),
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(
                  left: LearnPaddings.learnPagePadding,
                  right: LearnPaddings.rowBetweenPadding),
              child: SubtopicCard(
                  topic: topic,
                  width: LearnSizes.letterButtonWidth,
                  height: LearnSizes.subtopicCardHeight,
                  subtopic: topic.subtopics[index]),
            );
          }
          if (index == topic.subtopics.length - 1) {
            return Padding(
              padding:
                  const EdgeInsets.only(right: LearnPaddings.learnPagePadding),
              child: SubtopicCard(
                  topic: topic,
                  width: LearnSizes.letterButtonWidth,
                  height: LearnSizes.subtopicCardHeight,
                  subtopic: topic.subtopics[index]),
            );
          }
          return Padding(
            padding:
                const EdgeInsets.only(right: LearnPaddings.rowBetweenPadding),
            child: SubtopicCard(
                topic: topic,
                width: LearnSizes.letterButtonWidth,
                height: LearnSizes.subtopicCardHeight,
                subtopic: topic.subtopics[index]),
          );
        });
  }
}
