import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learnwordsapp/domain/model/word.dart';

part 'words_list_event.freezed.dart';

@freezed
class WordsListEvent with _$WordsListEvent {
  const factory WordsListEvent.newWordInList({required int listId}) =
      NewWordInList;

  const factory WordsListEvent.queryWordsResult({required List<Word> words}) =
      QueryWordsResult;
}
