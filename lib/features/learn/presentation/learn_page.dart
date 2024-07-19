import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/data/undesign_constants.dart';
import 'package:uwords/features/learn/presentation/widgets/big_button.dart';
import 'package:uwords/features/learn/presentation/widgets/word_tile.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  startTraining() {}

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LearningBloc, LearningState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, _) =>
                        const SizedBox(height: UnDesignedConstants.separator),
                    itemCount: state.words.length,
                    itemBuilder: (context, index) => WordTile(
                      data: state.words[index],
                      checked: false,
                      onPressed: () => GoRouter.of(context).go(
                        "/learn/screen1",
                        extra: state.words[index],
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      top: UnDesignedConstants.smallEmptySpace,
                      bottom: UnDesignedConstants.hugeBottomPadding),
                  child: BigButton(
                    text: AppLocalizations.of(context).train,
                    onPressed: startTraining,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
