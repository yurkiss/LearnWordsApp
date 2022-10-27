// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'complete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Complete {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompleteCopyWith<Complete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteCopyWith<$Res> {
  factory $CompleteCopyWith(Complete value, $Res Function(Complete) then) =
      _$CompleteCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$CompleteCopyWithImpl<$Res> implements $CompleteCopyWith<$Res> {
  _$CompleteCopyWithImpl(this._value, this._then);

  final Complete _value;
  // ignore: unused_field
  final $Res Function(Complete) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CompleteCopyWith<$Res> implements $CompleteCopyWith<$Res> {
  factory _$$_CompleteCopyWith(
          _$_Complete value, $Res Function(_$_Complete) then) =
      __$$_CompleteCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_CompleteCopyWithImpl<$Res> extends _$CompleteCopyWithImpl<$Res>
    implements _$$_CompleteCopyWith<$Res> {
  __$$_CompleteCopyWithImpl(
      _$_Complete _value, $Res Function(_$_Complete) _then)
      : super(_value, (v) => _then(v as _$_Complete));

  @override
  _$_Complete get _value => super._value as _$_Complete;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Complete(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Complete with DiagnosticableTreeMixin implements _Complete {
  const _$_Complete(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Complete(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Complete'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Complete &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_CompleteCopyWith<_$_Complete> get copyWith =>
      __$$_CompleteCopyWithImpl<_$_Complete>(this, _$identity);
}

abstract class _Complete implements Complete {
  const factory _Complete(final String message) = _$_Complete;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_CompleteCopyWith<_$_Complete> get copyWith =>
      throw _privateConstructorUsedError;
}
