
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

part 'learning_bloc_state.dart';
part 'learning_bloc_event.dart';
part 'learning_bloc.freezed.dart';


class LearningBloc extends Bloc<LearningEvent, LearningState> {
  final IWordsRepository wordsRepository;
  List<WordModel> words = [];
  LearningBloc(this.wordsRepository) : super(const LearningState.initial(words: [])) {
    on<_GetWordsForStudy>(_handleGetWordsForStudy);
    on<_SendLearnedWords>(_handleSendLearnedWords);
  }

  Future<void> _handleGetWordsForStudy(_GetWordsForStudy event, Emitter<LearningState> emit) async{
    List<WordModel> newWords = await wordsRepository.getWordsForStudy();
      words = newWords;
      emit(LearningState.gotWordsForStudy(words: words));
      emit(LearningState.initial(words: words));
    }

  Future<void> _handleSendLearnedWords(_SendLearnedWords event, Emitter<LearningState> emit) async{
    await wordsRepository.sendLearnedWords(wordsId: event.wordsId);
    emit(LearningState.sendedLearnedWords(words: words));
  }
}