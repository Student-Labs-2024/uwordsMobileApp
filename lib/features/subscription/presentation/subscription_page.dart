import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uwords/features/subscription/bloc/subscription_bloc/subscription_bloc.dart';
import 'package:uwords/theme/app_colors.dart';

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
        log("app in reusmed");
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
                  initial: (tariffs) => ListView.builder(
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
                  subscriptionPaid: () {
                    return const Column(
                      children: [
                        Icon(
                          Icons.done,
                          size: 40,
                        ),
                        Text("Оплата проведена успешно тарифа")
                      ],
                    );
                  },
                  subscriptionNotPaid: () {
                    return const Column(
                      children: [
                        Icon(
                          Icons.close,
                          size: 40,
                        ),
                        Text("Оплата не была проведена для тарифа")
                      ],
                    );
                  },
                  payingSubscription: (paymentLink) {
                    return Column(
                      children: [
                        const CircularProgressIndicator(),
                        Text("Оплата подписки по ссылке $paymentLink")
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
