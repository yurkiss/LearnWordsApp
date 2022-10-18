import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/domain/model/word.dart';
import 'package:learnwordsapp/domain/repository/words_repository.dart';
import 'package:learnwordsapp/features/word_details/presentation/model/word_detail_event.dart';
import 'package:learnwordsapp/features/word_details/presentation/model/word_detail_state.dart';

@injectable
class WordDetailBloc extends Bloc<WordEvent, WordState> {
  final WordsRepository wordsRepository;

  WordDetailBloc(this.wordsRepository) : super(WordState.initial()) {
    on<SaveWordEvent>((SaveWordEvent event, Emitter<WordState> emit) async {
      await wordsRepository.addWord(Word(
        listId: event.list.id,
        title: event.title,
        translation: event.translation,
      ));
    });
    on<QueryWordEvent>((QueryWordEvent event, Emitter<WordState> emit) async {
      final word = await wordsRepository.getWordById(event.id);
      word.fold(() => null, (a) {
        emit(state.copyWith(
          title: a.title,
          translation: a.translation,
        ));
      });
    });
  }
}
