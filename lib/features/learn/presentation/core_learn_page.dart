import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/learn/presentation/learn_page.dart';

class CoreLearnPage extends StatefulWidget {
  const CoreLearnPage({super.key});

  @override
  State<CoreLearnPage> createState() => _CoreLearnPageState();
}

class _CoreLearnPageState extends State<CoreLearnPage> {
  @override
  void didChangeDependencies() {
    context.read<LearningBloc>().add(LearningEvent.getTopics(
        AppLocalizations.of(context).inProgressTopicName));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const LearnPage();
  }
}
