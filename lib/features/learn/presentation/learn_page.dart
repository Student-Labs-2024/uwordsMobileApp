import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/presentation/widgets/big_button.dart';
import 'package:uwords/features/learn/presentation/widgets/word_tile.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  startTraining() {
    //что-то делает
    debugPrint('Нажал большую кнопку!!!');
  }

  @override
  void initState() {
    super.initState();
    //context.read<LearningBloc>().add(const LearningEvent.getWordsForStudy());
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
                    separatorBuilder: (context, _) => const SizedBox(height: 4),
                    itemCount: state.words.length, //exampleData.length,
                    itemBuilder: (context, index) => WordTile(
                      data: state.words[index], //exampleData[index],
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
                  padding: const EdgeInsets.only(top: 16, bottom: 96),
                  child: BigButton(
                    text: 'Тренировать',
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
