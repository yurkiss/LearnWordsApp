import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learnwordsapp/domain/model/word.dart';

part 'words_list_state.freezed.dart';

@freezed
class WordsListState with _$WordsListState {
  const factory WordsListState({
    @Default(false) bool isLoading,
    required Option<List<Word>> lists,
  }) = _WordsListState;

  factory WordsListState.initial() => const WordsListState(lists: None());
}
