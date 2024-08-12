import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
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

  String currentBackBubbles = AppImageSource.topicBackground;

  @override
  Widget build(BuildContext context) {
    double maximumWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: DecoratedBox(
            decoration:
                const BoxDecoration(gradient: AppColors.backgroundGradient),
            child: Stack(
              children: [
                Image.asset(
                  currentBackBubbles,
                  width: maximumWidth,
                  fit: BoxFit.cover,
                ),
                BlocConsumer<LearningBloc, LearningState>(
                    listener: (context, state) {
                  state.whenOrNull(
                    changedSort: () {
                      setState(() {
                        _isChosenSort = true;
                        _searchQuery.clear();
                      });
                    },
                    initial: (topics) {
                      setState(() {
                        currentBackBubbles = AppImageSource.topicBackground;
                      });
                    },
                    openMore: (topic) {
                      setState(() {
                        currentBackBubbles =
                            AppImageSource.subtopicHeaderBubbles;
                      });
                    },
                  );
                }, builder: (context, state) {
                  return state.maybeWhen(
                    initial: (topics) {
                      return SafeArea(
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: LearnPaddings.headerTitleTop,
                                    bottom: LearnPaddings.headerTitleBottom),
                                child: Text(
                                  AppLocalizations.of(context).topics,
                                  style: AppTextStyles.recordButtonTitle,
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView(
                                children: [
                                  const SizedBox(
                                    height: LearnPaddings.smallEmptySpace,
                                  ),
                                  ...topics.map(
                                    (topic) => Column(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: LearnPaddings
                                                          .learnPagePadding),
                                              child: TopicHeader(topic: topic),
                                            ),
                                            const SizedBox(
                                              height: LearnPaddings
                                                  .normalEdgeInsets,
                                            ),
                                            SizedBox(
                                                height: LearnSizes
                                                    .subtopicCardHeight,
                                                child: SubtopicsRow(
                                                    subtopics:
                                                        topic.subtopics)),
                                            const SizedBox(
                                              height:
                                                  LearnPaddings.normalPadding,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: LearnPaddings.learnPageBottom,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    openMore: (topic) {
                      _searchQuery.addListener(() {
                        setState(() {
                          _searchText = _searchQuery.text;
                          _searchList = _buildSearchList(topic.subtopics);
                        });
                      });
                      return SafeArea(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: LearnPaddings.headerTitleTop),
                              child: Text(
                                topic.topicTitle,
                                style: AppTextStyles.recordButtonTitle,
                              ),
                            ),
                            const SizedBox(
                              height: LearnPaddings.headerTitleSubtopicBottom,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: LearnPaddings.learnPagePadding),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: _isChosenSort == false
                                        ? maximumWidth -
                                            LearnPaddings.learnPagePadding * 2 -
                                            LearnSizes.sortButtonWidth -
                                            LearnPaddings.rowBetweenPadding
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
                                  SortButton(
                                      subtopics: topic.subtopics,
                                      onTap: setState,
                                    ),
                                  _isChosenSort == true
                                      ? const SortButton()
                                      : const SizedBox()
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: LearnPaddings.headerSubtopicSearchBottom,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: LearnPaddings.learnPagePadding,
                                    vertical: LearnPaddings.smallEmptySpace),
                                child: SubtopicsGrid(
                                  topic: topic,
                                  subtopics: _searchText.isEmpty
                                      ? topic.subtopics
                                      : _searchList,
                                ),
                              ),
                            ),
                          ],
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
                }),
              ],
            )));
  }
}
