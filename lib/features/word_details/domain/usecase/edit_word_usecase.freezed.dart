// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_word_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditWordParams {
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
    required TResult Function(_EditWordParams value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditWordParams value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditWordParams value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditWordParamsCopyWith<EditWordParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditWordParamsCopyWith<$Res> {
  factory $EditWordParamsCopyWith(
          EditWordParams value, $Res Function(EditWordParams) then) =
      _$EditWordParamsCopyWithImpl<$Res>;
  $Res call({Word word});

  $WordCopyWith<$Res> get word;
}

/// @nodoc
class _$EditWordParamsCopyWithImpl<$Res>
    implements $EditWordParamsCopyWith<$Res> {
  _$EditWordParamsCopyWithImpl(this._value, this._then);

  final EditWordParams _value;
  // ignore: unused_field
  final $Res Function(EditWordParams) _then;

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
abstract class _$$_EditWordParamsCopyWith<$Res>
    implements $EditWordParamsCopyWith<$Res> {
  factory _$$_EditWordParamsCopyWith(
          _$_EditWordParams value, $Res Function(_$_EditWordParams) then) =
      __$$_EditWordParamsCopyWithImpl<$Res>;
  @override
  $Res call({Word word});

  @override
  $WordCopyWith<$Res> get word;
}

/// @nodoc
class __$$_EditWordParamsCopyWithImpl<$Res>
    extends _$EditWordParamsCopyWithImpl<$Res>
    implements _$$_EditWordParamsCopyWith<$Res> {
  __$$_EditWordParamsCopyWithImpl(
      _$_EditWordParams _value, $Res Function(_$_EditWordParams) _then)
      : super(_value, (v) => _then(v as _$_EditWordParams));

  @override
  _$_EditWordParams get _value => super._value as _$_EditWordParams;

  @override
  $Res call({
    Object? word = freezed,
  }) {
    return _then(_$_EditWordParams(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Word,
    ));
  }
}

/// @nodoc

class _$_EditWordParams
    with DiagnosticableTreeMixin
    implements _EditWordParams {
  const _$_EditWordParams({required this.word});

  @override
  final Word word;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditWordParams.create(word: $word)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditWordParams.create'))
      ..add(DiagnosticsProperty('word', word));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditWordParams &&
            const DeepCollectionEquality().equals(other.word, word));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(word));

  @JsonKey(ignore: true)
  @override
  _$$_EditWordParamsCopyWith<_$_EditWordParams> get copyWith =>
      __$$_EditWordParamsCopyWithImpl<_$_EditWordParams>(this, _$identity);

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
    required TResult Function(_EditWordParams value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditWordParams value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditWordParams value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _EditWordParams implements EditWordParams {
  const factory _EditWordParams({required final Word word}) = _$_EditWordParams;

  @override
  Word get word;
  @override
  @JsonKey(ignore: true)
  _$$_EditWordParamsCopyWith<_$_EditWordParams> get copyWith =>
      throw _privateConstructorUsedError;
}
