import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SortButton extends StatefulWidget {
  const SortButton({super.key, required this.subtopics, required this.onTap});
  final List<Subtopic> subtopics;
  final Function onTap;

  @override
  State<SortButton> createState() => _SortButtonState();
}

class _SortButtonState extends State<SortButton> {
  bool _reversed = false;
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: LearnSizes.sortButtonHeight,
        width: _isActive == true
            ? LearnSizes.sortButtonWidth * 2
            : LearnSizes.sortButtonWidth,
        child: DecoratedBox(
            decoration: fis.BoxDecoration(
                color: AppColors.whiteBackgroundColor,
                borderRadius:
                    BorderRadius.circular(GlobalSizes.borderRadiusSmall),
                boxShadow: MainBoxShadows.main),
            child: _isActive == true
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildSortSettingsButton(),
                      buildReverseSortButton(),
                    ],
                  )
                : Center(child: buildSortSettingsButton())));
  }

  Widget buildSortSettingsButton() {
    return IconButton(
      icon: SvgPicture.asset(AppImageSource.sortSettingsButton),
      onPressed: () {
        showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) {
              return CupertinoActionSheet(
                title: Text(AppLocalizations.of(context).sort),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    isDefaultAction: true,
                    onPressed: () {
                      context.read<LearningBloc>().add(
                          LearningEvent.updateSubtopicsSort(
                              wordCountComparator));
                      Navigator.pop(context);
                      widget.onTap;
                      _isActive = true;
                    },
                    child: Text(
                      AppLocalizations.of(context).sortByCoutOfWords,
                      style: AppTextStyles.pinCodeText,
                    ),
                  ),
                  CupertinoActionSheetAction(
                    onPressed: () {
                      context.read<LearningBloc>().add(
                          LearningEvent.updateSubtopicsSort(
                              progressComparator));
                      Navigator.pop(context);
                      widget.onTap;
                      _isActive = true;
                    },
                    child: Text(
                      AppLocalizations.of(context).sortByProgress,
                      style: AppTextStyles.pinCodeText,
                    ),
                  ),
                  CupertinoActionSheetAction(
                    onPressed: () {
                      context.read<LearningBloc>().add(
                          LearningEvent.updateSubtopicsSort(
                              latestStudyDateComparator));
                      Navigator.pop(context);
                      widget.onTap;
                      _isActive = true;
                    },
                    child: Text(
                      AppLocalizations.of(context).sortByLastLearningDate,
                      style: AppTextStyles.pinCodeText,
                    ),
                  ),
                  CupertinoActionSheetAction(
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      AppLocalizations.of(context).cancel,
                      style: AppTextStyles.topicHeaderText,
                    ),
                  ),
                ],
              );
            });
      },
    );
  }

  Widget buildReverseSortButton() {
    return IconButton(
      icon: Transform.flip(
        flipX: _reversed,
        child: SvgPicture.asset(AppImageSource.sortIcon),
      ),
      onPressed: () {
        setState(() {
          _reversed = !_reversed;
        });
        context
            .read<LearningBloc>()
            .add(const LearningEvent.reverseSubtopicsSort());
      },
    );
  }
}
