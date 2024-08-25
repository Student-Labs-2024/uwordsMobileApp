import 'package:flutter/material.dart';
import 'package:uwords/features/subscription/presentation/widgets/active_and_passive_buttons.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SmallSubcriptionBottomSheet extends StatelessWidget {
  const SmallSubcriptionBottomSheet(
      {super.key,
      required this.onTapFirstButton,
      required this.onTapSecondButton});
  final VoidCallback onTapFirstButton;
  final VoidCallback onTapSecondButton;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.2,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)),
              color: AppColors.whiteColor,
            ),
            child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: ActiveAndPassiveButtons(
                  firstButtonText: AppLocalizations.of(context).payButton,
                  onTapFirstButton: onTapFirstButton,
                  seconButtonText: AppLocalizations.of(context).noThanks,
                  onTapSecondButton: onTapSecondButton,
                )),
          ),
        ));
  }
}
