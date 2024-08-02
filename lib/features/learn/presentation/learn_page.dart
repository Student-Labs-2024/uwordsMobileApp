import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/learn/presentation/widgets/custom_search_textfield.dart';
import 'package:uwords/features/learn/presentation/widgets/sort_button.dart';
import 'package:uwords/features/learn/presentation/widgets/sort_settings_button.dart';
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
  bool _isChosenSort = false;
  Comparator<Subtopic> comparator = latestStudyDateComparator;

  @override
  void initState() {
    super.initState();
    context.read<LearningBloc>().add(const LearningEvent.getTopics());
  }

  final TextEditingController _searchQuery = TextEditingController();

  List<Subtopic> _buildSearchList(List<Subtopic> subtopicList) {
    if (_searchText.isEmpty) {
      return subtopicList;
    } else {
      return subtopicList
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
          preferredSize: const Size.fromHeight(LearnSizes.learnAppbarHeight),
          child: DecoratedBox(
            decoration:
                const BoxDecoration(gradient: AppColors.backgroundGradient),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  AppImageSource.topicBackground,
                  width: maximumWidth,
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: LearnPaddings.topTopicHeaderPadding),
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
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: LearnPaddings.learnPagePadding),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: _isChosenSort == false
                                          ? maximumWidth - LearnPaddings.learnPagePadding * 2 - LearnSizes.sortButtonWidth - LearnPaddings.rowBetweenPadding
                                          : maximumWidth -
                                              LearnPaddings.learnPagePadding * 2 -
                                              LearnSizes.sortButtonWidth * 2 -
                                              LearnPaddings.rowBetweenPadding,
                                      child: CustomSearchTextfield(
                                          controller: _searchQuery,
                                          hintText: AppLocalizations.of(context)
                                              .search),
                                    ),
                                    const SizedBox(
                                      width: LearnPaddings.rowBetweenPadding,
                                    ),
                                    SortSettingsButton(
                                      subtopics: topic.subtopics,
                                      onTap: setState,
                                    ),
                                    _isChosenSort == true
                                        ? const SortButton()
                                        : const SizedBox()
                                  ],
                                ),
                              )
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
            decoration:
                const BoxDecoration(gradient: AppColors.backgroundGradient),
            child: SafeArea(
                child: BlocConsumer<LearningBloc, LearningState>(
                    listener: (context, state) {
              state.whenOrNull(
                changedSort: () {
                  setState(() {
                    _isChosenSort = true;
                    _searchQuery.clear();
                  });
                },
              );
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
                                const SizedBox(
                                  height: LearnPaddings.normalPadding,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: LearnPaddings.learnPagePadding),
                                  child: TopicHeader(topic: topics[index]),
                                ),
                                const SizedBox(
                                  height: LearnPaddings.normalEdgeInsets,
                                ),
                                SizedBox(
                                    height: LearnSizes.subtopicCardHeight,
                                    child: SubtopicsRow(topic: topics[index]))
                              ],
                            ),
                          ],
                        );
                      });
                },
                choseTopic: (topic) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: LearnPaddings.learnPagePadding),
                    child: SubtopicsGrid(
                      topic: topic,
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
