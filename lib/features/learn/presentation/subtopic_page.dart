import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/data/constants/auth_designed_constants.dart';
import 'package:uwords/features/global/widgets/bubble_button.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';
import 'package:uwords/features/learn/presentation/widgets/big_subtopic_card.dart';
import 'package:uwords/features/learn/presentation/widgets/word_row.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class SubtopicPage extends StatefulWidget {
  const SubtopicPage({super.key, required this.topic, required this.subtopic});
  final Topic topic;
  final Subtopic subtopic;

  @override
  State<SubtopicPage> createState() => _SubtopicPageState();
}

class _SubtopicPageState extends State<SubtopicPage> {
  late ScrollController _scrollController;
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
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
            decoration:
                const BoxDecoration(gradient: AppColors.backgroundGradient),
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
                              context.read<LearningBloc>().add(
                                  LearningEvent.getTopics(
                                      AppLocalizations.of(context)
                                          .inProgressTopicName));
                            },
                            child: SvgPicture.asset(
                              AppImageSource.returnIcon,
                              width: AuthDesignedConstants.iconReturnSize,
                              height: AuthDesignedConstants.iconReturnSize,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            widget.topic.topicTitle,
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
                    BlocListener<TrainingBloc, TrainingState>(
                      listener: (context, state) {
                        state.maybeWhen(
                            orElse: () {},
                            screen1: (word) => context.go('/learnCore'));
                      },
                      child: BlocBuilder<LearningBloc, LearningState>(
                        builder: (context, state) {
                          return BigSubtopicCard(
                              onSort: () {
                                showCupertinoModalPopup(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CupertinoActionSheet(
                                        title: Text(
                                            AppLocalizations.of(context).sort),
                                        actions: <CupertinoActionSheetAction>[
                                          CupertinoActionSheetAction(
                                            isDefaultAction: true,
                                            onPressed: () {
                                              context.read<LearningBloc>().add(
                                                  LearningEvent.sortWords(
                                                      widget.subtopic,
                                                      wordFrequencyComparator));
                                              Navigator.pop(context);
                                              setState(() {});
                                            },
                                            child: Text(
                                              AppLocalizations.of(context)
                                                  .sortByCoutOfWords,
                                              style: AppTextStyles.pinCodeText,
                                            ),
                                          ),
                                          CupertinoActionSheetAction(
                                            onPressed: () {
                                              context.read<LearningBloc>().add(
                                                  LearningEvent.sortWords(
                                                      widget.subtopic,
                                                      wordProgressComparator));
                                              Navigator.pop(context);
                                              setState(() {});
                                            },
                                            child: Text(
                                              AppLocalizations.of(context)
                                                  .sortByProgress,
                                              style: AppTextStyles.pinCodeText,
                                            ),
                                          ),
                                          CupertinoActionSheetAction(
                                            onPressed: () {
                                              context.read<LearningBloc>().add(
                                                  LearningEvent.sortWords(
                                                      widget.subtopic,
                                                      wordLatestStudyComparator));
                                              Navigator.pop(context);
                                              setState(() {});
                                            },
                                            child: Text(
                                              AppLocalizations.of(context)
                                                  .sortByLastLearningDate,
                                              style: AppTextStyles.pinCodeText,
                                            ),
                                          ),
                                          CupertinoActionSheetAction(
                                            isDestructiveAction: true,
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              AppLocalizations.of(context)
                                                  .cancel,
                                              style:
                                                  AppTextStyles.topicHeaderText,
                                            ),
                                          ),
                                        ],
                                      );
                                    });
                              },
                              width: MediaQuery.of(context).size.width,
                              height: LearnSizes.bigSubtopicCardHeight,
                              subtopic: widget.subtopic);
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: LearnPaddings.learnPageTop),
                        child: ListView.builder(
                            itemCount: widget.subtopic.wordCount,
                            scrollDirection: Axis.vertical,
                            controller: _scrollController,
                            itemBuilder: (context, index) {
                              return WordRow(
                                  wordInfo:
                                      widget.subtopic.wordInfoList[index]);
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: LearnPaddings.learnPagePadding),
                      child: BubbleButton(null,
                          maximumWidth: MediaQuery.of(context).size.width,
                          // TODO add context.read<TrainingBloc>().add();
                          onPressed: () {
                        context.read<TrainingBloc>().add(
                            TrainingEvent.startStudy(
                                widget.topic.topicTitle, widget.subtopic));
                      }, text: AppLocalizations.of(context).train),
                    ),
                    const SizedBox(
                      height: LearnPaddings.learnPageBottom / 2,
                    ),
                  ]),
                ),
              ],
            )));
  }
}
