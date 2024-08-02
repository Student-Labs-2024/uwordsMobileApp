import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uwords/features/auth/presentation/auth_designed_constants.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
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
