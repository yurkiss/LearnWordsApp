import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_detail_state.freezed.dart';

@freezed
abstract class WordState with _$WordState {
  const factory WordState({
    required DisplayMode mode,
    required String title,
    required String translation,
  }) = _WordState;

  factory WordState.initial() => const WordState(title: '', translation: '', mode: DisplayMode.create);
}

enum DisplayMode { create, edit }
