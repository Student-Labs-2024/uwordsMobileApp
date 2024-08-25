import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/global/data/constants/global_shadows.dart';
import 'package:uwords/features/subscription/bloc/subscription_bloc/subscription_bloc.dart';
import 'package:uwords/features/subscription/domain/models/tariff.dart';
import 'package:uwords/features/subscription/presentation/widgets/active_and_passive_buttons.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/app_text_styles.dart';

class BigSubscriptionBottomSheet extends StatefulWidget {
  const BigSubscriptionBottomSheet({super.key, required this.tariffs});
  final List<Tariff> tariffs;

  @override
  State<BigSubscriptionBottomSheet> createState() =>
      _BigSubscriptionBottomSheetState();
}

class _BigSubscriptionBottomSheetState
    extends State<BigSubscriptionBottomSheet> {
  int chosenTariff = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              AppLocalizations.of(context).chooseSubscriptionType,
              style: AppTextStyles.authHeaderText,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100.0, bottom: 144),
          child: SizedBox(
            height: 800,
            child: Center(
              child: ListView.builder(
                  itemCount: widget.tariffs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(decoration: BoxDecoration(color: AppColors.whiteColor, borderRadius: BorderRadius.circular(15),boxShadow: GlobalShadows.basicShadow));
                    // return ListTile(
                    //   title: Text(widget.tariffs[index].name),
                    //   subtitle: Text(widget.tariffs[index].price.toString()),
                    //   onTap: () {
                    //     context.read<SubscriptionBloc>().add(
                    //         SubscriptionEvent.paySubscription(
                    //             widget.tariffs[index]));
                    //   },
                    // );
                  }),
            ),
          ),
        ),
        Align(
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
                      onTapFirstButton: () {},
                      seconButtonText: AppLocalizations.of(context).noThanks,
                      onTapSecondButton: () => context.pop()),
                )),
          ),
        )
      ]),
    );
  }
}
