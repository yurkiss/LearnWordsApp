import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/common/domain/model/word.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';
import 'package:learnwordsapp/common/domain/repository/lists_repository.dart';
import 'package:learnwordsapp/common/domain/repository/words_repository.dart';
import 'package:learnwordsapp/features/words/presentation/model/words_list_event.dart';
import 'package:learnwordsapp/features/words/presentation/model/words_list_state.dart';

@injectable
class WordsBloc extends Bloc<WordsListEvent, WordsListState> {
  final ListsRepository listsRepository;
  final WordsRepository wordsRepository;
  final WordsList wordsList;

  StreamSubscription<List<Word>>? _subscription;

  WordsBloc(this.listsRepository, this.wordsRepository, @factoryParam WordsList list)
      : wordsList = list, super(WordsListState.initial()) {

    _subscription =
        wordsRepository.observeWordsInList(wordsList).listen((data) {
      add(WordsListEvent.queryWordsResult(words: data));
    });

    on<QueryWordsResult>((QueryWordsResult event, Emitter<WordsListState> emit) {
      emit(state.copyWith(lists: optionOf(event.words), isLoading: false));
    });

  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
