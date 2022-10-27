import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';

part 'word_detail_event.freezed.dart';

@freezed
class WordEvent with _$WordEvent {
  const factory WordEvent.saveWordEvent({
    int? id,
    required String title,
    required String translation,
    required WordsList list,
  }) = SaveWordEvent;

  const factory WordEvent.queryWordEvent({
    required int id,
  }) = QueryWordEvent;
}
