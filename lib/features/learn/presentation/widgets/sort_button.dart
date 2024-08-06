import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;

class SortButton extends StatefulWidget {
  const SortButton({super.key});

  @override
  State<SortButton> createState() => _SortButtonState();
}

class _SortButtonState extends State<SortButton> {
  bool _reversed = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: LearnSizes.sortButtonHeight,
        width: LearnSizes.sortButtonWidth,
        child: DecoratedBox(
          decoration: fis.BoxDecoration(
              color: AppColors.whiteBackgroundColor,
              borderRadius:
                  BorderRadius.circular(GlobalSizes.borderRadiusSmall),
              boxShadow: MainBoxShadows.main),
          child: Center(
            child: IconButton(
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
            ),
          ),
        ));
  }
}
