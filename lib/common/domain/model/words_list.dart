import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'words_list.freezed.dart';

@freezed
class WordsList with _$WordsList {
  const factory WordsList({
    required int id,
    required String title,
  }) = _WordsList;
}
