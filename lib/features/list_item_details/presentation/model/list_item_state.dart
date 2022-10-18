import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_item_state.freezed.dart';

@freezed
class ListItemState with _$ListItemState {
  const factory ListItemState({
    required String? name,
  }) = _ListItemState;

  factory ListItemState.initial() => const ListItemState(name: null);
}
