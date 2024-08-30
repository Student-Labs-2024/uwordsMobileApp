import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/presentation/constants/auth_designed_constants.dart';
import 'package:uwords/features/global/presentation/widgets/bubble_button.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/presentation/constants/learn_paddings.dart';
import 'package:uwords/features/learn/presentation/constants/learn_sizes.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';
import 'package:uwords/features/learn/presentation/widgets/big_subtopic_card.dart';
import 'package:uwords/features/learn/presentation/widgets/word_row.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class SubtopicPage extends StatefulWidget {
  const SubtopicPage({super.key});

  @override
  State<SubtopicPage> createState() => _SubtopicPageState();
}

class _SubtopicPageState extends State<SubtopicPage> {
  late ScrollController _scrollController;
  bool isFromCurrentTopic = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void deactivate() {
    context.read<LearningBloc>().add(const LearningEvent.returnToAllTopics());
    super.deactivate();
  }

  bool isSortActive = false;
  void changeSortActive(bool state) {
    if (state == isSortActive) {
      setState(() {});
    } else {
      setState(() {
        isSortActive = !isSortActive;
      });
    }
  }

  void deleteWord(WordInfo wordInfo, Subtopic subtopic) {
    context
        .read<LearningBloc>()
        .add(LearningEvent.deleteWord(wordInfo, subtopic));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LearningBloc, LearningState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => const Center(),
            openSubtopic: (subtopic) => Scaffold(
                body: DecoratedBox(
                    decoration: const BoxDecoration(
                        gradient: AppColors.backgroundGradient),
                    child: Stack(
                      children: [
                        Image.asset(
                          AppImageSource.subtopicHeaderBubbles,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                        SafeArea(
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: LearnPaddings.headerTitleTop),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: LearnPaddings.learnPagePadding,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      context.pop();
                                    },
                                    child: SvgPicture.asset(
                                      AppImageSource.returnIcon,
                                      width:
                                          AuthDesignedConstants.iconReturnSize,
                                      height:
                                          AuthDesignedConstants.iconReturnSize,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    subtopic.topicTitle,
                                    style: AppTextStyles.recordButtonTitle,
                                  ),
                                  const Spacer(),
                                  const SizedBox(
                                    width: LearnPaddings.learnPagePadding +
                                        AuthDesignedConstants.iconReturnSize,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: LearnPaddings.normalPadding,
                            ),
                            BigSubtopicCard(
                                isActive: isSortActive,
                                onSort: () {
                                  showCupertinoModalPopup(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return CupertinoActionSheet(
                                          title: Text(
                                              AppLocalizations.of(context)
                                                  .sort),
                                          actions: <CupertinoActionSheetAction>[
                                            CupertinoActionSheetAction(
                                              isDefaultAction: true,
                                              onPressed: () {
                                                context.read<LearningBloc>().add(
                                                    LearningEvent.sortWords(
                                                        subtopic,
                                                        wordProgressComparator));
                                                Navigator.pop(context);
                                                changeSortActive(true);
                                              },
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .byFriquency,
                                                style:
                                                    AppTextStyles.pinCodeText,
                                              ),
                                            ),
                                            CupertinoActionSheetAction(
                                              onPressed: () {
                                                context.read<LearningBloc>().add(
                                                    LearningEvent.sortWords(
                                                        subtopic,
                                                        wordReverseProgressComparator));
                                                Navigator.pop(context);
                                                changeSortActive(true);
                                              },
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .byProgressWords,
                                                style:
                                                    AppTextStyles.pinCodeText,
                                              ),
                                            ),
                                            CupertinoActionSheetAction(
                                              onPressed: () {
                                                context.read<LearningBloc>().add(
                                                    LearningEvent.sortWords(
                                                        subtopic,
                                                        wordLatestStudyComparator));
                                                Navigator.pop(context);
                                                changeSortActive(true);
                                              },
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .sortByLastLearningDate,
                                                style:
                                                    AppTextStyles.pinCodeText,
                                              ),
                                            ),
                                            CupertinoActionSheetAction(
                                              isDestructiveAction: true,
                                              onPressed: () {
                                                Navigator.pop(context);
                                                changeSortActive(false);
                                              },
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .cancel,
                                                style: AppTextStyles
                                                    .topicHeaderText,
                                              ),
                                            ),
                                          ],
                                        );
                                      });
                                },
                                width: MediaQuery.of(context).size.width,
                                height: LearnSizes.bigSubtopicCardHeight,
                                subtopic: subtopic),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: LearnPaddings.learnPageTop),
                                child: ListView.builder(
                                    key: ValueKey(subtopic),
                                    itemCount: subtopic.wordInfoList.length,
                                    scrollDirection: Axis.vertical,
                                    controller: _scrollController,
                                    itemBuilder: (context, index) {
                                      return WordRow(
                                          onDelete: () {
                                            deleteWord(
                                                subtopic.wordInfoList[index],
                                                subtopic);
                                          },
                                          wordInfo:
                                              subtopic.wordInfoList[index]);
                                    }),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: LearnPaddings.learnPagePadding),
                              child: BubbleButton(null,
                                  maximumWidth: MediaQuery.of(context)
                                      .size
                                      .width, onPressed: () {
                                context
                                    .read<TrainingBloc>()
                                    .add(TrainingEvent.startStudy(subtopic));
                                context.go('/learnCore');
                              }, text: AppLocalizations.of(context).train),
                            ),
                            const SizedBox(
                              height: LearnPaddings.learnPageBottom / 2,
                            ),
                          ]),
                        ),
                      ],
                    ))));
      },
    );
  }
}
