import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';

part 'next_word_event.freezed.dart';

@freezed
class NextWordEvent with _$NextWordEvent {
  const factory NextWordEvent({required WordsList list}) = _NextWordEvent;
}
