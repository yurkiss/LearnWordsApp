import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'next_word_event.freezed.dart';

@freezed
class NextWordEvent with _$NextWordEvent {
  const factory NextWordEvent() = _NextWordEvent;
}
