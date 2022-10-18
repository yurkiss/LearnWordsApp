import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'word.freezed.dart';

@freezed
class Word with _$Word {
   factory Word({
    @Default(0) int id,
    required int listId,
    required String title,
    required String translation,
    String? image,
  }) = _Word;

}
