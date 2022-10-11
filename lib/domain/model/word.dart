import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'word.freezed.dart';

@freezed
class Word with _$Word {
  const factory Word({
    required String title,
    required String translation,
    String? image,
  }) = _Word;

  factory Word.initial() => const Word(
      title: "none",
      translation: "none",
  );
}