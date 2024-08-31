import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uwords/features/subscription/bloc/subscription_bloc/subscription_bloc.dart';
import 'package:uwords/features/subscription/data/subscription_consts.dart';
import 'package:uwords/features/subscription/presentation/widgets/animated_card.dart';
import 'package:uwords/features/subscription/presentation/widgets/big_subscription_bottom_sheet.dart';
import 'package:uwords/features/subscription/presentation/widgets/small_subcription_bottom_sheet.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    context
        .read<SubscriptionBloc>()
        .add(const SubscriptionEvent.downloadSubcriptionsTypes());
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void deactivate() {
    context
        .read<SubscriptionBloc>()
        .add(const SubscriptionEvent.isSubscriptionActive());
    super.deactivate();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        context
            .read<SubscriptionBloc>()
            .add(const SubscriptionEvent.checkSubscription());
        break;
      default:
        break;
    }
  }

  Future<void> _openPaymentLink({required String link}) async {
    final Uri uri = Uri.parse(link);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
            decoration: const BoxDecoration(
              gradient: AppColors.backgroundOnboardingGradient,
            ),
            child: BlocConsumer<SubscriptionBloc, SubscriptionState>(
                listener: (context, subscriptionState) {
              subscriptionState.whenOrNull(
                payingSubscription: (paymentLink) =>
                    _openPaymentLink(link: paymentLink),
                subscriptionPaid: () {
                  context.go('/profile');
                },
              );
            }, builder: (BuildContext context, SubscriptionState state) {
              return Center(
                child: state.maybeWhen(
                  orElse: () => const SizedBox(),
                  initial: (tariffs) => Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: SubscriptionConsts.normalSpace,
                            vertical: SubscriptionConsts.normalSpace),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: SubscriptionConsts.biggestPadding),
                              child: Text(
                                AppLocalizations.of(context).subscriptionTitle,
                                style: AppTextStyles.subscriptionTitle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            AnimatedCardWidget(
                              imageString: AppImageSource.endlessEnergy,
                              text: AppLocalizations.of(context)
                                  .subscriptionEnergyText,
                              offesetAnimationPositioned:
                                  SubscriptionConsts.widthMultiply09,
                              animationDuration: const Duration(
                                  milliseconds: SubscriptionsDuration
                                      .firstStageDurationInMilliseconds),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: SubscriptionConsts.fifteenPadding),
                              child: AnimatedCardWidget(
                                imageString: AppImageSource.cloak,
                                text: AppLocalizations.of(context)
                                    .subscriptionTimeText,
                                offesetAnimationPositioned:
                                    SubscriptionConsts.widthMultiply13,
                                animationDuration: const Duration(
                                    milliseconds: SubscriptionsDuration
                                        .secondStageDuratioInMilliseconds),
                              ),
                            ),
                            AnimatedCardWidget(
                              imageString: AppImageSource.youtube,
                              text: AppLocalizations.of(context)
                                  .subscriptionYoutubeText,
                              offesetAnimationPositioned:
                                  SubscriptionConsts.widthMultiply13,
                              animationDuration: const Duration(
                                  milliseconds: SubscriptionsDuration
                                      .thhirdStageDurationInMilliseconds),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      SmallSubcriptionBottomSheet(
                        onTapFirstButton: () {
                          showModalBottomSheet(
                              backgroundColor: AppColors.whiteColor,
                              context: context,
                              builder: (BuildContext context) {
                                return BigSubscriptionBottomSheet(
                                    tariffs: tariffs);
                              });
                        },
                        onTapSecondButton: () {
                          context.pop();
                        },
                      )
                    ],
                  ),
                  subscriptionStatus: (isActive, date) {
                    return Text(isActive.toString());
                  },
                  subscriptionPaid: () {
                    return Center(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.done,
                            size: SubscriptionConsts.iconSize,
                          ),
                          Text(AppLocalizations.of(context)
                              .successfulPaymentOfTariff)
                        ],
                      ),
                    );
                  },
                  subscriptionNotPaid: () {
                    return Center(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.close,
                            size: SubscriptionConsts.iconSize,
                          ),
                          Text(AppLocalizations.of(context)
                              .failedPaymentOfTariff)
                        ],
                      ),
                    );
                  },
                  payingSubscription: (paymentLink) {
                    return const Center(
                        child: CircularProgressIndicator(
                      color: AppColors.darkMainColor,
                    ));
                  },
                  loading: () {
                    return const CircularProgressIndicator(
                      color: AppColors.darkMainColor,
                    );
                  },
                ),
              );
            })));
  }
}
