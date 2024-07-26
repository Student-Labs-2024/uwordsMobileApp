import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_styles.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/presentation/widgets/big_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  startTraining() {}
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
                                style: LearnStyles.basicTitleStyle,
                              ),
                            ),
                            ...topic.subtopics.map((subtopic) => Padding(
                                  padding: LearnStyles.basicPadding,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextButton(
                                        onPressed: () => {},
                                        child: Text(
                                          subtopic.subtopicTitle,
                                          style: LearnStyles.basicSubtitleStyle,
                                        ),
                                      ),
                                      ...subtopic.wordInfoList.map((wordInfo) =>
                                          Padding(
                                            padding: LearnStyles.basicPadding,
                                            child: Text(
                                              wordInfo.word.enValue,
                                              style: LearnStyles.basicWordStyle,
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
                  padding: const EdgeInsets.only(
                      top: LearnPaddings.learnPageTop,
                      bottom: LearnPaddings.learnPageBottom),
                  child: BigButton(
                    text: AppLocalizations.of(context).startTraining,
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
