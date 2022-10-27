// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_word_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateWordParams {
  Word get word => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Word word) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Word word)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Word word)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWordParams value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateWordParams value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWordParams value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateWordParamsCopyWith<CreateWordParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWordParamsCopyWith<$Res> {
  factory $CreateWordParamsCopyWith(
          CreateWordParams value, $Res Function(CreateWordParams) then) =
      _$CreateWordParamsCopyWithImpl<$Res>;
  $Res call({Word word});

  $WordCopyWith<$Res> get word;
}

/// @nodoc
class _$CreateWordParamsCopyWithImpl<$Res>
    implements $CreateWordParamsCopyWith<$Res> {
  _$CreateWordParamsCopyWithImpl(this._value, this._then);

  final CreateWordParams _value;
  // ignore: unused_field
  final $Res Function(CreateWordParams) _then;

  @override
  $Res call({
    Object? word = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Word,
    ));
  }

  @override
  $WordCopyWith<$Res> get word {
    return $WordCopyWith<$Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value));
    });
  }
}

/// @nodoc
abstract class _$$_CreateWordParamsCopyWith<$Res>
    implements $CreateWordParamsCopyWith<$Res> {
  factory _$$_CreateWordParamsCopyWith(
          _$_CreateWordParams value, $Res Function(_$_CreateWordParams) then) =
      __$$_CreateWordParamsCopyWithImpl<$Res>;
  @override
  $Res call({Word word});

  @override
  $WordCopyWith<$Res> get word;
}

/// @nodoc
class __$$_CreateWordParamsCopyWithImpl<$Res>
    extends _$CreateWordParamsCopyWithImpl<$Res>
    implements _$$_CreateWordParamsCopyWith<$Res> {
  __$$_CreateWordParamsCopyWithImpl(
      _$_CreateWordParams _value, $Res Function(_$_CreateWordParams) _then)
      : super(_value, (v) => _then(v as _$_CreateWordParams));

  @override
  _$_CreateWordParams get _value => super._value as _$_CreateWordParams;

  @override
  $Res call({
    Object? word = freezed,
  }) {
    return _then(_$_CreateWordParams(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Word,
    ));
  }
}

/// @nodoc

class _$_CreateWordParams
    with DiagnosticableTreeMixin
    implements _CreateWordParams {
  const _$_CreateWordParams({required this.word});

  @override
  final Word word;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateWordParams.create(word: $word)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateWordParams.create'))
      ..add(DiagnosticsProperty('word', word));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateWordParams &&
            const DeepCollectionEquality().equals(other.word, word));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(word));

  @JsonKey(ignore: true)
  @override
  _$$_CreateWordParamsCopyWith<_$_CreateWordParams> get copyWith =>
      __$$_CreateWordParamsCopyWithImpl<_$_CreateWordParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Word word) create,
  }) {
    return create(word);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Word word)? create,
  }) {
    return create?.call(word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Word word)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWordParams value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateWordParams value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWordParams value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _CreateWordParams implements CreateWordParams {
  const factory _CreateWordParams({required final Word word}) =
      _$_CreateWordParams;

  @override
  Word get word;
  @override
  @JsonKey(ignore: true)
  _$$_CreateWordParamsCopyWith<_$_CreateWordParams> get copyWith =>
      throw _privateConstructorUsedError;
}
