import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_item_event.freezed.dart';

@freezed
class ListItemEvent with _$ListItemEvent {
  const factory ListItemEvent.saveItemEvent({required String title}) = SaveListItemEvent;
}
