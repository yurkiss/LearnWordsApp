import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learnwordsapp/domain/model/word.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';

part 'word_card_state.freezed.dart';

@freezed
class WordCardState with _$WordCardState {
  const factory WordCardState({
    @Default(false) bool isLoading,
    required Option<WordsList> selectedList,
    required Option<Word> word,
  }) = _WordCardState;

  factory WordCardState.initial() =>
      const WordCardState(selectedList: None(), word: None());
}
