import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';

part 'lists_state.freezed.dart';

@freezed
class ListsState with _$ListsState {
  const factory ListsState({
    @Default(false) bool isLoading,
    required Option<List<WordsList>> lists,
  }) = _ListsState;

  factory ListsState.initial() => const ListsState(lists: None());
}
