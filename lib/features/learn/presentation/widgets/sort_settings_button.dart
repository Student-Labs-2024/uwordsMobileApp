import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/auth/presentation/auth_designed_constants.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class SortSettingsButton extends StatelessWidget {
  const SortSettingsButton(
      {super.key, required this.subtopics, required this.onTap});
  final List<Subtopic> subtopics;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 44,
        width: 48,
        child: DecoratedBox(
          decoration: fis.BoxDecoration(
              color: AppColors.whiteBackgroundColor,
              borderRadius: BorderRadius.circular(
                  AuthDesignedConstants.customTextFieldBorderRadius),
              boxShadow: MainBoxShadows.main),
          child: Center(
            child: IconButton(
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
                              onTap;
                            },
                            child: Text(
                              AppLocalizations.of(context).sortByCoutOfWords,
                              style: AppTextStyles.pinCodeText,
                            ),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () {
                              subtopics.sort(progressComparator);
                              context.read<LearningBloc>().add(
                                  LearningEvent.updateSubtopicsSort(
                                      progressComparator));
                              Navigator.pop(context);
                              onTap;
                            },
                            child: Text(
                              AppLocalizations.of(context).sortByProgress,
                              style: AppTextStyles.pinCodeText,
                            ),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () {
                              subtopics.sort(latestStudyDateComparator);
                              context.read<LearningBloc>().add(
                                  LearningEvent.updateSubtopicsSort(
                                      latestStudyDateComparator));
                              Navigator.pop(context);
                              onTap;
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
                              AppLocalizations.of(context).cancel,
                              style: AppTextStyles.topicHeaderText,
                            ),
                          ),
                        ],
                      );
                    });
              },
            ),
          ),
        ));
  }
}
