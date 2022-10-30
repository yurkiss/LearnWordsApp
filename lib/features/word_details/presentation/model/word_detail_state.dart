import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learnwordsapp/features/common/display_mode.dart';

part 'word_detail_state.freezed.dart';

@freezed
abstract class WordState with _$WordState {
  const factory WordState({
    required DisplayMode mode,
    int? id,
    required String title,
    required String translation,
  }) = _WordState;

  factory WordState.initial() => const WordState(title: '', translation: '', mode: DisplayMode.create);
}
