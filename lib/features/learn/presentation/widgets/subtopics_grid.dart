import 'package:flutter/material.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/presentation/widgets/subtopic_card.dart';

class SubtopicsGrid extends StatelessWidget {
  final Topic topic;
  final List<Subtopic> subtopics;
  const SubtopicsGrid(
      {super.key, required this.subtopics, required this.topic});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: subtopics.length,
        controller: ScrollController(),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: LearnSizes.subtopicCardHeight,
          crossAxisSpacing: LearnPaddings.inputVertical,
          mainAxisSpacing: LearnPaddings.inputVertical,
        ),
        itemBuilder: (context, index) {
          return SubtopicCard(
              topic: topic,
              width: LearnSizes.subtopicCardWidth,
              height: LearnSizes.subtopicCardHeight,
              subtopic: subtopics[index]);
        });
  }
}
