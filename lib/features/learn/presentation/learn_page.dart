import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_styles.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
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
    double maximumWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.gradientBackgroundColor1,
              AppColors.gradientBackgroundColor1
            ], begin: Alignment.topLeft),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                AppImageSource.topicBackground,
                width: maximumWidth,
              ),
              Center(
                  child: Text(
                AppLocalizations.of(context).topics,
                style: AppTextStyles.recordButtonTitle,
              ))
            ],
          ),
        ),
      ),
      body: BlocConsumer<LearningBloc, LearningState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  AppColors.gradientBackgroundColor1,
                  AppColors.gradientBackgroundColor2
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Stack(children: [
                Column(
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
                                              style: LearnStyles
                                                  .basicSubtitleStyle,
                                            ),
                                          ),
                                          ...subtopic.wordInfoList
                                              .map((wordInfo) => Padding(
                                                    padding: LearnStyles
                                                        .basicPadding,
                                                    child: Text(
                                                      wordInfo.word.enValue,
                                                      style: LearnStyles
                                                          .basicWordStyle,
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
                  ],
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
