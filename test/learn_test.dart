import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';

class MockWordsRepository extends Mock implements IWordsRepository {}

class MockUserRepository extends Mock implements IUserRepository {}

void main() {
  final IWordsRepository mockWordsRepository = MockWordsRepository();
  final IUserRepository mockUserRepository = MockUserRepository();

  final List<Topic> topics = [
    Topic(topicTitle: "Topic 1", subtopics: [
      Subtopic(
          subtopicTitle: "Subtopic 1.1",
          wordInfoList: [],
          wordCount: 47,
          pictureLink: '',
          progress: 32),
      Subtopic(
          subtopicTitle: "Subtopic 1.2",
          wordInfoList: [],
          wordCount: 32,
          pictureLink: '',
          progress: 45),
    ]),
    Topic(topicTitle: "Topic 2", subtopics: [
      Subtopic(
          subtopicTitle: "Subtopic 2.1",
          wordInfoList: [],
          wordCount: 70,
          pictureLink: '',
          progress: 100),
      Subtopic(
          subtopicTitle: "Subtopic 2.2",
          wordInfoList: [],
          wordCount: 50,
          pictureLink: '',
          progress: 50),
    ]),
  ];

  const String accessToken =
      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0eXBlIjoiYWNjZXNzIiwic3ViIjoidXNlciIsInVzZXJfaWQiOjIsImVtYWlsIjoiYXJ0ZW1maWx5YWtpbjVAZ21haWwuY29tIiwiaWF0IjoxNzIxMzI1NDE0LCJleHAiOjE3MjEzMjkwMTR9.CcdAcKXXsnVGjWL3emebA3cFRivQt1NmxLD6eFPU2NwmcqDC-v1am8f7Kvqq4cy_e_HvablfhGezgmMpTAMlG1AKd_XtiWm_RuFQhafZDtMzsguHI8FFDweAzibzTnr5s6lP1D8pqSP9JAOIR-_qtq2KdpwZlSrzyo9pzLL-TcB9LGUKT3jtoUo0Jsk-cHvDHIYi8YRXEtEp9hbRMvBiSiadYayLDpfJ-z_ZqfehxzjK39J3SYNngXbgV61smtXffDA3GuK6WvDFN0c2tLp8zqBbpridWc60E8zTNE8_qmGWbBnx9YD9_M4ZVrvPTy5-NivnZymDU9WZUL9fSM_l9EqeTa7ja4IWwoZ_DmTvmtX4r5iCI2upUL6OLuC2LHr7mHS4jd1KnR4pJ8MKw0sskZQZTVCdcOR0XrfKdO0wb-m76SdFo4Y_RIzB2-7lsGYOCVNKCIKDuoEpu1SKGax5ThZOF7mjlz2NsXuWr4anL_hM64nUdfQQyamO1f9ELiEtlvqAXUEiX3SJEB-6o_wC1ZjxzUN0o7bVzUhV8lBQQt1KwFn0sYOo3bYY68zr6m1EAXGw099QBaEW-Mzv2ij577nr2pg577im4YFbVjqmir4bJ1zhCGTlnFvAYYNeqCou7of7WhH_lPcEMmBOQR3NU9iWzs5NX8FxusZwfeCKmOQ";
  const String refreshToken =
      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0eXBlIjoicmVmcmVzaCIsInN1YiI6InVzZXIiLCJ1c2VyX2lkIjoyLCJpYXQiOjE3MjEzMjU0MTQsImV4cCI6MTcyMzkxNzQxNH0.XfnfPI_s9zbaSBFi8WfLCycBNiuugntZRciDcCeG6cmBUe5ESKLZnvZ5jVFMA8FPrPW4F35Px4-Ukeg20vMTTF8cMNnFh_ElilusiblhJJr8V6hJjFuRAAGr9EO2RfpKenm9AsSw1CPElm1Icjv5IVNqkbEWAr8g4iqrOXOKWJQpnv9qAOnmptxjV_H8tz8DHNY-F7H8eOkDHRqxeOxevLQPWsa4o_-bbZaDIUcuDTRxjN0f062-J3Rcuuss-ZsV59VGq6oXifDrH6oT6q7WWRewMa-bBoWygNOmP88j-tWksxV99JAzAyWhe6jIfFK4yzOiijVmAipsabMC2mZ8nsghzFwlvh93-0dmrSXwTxIHbXsUUZlM899iy7eaLKkUK_hkeefZ88-xHNKi85V2vckqBEI-CWnq64BQXOO6rblMtqbVQQuopinNb8139AgR1uB8gMMyUBHxK-T2PB3AsCMLcBWOP2xZUhCReXFpbEk266Q1N895MVOLOlEzHBQzmjPIgJOKsCmOAGMHnl2AOwZLcvnpd_KSzVhOoNO2rn7ydPvV-5YkQvthKlVRZAPIYy1uqos4qrxNMkPII6TxKED3iY9alezUvVvfOq8Q2NOr5Lr4NGNPix_eF3EtMNC7uI8MygHyvhV6QWsj2xL-t4OyvdmnSquO1lQHfshBVmM";

  setUp(() {
    registerFallbackValue(LearningState.initial(topics: []));
  });

  group('LearningBloc', () {
    setUp(() {
      reset(mockWordsRepository);
      reset(mockUserRepository);
      when(() => mockUserRepository.getCurrentUserAccessToken())
          .thenAnswer((_) => Future.value(accessToken));
      when(() => mockUserRepository.refreshAccessToken())
          .thenAnswer((_) => Future.value(refreshToken));
      when(() => mockUserRepository.refreshAccessToken())
          .thenAnswer((_) => Future.value(refreshToken));
    });

    test('initial state is correct', () {
      final bloc = LearningBloc(
          wordsRepository: mockWordsRepository,
          userRepository: mockUserRepository);
      expect(bloc.state, const LearningState.initial(topics: []));
    });

    group('GetTopics', () {
      blocTest<LearningBloc, LearningState>(
        setUp: () {
          when(() => mockWordsRepository.getTopics(accessToken: accessToken))
              .thenAnswer((_) => Future<List<Topic>>.value(topics));
        },
        'emits [GotWordsForStudy, Initial] when GetTopics is added',
        build: () => LearningBloc(
            wordsRepository: mockWordsRepository,
            userRepository: mockUserRepository),
        act: (bloc) => bloc.add(const LearningEvent.getTopics()),
        expect: () => [
          LearningState.gotWordsForStudy(topics: topics),
          LearningState.initial(topics: topics),
        ],
        verify: (bloc) {
          verify(() => mockWordsRepository.getTopics(accessToken: accessToken))
              .called(1);
          verify(() => mockUserRepository.getCurrentUserAccessToken())
              .called(1);
        },
      );

      blocTest<LearningBloc, LearningState>(
        'emits [Failed] when GetTopics throws SocketException',
        setUp: () {
          when(() => mockWordsRepository.getTopics(accessToken: accessToken))
              .thenThrow(const SocketException(''));
        },
        build: () => LearningBloc(
            wordsRepository: mockWordsRepository,
            userRepository: mockUserRepository),
        act: (bloc) => bloc.add(const LearningEvent.getTopics()),
        expect: () => [
          const LearningState.failed(topics: []),
        ],
      );
    });
  });
}
