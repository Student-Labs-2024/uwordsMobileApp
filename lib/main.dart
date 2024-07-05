import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/presentation/auth_page.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/features/learn/data/data_sources/interface_words_data_source.dart';
import 'package:uwords/features/learn/data/data_sources/words_data_source.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/learn/data/repositores/words_repository.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen1.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen2.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen3.dart';
import 'package:uwords/features/learn/presentation/learn_screens/successful_word_screen.dart';
import 'package:uwords/features/main/bloc/audio_bloc/audio_bloc.dart';
import 'package:uwords/features/main/data/data_sources/audio_datasource.dart';
import 'package:uwords/features/main/data/repositories/audio_repository.dart';
import 'package:uwords/features/main/data/repositories/interface_audio_repository.dart';
import 'package:uwords/features/main/data/data_sources/iterface_audio_datasource.dart';
import 'package:uwords/features/main/presentation/pages/home_page.dart';
import 'package:uwords/features/learn/presentation/learn_page.dart';
import 'package:uwords/features/main/presentation/pages/scaffold_with_navbar.dart';

import 'features/learn/presentation/learn_screens/learn_word_screen4.dart';
import 'firebase_options.dart';

void main() async {
  runApp(MainApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

final _shellNavKey = GlobalKey<NavigatorState>();
final _rootNavKey = GlobalKey<NavigatorState>();

final GoRouter _goRouter = GoRouter(
  navigatorKey: _rootNavKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavKey,
      builder: (context, state, child) => ScaffoldWithNavBar(child: child),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const AuthPage(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: '/learn',
          builder: (context, state) => LearnPage(),
          routes: [
            GoRoute(
              path: "screen1",
              builder: (context, state) => LearnWordPage1(
                word: state.extra as WordModel,
              ),
              routes: [
                GoRoute(
                  path: "screen2",
                  builder: (context, state) => LearnWordPage2(
                    word: state.extra as WordModel,
                  ),
                  routes: [
                    GoRoute(
                      path: "screen3",
                      builder: (context, state) => LearnWordPage3(
                        word: state.extra as WordModel,
                      ),
                      routes: [
                        GoRoute(
                          path: "screen4",
                          builder: (context, state) => LearnWordPage4(
                            word: state.extra as WordModel,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            GoRoute(
              path: "success",
              builder: (context, state) => SuccessfulWordPage(
                word: state.extra as WordModel,
              ),
            ),
          ],
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const AuthPage(),
        ),
      ],
    ),
  ],
);

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final IAudioDataSource audioDataSource = AudioDataSource();
  final IWordsDataSource wordsDataSource = WordsDataSource();
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IAudioRepository>(
            create: (context) =>
                AudioRepository(audioDataSource: audioDataSource)),
        RepositoryProvider<IWordsRepository>(
            create: (context) =>
                WordsRepository(wordsDataSource: wordsDataSource))
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  AudioBloc(audioRepository: context.read<IAudioRepository>())),
          BlocProvider(create: (context) => PlayerBloc()),
          BlocProvider(
              create: (context) =>
                  LearningBloc(context.read<IWordsRepository>()))
        ],
        child: MaterialApp.router(
          routerConfig: _goRouter,
        ),
      ),
    );
  }
}
