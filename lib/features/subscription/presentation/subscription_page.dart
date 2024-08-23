import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uwords/features/subscription/bloc/subscription_bloc/subscription_bloc.dart';
import 'package:uwords/features/subscription/data/subscription_consts.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              gradient: AppColors.backgroundGradient,
            ),
            child: BlocConsumer<SubscriptionBloc, SubscriptionState>(
                listener: (context, subscriptionState) {
              subscriptionState.whenOrNull(
                  payingSubscription: (paymentLink) =>
                      _openPaymentLink(link: paymentLink));
            }, builder: (BuildContext context, SubscriptionState state) {
              return SafeArea(
                  child: Center(
                child: state.maybeWhen(
                  orElse: () => const SizedBox(),
                  initial: (tariffs) => Column(
                    children: [
                      SizedBox(
                        height: SubscriptionConsts.viewBuilderSpace,
                        child: ListView.builder(
                            itemCount: tariffs.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                title: Text(tariffs[index].name),
                                subtitle: Text(tariffs[index].price.toString()),
                                onTap: () {
                                  context.read<SubscriptionBloc>().add(
                                      SubscriptionEvent.paySubscription(
                                          tariffs[index]));
                                },
                              );
                            }),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            context.read<SubscriptionBloc>().add(
                                const SubscriptionEvent.isSubscriptionActive());
                          },
                          child: Text(AppLocalizations.of(context)
                              .checkSubscriptionStatusButton))
                    ],
                  ),
                  subscriptionStatus: (isActive, date) {
                    return Text(isActive.toString());
                  },
                  subscriptionPaid: () {
                    return Column(
                      children: [
                        const Icon(
                          Icons.done,
                          size: SubscriptionConsts.iconSize,
                        ),
                        Text(AppLocalizations.of(context)
                            .successfulPaymentOfTariff)
                      ],
                    );
                  },
                  subscriptionNotPaid: () {
                    return Column(
                      children: [
                        const Icon(
                          Icons.close,
                          size: SubscriptionConsts.iconSize,
                        ),
                        Text(AppLocalizations.of(context).failedPaymentOfTariff)
                      ],
                    );
                  },
                  payingSubscription: (paymentLink) {
                    return Column(
                      children: [
                        const CircularProgressIndicator(),
                        Text(
                            "${AppLocalizations.of(context).payByLink} $paymentLink")
                      ],
                    );
                  },
                  loading: () {
                    return const CircularProgressIndicator();
                  },
                ),
              ));
            })));
  }
}
