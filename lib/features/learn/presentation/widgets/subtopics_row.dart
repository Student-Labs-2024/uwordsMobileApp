import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(left: 24.0, right: 10.0),
              child: SubtopicCard(
                  width: 150, height: 120, subtopic: topic.subtopics[index]),
            );
          }
          if (index == topic.subtopics.length - 1) {
            return Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: SubtopicCard(
                  width: 150, height: 120, subtopic: topic.subtopics[index]),
            );
          }
          return Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: SubtopicCard(
                width: 150, height: 120, subtopic: topic.subtopics[index]),
          );
        });
  }
}
