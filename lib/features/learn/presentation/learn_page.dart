import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/learn/presentation/widgets/custom_search_textfield.dart';
import 'package:uwords/features/learn/presentation/widgets/subtopics_grid.dart';
import 'package:uwords/features/learn/presentation/widgets/subtopics_row.dart';
import 'package:uwords/features/learn/presentation/widgets/topic_header.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  String _searchText = "";
  List<Subtopic> _searchList = [];

  @override
  void initState() {
    super.initState();
    context.read<LearningBloc>().add(const LearningEvent.getTopics());
  }

  void pressTitle(Topic topic) {
    context.read<TrainingBloc>().add(TrainingEvent.setTopic(topic));
    context.go("/learnCore");
  }

  void pressSubtitle(Subtopic subtopic) {
    context.read<TrainingBloc>().add(TrainingEvent.setSubtopic(subtopic));
    context.go("/learnCore");
  }

  final TextEditingController _searchQuery = TextEditingController();

  List<Subtopic> _buildSearchList(List<Subtopic> _subtopicList) {
    if (_searchText.isEmpty) {
      return _subtopicList;
    } else {
      return _subtopicList
          .where((element) => element.subtopicTitle
              .toLowerCase()
              .contains(_searchText.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    double maximumWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
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
                    child: Padding(
                  padding: const EdgeInsets.only(top: 36.0),
                  child: BlocBuilder<LearningBloc, LearningState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Text(
                            AppLocalizations.of(context).topics,
                            style: AppTextStyles.recordButtonTitle,
                          );
                        },
                        choseTopic: (topic) {
                          _searchQuery.addListener(() {
                            setState(() {
                              _searchText = _searchQuery.text;
                              _searchList = _buildSearchList(topic.subtopics);
                            });
                          });
                          return Column(
                            children: [
                              Text(
                                topic.topicTitle,
                                style: AppTextStyles.recordButtonTitle,
                              ),
                              CustomSearchTextfield(
                                  controller: _searchQuery,
                                  hintText: AppLocalizations.of(context).search)
                            ],
                          );
                        },
                      );
                    },
                  ),
                ))
              ],
            ),
          ),
        ),
        body: DecoratedBox(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                AppColors.gradientBackgroundColor1,
                AppColors.gradientBackgroundColor2
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: SafeArea(
                child: BlocConsumer<LearningBloc, LearningState>(
                    listener: (context, state) {
              // TODO: implement listener
            }, builder: (context, state) {
              return state.maybeWhen(
                initial: (topics) {
                  return ListView.builder(
                      itemCount: topics.length,
                      controller: PageController(),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24.0),
                                  child: TopicHeader(topic: topics[index]),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                    height: 120,
                                    child: SubtopicsRow(topic: topics[index]))
                              ],
                            ),
                          ],
                        );
                      });
                },
                choseTopic: (topic) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: SubtopicsGrid(
                      subtopics:
                          _searchText.isEmpty ? topic.subtopics : _searchList,
                    ),
                  );
                },
                orElse: () {
                  return const SizedBox();
                },
              );
            }))));
  }
}
