import 'package:flutter/material.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/presentation/widgets/subtopic_card.dart';

class SubtopicsGrid extends StatelessWidget {
  final List<Subtopic> subtopics;
  const SubtopicsGrid({super.key, required this.subtopics});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(

        itemCount: subtopics.length,
        controller: ScrollController(),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 120,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return SubtopicCard(
                width: 150, height: 120, subtopic: subtopics[index]);
        });
  }
}
