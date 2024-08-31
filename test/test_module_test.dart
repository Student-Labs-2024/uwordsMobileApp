import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/data/constants/mock_data.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';

class MockUserRepository extends Mock implements IUserRepository {}

class MockWordsRepository extends Mock implements IWordsRepository {}

void main() {
  final IWordsRepository mockWordsRepository = MockWordsRepository();
  final IUserRepository mockUserRepository = MockUserRepository();
  const String accessToken =
      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0eXBlIjoiYWNjZXNzIiwic3ViIjoidXNlciIsInVzZXJfaWQiOjIsImVtYWlsIjoiYXJ0ZW1maWx5YWtpbjVAZ21haWwuY29tIiwiaWF0IjoxNzIxMzI1NDE0LCJleHAiOjE3MjEzMjkwMTR9.CcdAcKXXsnVGjWL3emebA3cFRivQt1NmxLD6eFPU2NwmcqDC-v1am8f7Kvqq4cy_e_HvablfhGezgmMpTAMlG1AKd_XtiWm_RuFQhafZDtMzsguHI8FFDweAzibzTnr5s6lP1D8pqSP9JAOIR-_qtq2KdpwZlSrzyo9pzLL-TcB9LGUKT3jtoUo0Jsk-cHvDHIYi8YRXEtEp9hbRMvBiSiadYayLDpfJ-z_ZqfehxzjK39J3SYNngXbgV61smtXffDA3GuK6WvDFN0c2tLp8zqBbpridWc60E8zTNE8_qmGWbBnx9YD9_M4ZVrvPTy5-NivnZymDU9WZUL9fSM_l9EqeTa7ja4IWwoZ_DmTvmtX4r5iCI2upUL6OLuC2LHr7mHS4jd1KnR4pJ8MKw0sskZQZTVCdcOR0XrfKdO0wb-m76SdFo4Y_RIzB2-7lsGYOCVNKCIKDuoEpu1SKGax5ThZOF7mjlz2NsXuWr4anL_hM64nUdfQQyamO1f9ELiEtlvqAXUEiX3SJEB-6o_wC1ZjxzUN0o7bVzUhV8lBQQt1KwFn0sYOo3bYY68zr6m1EAXGw099QBaEW-Mzv2ij577nr2pg577im4YFbVjqmir4bJ1zhCGTlnFvAYYNeqCou7of7WhH_lPcEMmBOQR3NU9iWzs5NX8FxusZwfeCKmOQ";
  const String refreshToken =
      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0eXBlIjoicmVmcmVzaCIsInN1YiI6InVzZXIiLCJ1c2VyX2lkIjoyLCJpYXQiOjE3MjEzMjU0MTQsImV4cCI6MTcyMzkxNzQxNH0.XfnfPI_s9zbaSBFi8WfLCycBNiuugntZRciDcCeG6cmBUe5ESKLZnvZ5jVFMA8FPrPW4F35Px4-Ukeg20vMTTF8cMNnFh_ElilusiblhJJr8V6hJjFuRAAGr9EO2RfpKenm9AsSw1CPElm1Icjv5IVNqkbEWAr8g4iqrOXOKWJQpnv9qAOnmptxjV_H8tz8DHNY-F7H8eOkDHRqxeOxevLQPWsa4o_-bbZaDIUcuDTRxjN0f062-J3Rcuuss-ZsV59VGq6oXifDrH6oT6q7WWRewMa-bBoWygNOmP88j-tWksxV99JAzAyWhe6jIfFK4yzOiijVmAipsabMC2mZ8nsghzFwlvh93-0dmrSXwTxIHbXsUUZlM899iy7eaLKkUK_hkeefZ88-xHNKi85V2vckqBEI-CWnq64BQXOO6rblMtqbVQQuopinNb8139AgR1uB8gMMyUBHxK-T2PB3AsCMLcBWOP2xZUhCReXFpbEk266Q1N895MVOLOlEzHBQzmjPIgJOKsCmOAGMHnl2AOwZLcvnpd_KSzVhOoNO2rn7ydPvV-5YkQvthKlVRZAPIYy1uqos4qrxNMkPII6TxKED3iY9alezUvVvfOq8Q2NOr5Lr4NGNPix_eF3EtMNC7uI8MygHyvhV6QWsj2xL-t4OyvdmnSquO1lQHfshBVmM";
  final List<Subtopic> mockSubtopics = mockTopicWithOneSubtopic.subtopics;
  final List<TypeMatcher<TrainingState>> trainingStates =
      List.generate(mockSubtopics.first.wordInfoList.length * 4, (int index) {
    return isA<TrainingState>();
  });
  group('TrainingBloc starting study', () {
    blocTest(
      'emits [TestScreens states and final screen]',
      setUp: () {
        when(() => mockUserRepository.getCurrentUserAccessToken())
            .thenAnswer((_) => Future.value(accessToken));
        when(() => mockUserRepository.refreshAccessToken())
            .thenAnswer((_) => Future.value(refreshToken));
        when(() => mockWordsRepository.getWordsForStart(
            accessToken: accessToken,
            topicTitle: mockTopicWithOneSubtopic.topicTitle,
            subtopicTitle: mockTopicWithOneSubtopic
                .subtopics.first.subtopicTitle)).thenAnswer((_) => Future.value(
            mockTopicWithOneSubtopic.subtopics.first.wordInfoList));
        when(() => mockWordsRepository.sendLearnedWords(
            accessToken: accessToken,
            wordsId: mockTopicWithOneSubtopic.subtopics.first.wordInfoList
                .map((element) => element.id)
                .toList())).thenAnswer((_) async {});
      },
      build: () => TrainingBloc(
          wordsRepository: mockWordsRepository,
          userRepository: mockUserRepository),
      act: (bloc) async {
        bloc.add(
            TrainingEvent.startStudy(mockTopicWithOneSubtopic.subtopics.first));
        await Future.delayed(const Duration(milliseconds: 1));
        addNextStep(bloc, mockSubtopics.first.wordInfoList.length * 4);
      },
      expect: () => [
        const TrainingState.loading(),
        ...trainingStates,
        isA<TrainingState>()
      ],
    );
  });
}

void addNextStep(TrainingBloc bloc, int numberOfSteps) {
  for (int i = 0; i < numberOfSteps; i++) {
    bloc.add(const TrainingEvent.nextStep());
  }
}
