import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/presentation/subtopic_page.dart';

class CoreSubtopicPage extends StatelessWidget {
  const CoreSubtopicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LearningBloc, LearningState>(builder: (context, state) {
      return state.maybeMap(
          orElse: () => const Center(),
          openSubtopic: (state) => SubtopicPage(
                topic: state.topic,
                subtopic: state.subtopic,
              ));
    });
  }
}
