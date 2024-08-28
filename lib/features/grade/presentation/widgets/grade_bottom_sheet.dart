import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/grade/bloc/grade_bloc.dart';
import 'package:uwords/features/grade/presentation/constants/grade_paddings.dart';
import 'package:uwords/features/grade/presentation/constants/grade_sizes.dart';
import 'package:uwords/features/grade/presentation/constants/other_grade_constants.dart';
import 'package:uwords/features/grade/presentation/widgets/grade_button.dart';
import 'package:uwords/features/grade/presentation/widgets/select_grade.dart';
import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GradeBottomSheet extends StatefulWidget {
  const GradeBottomSheet({
    super.key,
  });

  @override
  State<GradeBottomSheet> createState() => _GradeBottomSheetState();
}

class _GradeBottomSheetState extends State<GradeBottomSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
          milliseconds:
              OtherLearnConstants.animationBottomSheetShowMilisecDuration),
    );
    _animation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int selectedGrade = OtherGradeConstants.standartGrade;
  TextEditingController controller = TextEditingController();

  void setSelectedGrade(int grade) {
    selectedGrade = grade;
  }

  void sendGrade() {
    context.read<GradeBloc>().add(
          GradeEvent.sendGrade(selectedGrade, controller.text),
        );
  }

  void quit() {
    context.read<GradeBloc>().add(
          const GradeEvent.close(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.grayColor.withOpacity(0.3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SlideTransition(
            position: _animation,
            child: Container(
              height: MediaQuery.of(context).size.height *
                  GradeSizes.bottomSheetHeight,
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(GlobalSizes.borderRadiusVeryLarge),
                    topRight:
                        Radius.circular(GlobalSizes.borderRadiusVeryLarge)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: GradePaddings.horizontal),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height *
                              GradePaddings.titleTop,
                          bottom: MediaQuery.of(context).size.height *
                              GradePaddings.titleBottom),
                      child: Text(
                        AppLocalizations.of(context).howGrade,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gradeTitle,
                      ),
                    ),
                    SelectGrade(onChoose: setSelectedGrade),
                    Container(
                      height: MediaQuery.of(context).size.height *
                          GradeSizes.inputHeight,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height *
                              GradePaddings.inputTop,
                          bottom: MediaQuery.of(context).size.height *
                              GradePaddings.inputBottom),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(
                            GlobalSizes.borderRadiusMedium),
                        border: Border.all(
                          color: AppColors.lightgrayColor,
                        ),
                      ),
                      child: TextField(
                        controller: controller,
                        minLines: 1,
                        maxLines: 5,
                        expands: false,
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: AppLocalizations.of(context).writeGrade,
                          contentPadding:
                              const EdgeInsets.all(GradePaddings.inputIn),
                        ),
                      ),
                    ),
                    GradeButton(
                      onPressed: sendGrade,
                      text: AppLocalizations.of(context).sendGrade,
                    ),
                    const SizedBox(
                      height: GradePaddings.buttonBottom,
                    ),
                    TextButton(
                      onPressed: quit,
                      child: Text(
                        AppLocalizations.of(context).notNow,
                        style: AppTextStyles.gradeNotNow,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
