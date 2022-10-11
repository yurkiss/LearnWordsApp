import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';
import 'package:learnwordsapp/domain/repository/lists_repository.dart';
import 'package:learnwordsapp/features/lists/presentation/model/lists_event.dart';
import 'package:learnwordsapp/features/lists/presentation/model/lists_state.dart';

@injectable
class ListsBloc extends Bloc<ListsEvent, ListsState> {
  final ListsRepository listsRepository;

  //TODO: Cancel subscription
  StreamSubscription<List<WordsList>>? _subscription;

  ListsBloc(this.listsRepository) : super(ListsState.initial()) {
    _subscription =
        listsRepository.observeLists().listen((List<WordsList> data) {
      add(ListsEvent.listsQueryResultEvent(lists: data));
    });

    on<ListsQueryResultEvent>((event, Emitter<ListsState> emit) {
      emit(state.copyWith(lists: optionOf(event.lists), isLoading: false));
    });
  }
}
