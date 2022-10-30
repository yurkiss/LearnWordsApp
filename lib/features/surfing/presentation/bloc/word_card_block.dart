import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/common/utils/indefinite_iterator.dart';
import 'package:learnwordsapp/common/domain/model/word.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';
import 'package:learnwordsapp/common/domain/repository/words_repository.dart';
import 'package:learnwordsapp/features/surfing/presentation/model/next_word_event.dart';
import 'package:learnwordsapp/features/surfing/presentation/model/word_card_state.dart';

@injectable
class WordCardBloc extends Bloc<NextWordEvent, WordCardState> {
  final WordsRepository wordsRepository;

  WordsList? _selectedList;
  Iterator<Word>? _wordIterator;

  WordCardBloc(this.wordsRepository) : super(WordCardState.initial()) {
    on<NextWordEvent>((NextWordEvent event, Emitter<WordCardState> emit) async {
      if (_selectedList == null) {
        await queryListAndWords(event);
        _wordIterator?.moveNext();
      }

      if (_wordIterator != null) {
        final Option<Word> word = optionOf(_wordIterator!.current);
        emit.call(
            state.copyWith(selectedList: optionOf(_selectedList), word: word));
        _wordIterator!.moveNext();
      }
    });
  }

  Future<void> queryListAndWords(NextWordEvent event) async {
    List<WordsList> lists = await wordsRepository.getLists();
    if (lists.isNotEmpty) {
      _selectedList = event.list;

      List<Word> words = await wordsRepository.getWordsInList(event.list);
      _wordIterator = IndefiniteIterator(words);
    }
  }
}
