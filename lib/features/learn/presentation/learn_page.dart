import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/auth/data/constants/auth_designed_constants.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/data/constants/learn_styles.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/learn/presentation/subtopic_page.dart';
import 'package:uwords/features/learn/presentation/widgets/custom_search_textfield.dart';
import 'package:uwords/features/learn/presentation/widgets/sort_button.dart';
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
  late TextEditingController _searchQuery;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _searchQuery = TextEditingController();
    _pageController = PageController();
  }

  @override
  void didChangeDependencies() {
    context.read<LearningBloc>().add(LearningEvent.getTopics(
        AppLocalizations.of(context).inProgressTopicName));
    super.didChangeDependencies();
  }

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
  void dispose() {
    _searchQuery.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double maximumWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(LearnSizes.learnAppbarHeight),
          child: DecoratedBox(
            decoration: const BoxDecoration(gradient: AppColors.navBarLearn),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  AppImageSource.topicBackground,
                  width: maximumWidth,
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(
                      top: LearnPaddings.topTopicHeaderPadding),
                  child: BlocBuilder<LearningBloc, LearningState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        openSubtopic: (topic, subtopic) {
                          return Opacity(
                            opacity: LearnStyles.topOpacity,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: LearnPaddings.learnPagePadding,
                                ),
                                InkWell(
                                  onTap: () {
                                    context.read<LearningBloc>().add(
                                        const LearningEvent.returnToAllTopics());
                                  },
                                  child: SvgPicture.asset(
                                    AppImageSource.returnIcon,
                                    width: AuthDesignedConstants.iconReturnSize,
                                    height:
                                        AuthDesignedConstants.iconReturnSize,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  topic.topicTitle,
                                  style: AppTextStyles.topicOpacityTitle,
                                ),
                                const Spacer(),
                                const SizedBox(
                                  width: LearnPaddings.learnPagePadding +
                                      AuthDesignedConstants.iconReturnSize,
                                )
                              ],
                            ),
                          );
                        },
                        orElse: () {
                          return Text(
                            AppLocalizations.of(context).topics,
                            style: AppTextStyles.recordButtonTitle,
                          );
                        },
                        openMore: (topic) {
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
                                          ? maximumWidth -
                                              LearnPaddings.learnPagePadding *
                                                  2 -
                                              LearnSizes.sortButtonWidth -
                                              LearnPaddings.rowBetweenPadding
                                          : maximumWidth -
                                              LearnPaddings.learnPagePadding *
                                                  2 -
                                              LearnSizes.sortButtonWidth * 2 -
                                              LearnPaddings.rowBetweenPadding,
                                      child: CustomSearchTextfield(
                                          controller: _searchQuery,
                                          hintText: AppLocalizations.of(context)
                                              .search),
                                    ),
                                    SizedBox(
                                      width: _isChosenSort == true ? LearnPaddings.rowBetweenPadding/2 : LearnPaddings.rowBetweenPadding ,
                                    ),
                                        SortButton(subtopics: topic.subtopics,
                                      onTap: setState,)
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
                      controller: _pageController,
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
                                      horizontal:
                                          LearnPaddings.learnPagePadding),
                                  child: TopicHeader(topic: topics[index]),
                                ),
                                const SizedBox(
                                  height: LearnPaddings.normalEdgeInsets,
                                ),
                                SizedBox(
                                    height: LearnSizes.subtopicCardHeight,
                                    child: SubtopicsRow(
                                        subtopics: topics[index].subtopics)),
                                index == topics.length - 1
                                    ? const SizedBox(
                                        height: LearnPaddings.learnPageBottom,
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ],
                        );
                      });
                },
                openMore: (topic) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: LearnPaddings.learnPagePadding,
                        vertical: LearnPaddings.smallEmptySpace),
                    child: SubtopicsGrid(
                      topic: topic,
                      subtopics:
                          _searchText.isEmpty ? topic.subtopics : _searchList,
                    ),
                  );
                },
                openSubtopic: (topic, subtopic) {
                  return SubtopicPage(
                    topic: topic,
                    subtopic: subtopic,
                  );
                },
                orElse: () {
                  return const SizedBox();
                },
              );
            }))));
  }
}
