import 'package:flutter/material.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/presentation/widgets/subtopic_card.dart';

class SubtopicsRow extends StatelessWidget {
  final List<Subtopic> subtopics;
  const SubtopicsRow({super.key, required this.subtopics});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: subtopics.length,
        scrollDirection: Axis.horizontal,
        controller: ScrollController(),
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(
                  left: LearnPaddings.learnPagePadding,
                  right: LearnPaddings.rowBetweenPadding),
              child: SubtopicCard(
                  width: LearnSizes.subtopicCardWidth,
                  height: LearnSizes.subtopicCardHeight,
                  subtopic: subtopics[index]),
            );
          }
          if (index == subtopics.length - 1) {
            return Padding(
              padding:
                  const EdgeInsets.only(right: LearnPaddings.learnPagePadding),
              child: SubtopicCard(
                  width: LearnSizes.subtopicCardWidth,
                  height: LearnSizes.subtopicCardHeight,
                  subtopic: subtopics[index]),
            );
          }
          return Padding(
            padding:
                const EdgeInsets.only(right: LearnPaddings.rowBetweenPadding),
            child: SubtopicCard(
                width: LearnSizes.subtopicCardWidth,
                height: LearnSizes.subtopicCardHeight,
                subtopic: subtopics[index]),
          );
        });
  }
}
