import 'dart:async';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_vk/flutter_login_vk.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:uwords/features/auth/data/data_sources/interface_network_user_data_source.dart';
import 'package:uwords/features/auth/data/data_sources/network_user_data_source.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/auth/data/repository/user_repository.dart';
import 'package:uwords/features/auth/presentation/auth_page.dart';
import 'package:uwords/features/auth/presentation/register_page.dart';
import 'package:uwords/features/database/data_sources/savable_user_data_source.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';
import 'package:uwords/features/global/animations/change_page_animation.dart';
import 'package:uwords/features/grade/bloc/grade_bloc.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/data/data_sources/interface_words_data_source.dart';
import 'package:uwords/features/learn/data/data_sources/words_data_source.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/learn/data/repositores/words_repository.dart';
import 'package:uwords/features/learn/presentation/core_learn_page.dart';
import 'package:uwords/features/learn/presentation/learn_screens/core_learn_screen.dart';
import 'package:uwords/features/learn/presentation/subtopic_page.dart';
import 'package:uwords/features/main/data/data_sources/audio_datasource.dart';
import 'package:uwords/features/main/data/repositories/audio_repository.dart';
import 'package:uwords/features/main/data/repositories/interface_audio_repository.dart';
import 'package:uwords/features/main/data/data_sources/iterface_audio_datasource.dart';
import 'package:uwords/features/main/presentation/pages/home_page.dart';
import 'package:uwords/features/main/presentation/pages/scaffold_with_navbar.dart';
import 'package:uwords/features/main/bloc/audio_link_bloc/audio_link_bloc.dart';
import 'package:uwords/features/main/bloc/record_bloc/record_bloc.dart';
import 'package:uwords/features/onboarding/prezentation/onboarding_page.dart';
import 'package:uwords/features/profile/bloc/profile_bloc.dart';
import 'package:uwords/features/profile/prezentation/profile_page.dart';
import 'package:uwords/features/subscription/bloc/subscription_bloc/subscription_bloc.dart';
import 'package:uwords/features/subscription/data/data_sources/network_tariff_data_source.dart';
import 'package:uwords/features/subscription/data/repositories/subscription_repository.dart';
import 'package:uwords/features/subscription/presentation/subscription_page.dart';
import 'package:uwords/features/websoket_exceptions/websocket_service.dart';
import 'firebase_options.dart';
import 'package:flutter/services.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  final getIt = GetIt.instance;

  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<IExceptionWebsocketService>(
      ExceptionWebsocketService());
  getIt.registerSingleton<SpeechToText>(SpeechToText());
  getIt.registerLazySingleton<IUserRepository>(() {
    final INetworkUserDataSource networkUserDataSource =
        NetworkUserDataSource();
    final ISavableUserDataSource savableUserDataSource =
        SavableUserDataSource(AppDatabase());
    return UserRepository(
        networkUserDataSource: networkUserDataSource,
        savableUserDataSource: savableUserDataSource);
  });
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]).then((value) => runApp(MainApp()));
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
          builder: (context, state) => const RegisterPage(),
        ),
        GoRoute(path: '/auth', builder: (context, state) => const AuthPage()),
        GoRoute(
            path: "/onboarding",
            builder: (context, state) => const OnboardingPage()),
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
            path: '/subscription',
            builder: (context, state) => const SubscriptionPage()),
        GoRoute(
            path: '/learn',
            builder: (context, state) => const CoreLearnPage(),
            routes: [
              GoRoute(
                  path: 'subtopic',
                  name: 'subtopic',
                  parentNavigatorKey: _rootNavKey,
                  pageBuilder: (context, state) =>
                      SharedAxisTransitionPage(child: const SubtopicPage())),
            ]),
        GoRoute(
          path: '/learnCore',
          builder: (context, state) => const LearnCoreScreen(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfilePage(),
        ),
      ],
    ),
  ],
);

class MainApp extends StatelessWidget {
  final getIt = GetIt.instance;
  MainApp({super.key});
  final IAudioDataSource audioDataSource = AudioDataSource();
  final IWordsDataSource wordsDataSource = WordsDataSource();
  final INetworkTariffDataSource networkTariffDataSource =
      NetworkTariffDataSource();
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IUserRepository>(
            create: (context) => getIt.get<IUserRepository>()),
        RepositoryProvider<IAudioRepository>(
            create: (context) =>
                AudioRepository(audioDataSource: audioDataSource)),
        RepositoryProvider<IWordsRepository>(
            create: (context) =>
                WordsRepository(wordsDataSource: wordsDataSource)),
        RepositoryProvider<ISubscriptionRepository>(
            create: (context) => SubscriptionRepository(
                networkTariffDataSource: networkTariffDataSource))
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  AuthBloc(userRepository: context.read<IUserRepository>(), vk: VKLogin())),
          BlocProvider(
              create: (context) => ProfileBloc(
                    userRepository: context.read<IUserRepository>(),
                    wordsRepository: context.read<IWordsRepository>(),
                  )),
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
                  userRepository: context.read<IUserRepository>())),
          BlocProvider(
              create: (context) => SubscriptionBloc(
                  subscriptionRepository:
                      context.read<ISubscriptionRepository>(),
                  userRepository: context.read<IUserRepository>())),
          BlocProvider(
              create: (context) => GradeBloc(
                    userRepository: context.read<IUserRepository>(),
                  )),
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
