import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/presentation/widgets/big_button.dart';
import 'package:uwords/features/learn/presentation/widgets/word_tile.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  EdgeInsets basicPadding =
      const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0);
  TextStyle basicTitleStyle =
      const TextStyle(fontSize: 40, fontWeight: FontWeight.w700);
  TextStyle basicSubtitleStyle =
      const TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  TextStyle basicWordStyle =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w400);

  startTraining() {}

  @override
  void initState() {
    super.initState();
    context.read<LearningBloc>().add(const LearningEvent.getWordsForStudy());
  }

  void pressTitle(Topic topic) {
    context.read<TrainingBloc>().add(TrainingEvent.setTopic(topic));
    context.go("/learnCore");
  }

  void pressSubtitle(Subtopic subtopic) {
    context.read<TrainingBloc>().add(TrainingEvent.setSubtopic(subtopic));
    context.go("/learnCore");
  }

  List<Topic> learnTopics = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LearningBloc, LearningState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.topics.length,
                    itemBuilder: (context, index) {
                      final topic = state.topics[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () => {},
                              child: Text(
                                topic.topicTitle,
                                style: basicTitleStyle,
                              ),
                            ),
                            ...topic.subtopics.map((subtopic) => Padding(
                                  padding: basicPadding,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextButton(
                                        onPressed: () => {},
                                        child: Text(
                                          subtopic.subtopicTitle,
                                          style: basicSubtitleStyle,
                                        ),
                                      ),
                                      ...subtopic.wordInfoList
                                          .map((wordInfo) => Padding(
                                                padding: basicPadding,
                                                child: Text(
                                                  wordInfo.word.enValue,
                                                  style: basicWordStyle,
                                                ),
                                              )),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 16, bottom: 96),
                  child: BigButton(
                    text: 'Тренировать',
                    onPressed: startTraining,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
