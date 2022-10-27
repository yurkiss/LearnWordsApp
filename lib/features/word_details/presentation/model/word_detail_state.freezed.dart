// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'word_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordState {
  DisplayMode get mode => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordStateCopyWith<WordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordStateCopyWith<$Res> {
  factory $WordStateCopyWith(WordState value, $Res Function(WordState) then) =
      _$WordStateCopyWithImpl<$Res>;
  $Res call({DisplayMode mode, int? id, String title, String translation});
}

/// @nodoc
class _$WordStateCopyWithImpl<$Res> implements $WordStateCopyWith<$Res> {
  _$WordStateCopyWithImpl(this._value, this._then);

  final WordState _value;
  // ignore: unused_field
  final $Res Function(WordState) _then;

  @override
  $Res call({
    Object? mode = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? translation = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as DisplayMode,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      translation: translation == freezed
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_WordStateCopyWith<$Res> implements $WordStateCopyWith<$Res> {
  factory _$$_WordStateCopyWith(
          _$_WordState value, $Res Function(_$_WordState) then) =
      __$$_WordStateCopyWithImpl<$Res>;
  @override
  $Res call({DisplayMode mode, int? id, String title, String translation});
}

/// @nodoc
class __$$_WordStateCopyWithImpl<$Res> extends _$WordStateCopyWithImpl<$Res>
    implements _$$_WordStateCopyWith<$Res> {
  __$$_WordStateCopyWithImpl(
      _$_WordState _value, $Res Function(_$_WordState) _then)
      : super(_value, (v) => _then(v as _$_WordState));

  @override
  _$_WordState get _value => super._value as _$_WordState;

  @override
  $Res call({
    Object? mode = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? translation = freezed,
  }) {
    return _then(_$_WordState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as DisplayMode,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      translation: translation == freezed
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WordState with DiagnosticableTreeMixin implements _WordState {
  const _$_WordState(
      {required this.mode,
      this.id,
      required this.title,
      required this.translation});

  @override
  final DisplayMode mode;
  @override
  final int? id;
  @override
  final String title;
  @override
  final String translation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WordState(mode: $mode, id: $id, title: $title, translation: $translation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WordState'))
      ..add(DiagnosticsProperty('mode', mode))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('translation', translation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordState &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.translation, translation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(translation));

  @JsonKey(ignore: true)
  @override
  _$$_WordStateCopyWith<_$_WordState> get copyWith =>
      __$$_WordStateCopyWithImpl<_$_WordState>(this, _$identity);
}

abstract class _WordState implements WordState {
  const factory _WordState(
      {required final DisplayMode mode,
      final int? id,
      required final String title,
      required final String translation}) = _$_WordState;

  @override
  DisplayMode get mode;
  @override
  int? get id;
  @override
  String get title;
  @override
  String get translation;
  @override
  @JsonKey(ignore: true)
  _$$_WordStateCopyWith<_$_WordState> get copyWith =>
      throw _privateConstructorUsedError;
}
