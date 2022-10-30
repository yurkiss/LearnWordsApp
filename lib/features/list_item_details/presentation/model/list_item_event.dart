import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';

part 'list_item_event.freezed.dart';

@freezed
class ListItemEvent with _$ListItemEvent {
  const factory ListItemEvent.saveItemEvent({
    required WordsList list,
    required String title,
  }) = SaveListItemEvent;

  const factory ListItemEvent.queryListEvent({
    required WordsList list,
  }) = QueryListEvent;
}
