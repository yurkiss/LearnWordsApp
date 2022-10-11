import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';

part 'lists_event.freezed.dart';

@freezed
abstract class ListsEvent {
  const factory ListsEvent.newListEvent() = NewListEvent;

  const factory ListsEvent.listsQueryResultEvent(
      {required List<WordsList> lists}) = ListsQueryResultEvent;
}
