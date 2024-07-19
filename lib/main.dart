import 'dart:async';
import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:uwords/features/auth/data/data_sources/interface_network_user_data_source.dart';
import 'package:uwords/features/auth/data/data_sources/network_user_data_source.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/auth/data/repository/user_repository.dart';
import 'package:uwords/features/auth/presentation/auth_page.dart';
import 'package:uwords/features/database/data_sources/savable_user_data_source.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/data/data_sources/interface_words_data_source.dart';
import 'package:uwords/features/learn/data/data_sources/words_data_source.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/learn/data/repositores/words_repository.dart';
import 'package:uwords/features/learn/presentation/learn_screens/core_learn_screen.dart';
import 'package:uwords/features/main/data/data_sources/audio_datasource.dart';
import 'package:uwords/features/main/data/repositories/audio_repository.dart';
import 'package:uwords/features/main/data/repositories/interface_audio_repository.dart';
import 'package:uwords/features/main/data/data_sources/iterface_audio_datasource.dart';
import 'package:uwords/features/main/presentation/pages/home_page.dart';
import 'package:uwords/features/learn/presentation/learn_page.dart';
import 'package:uwords/features/main/presentation/pages/scaffold_with_navbar.dart';
import 'package:uwords/features/main/bloc/audioLink_bloc/audioLink_bloc.dart';
import 'package:uwords/features/main/bloc/record_bloc/record_bloc.dart';
import 'firebase_options.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp(MainApp());
  }, (error, stack) async {
    log(error.toString(), name: 'App Error', stackTrace: stack);
  });
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
        ),
        GoRoute(
          path: '/learnCore',
          builder: (context, state) => LearnCoreScreen(),
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
  final INetworkUserDataSource networkUserDataSource = NetworkUserDataSource();
  final ISavableUserDataSource savableUserDataSource =
      SavableUserDataSource(AppDatabase());
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IUserRepository>(
            create: (context) => UserRepository(
                networkUserDataSource: networkUserDataSource,
                savableUserDataSource: savableUserDataSource)),
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
                  AuthBloc(userRepository: context.read<IUserRepository>())),
          BlocProvider(
              create: (context) => AudioLinkBloc(
                  audioRepository: context.read<IAudioRepository>(),
                  userRepository: context.read<IUserRepository>())),
          BlocProvider(
              create: (context) => RecordBloc(
                  audioRepository: context.read<IAudioRepository>(),
                  userRepository: context.read<IUserRepository>())),
          BlocProvider(create: (context) => PlayerBloc()),
          BlocProvider(
              create: (context) => LearningBloc(
                  wordsRepository: context.read<IWordsRepository>(),
                  userRepository: context.read<IUserRepository>())),
          BlocProvider(
              create: (context) => TrainingBloc(
                  wordsRepository: context.read<IWordsRepository>(),
                  userRepository: context.read<IUserRepository>()))
        ],
        child: MaterialApp.router(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: _goRouter,
        ),
      ),
    );
  }
}
