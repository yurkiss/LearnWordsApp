import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'complete.freezed.dart';

@freezed
class Complete with _$Complete {
  const factory Complete(String message) = _Complete;
}
