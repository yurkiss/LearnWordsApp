// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_list_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateListParams {
  WordsList get list => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordsList list) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WordsList list)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordsList list)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateListParams value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateListParams value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateListParams value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateListParamsCopyWith<CreateListParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateListParamsCopyWith<$Res> {
  factory $CreateListParamsCopyWith(
          CreateListParams value, $Res Function(CreateListParams) then) =
      _$CreateListParamsCopyWithImpl<$Res>;
  $Res call({WordsList list});

  $WordsListCopyWith<$Res> get list;
}

/// @nodoc
class _$CreateListParamsCopyWithImpl<$Res>
    implements $CreateListParamsCopyWith<$Res> {
  _$CreateListParamsCopyWithImpl(this._value, this._then);

  final CreateListParams _value;
  // ignore: unused_field
  final $Res Function(CreateListParams) _then;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as WordsList,
    ));
  }

  @override
  $WordsListCopyWith<$Res> get list {
    return $WordsListCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }
}

/// @nodoc
abstract class _$$_CreateListParamsCopyWith<$Res>
    implements $CreateListParamsCopyWith<$Res> {
  factory _$$_CreateListParamsCopyWith(
          _$_CreateListParams value, $Res Function(_$_CreateListParams) then) =
      __$$_CreateListParamsCopyWithImpl<$Res>;
  @override
  $Res call({WordsList list});

  @override
  $WordsListCopyWith<$Res> get list;
}

/// @nodoc
class __$$_CreateListParamsCopyWithImpl<$Res>
    extends _$CreateListParamsCopyWithImpl<$Res>
    implements _$$_CreateListParamsCopyWith<$Res> {
  __$$_CreateListParamsCopyWithImpl(
      _$_CreateListParams _value, $Res Function(_$_CreateListParams) _then)
      : super(_value, (v) => _then(v as _$_CreateListParams));

  @override
  _$_CreateListParams get _value => super._value as _$_CreateListParams;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$_CreateListParams(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as WordsList,
    ));
  }
}

/// @nodoc

class _$_CreateListParams
    with DiagnosticableTreeMixin
    implements _CreateListParams {
  const _$_CreateListParams({required this.list});

  @override
  final WordsList list;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateListParams.create(list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateListParams.create'))
      ..add(DiagnosticsProperty('list', list));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateListParams &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(list));

  @JsonKey(ignore: true)
  @override
  _$$_CreateListParamsCopyWith<_$_CreateListParams> get copyWith =>
      __$$_CreateListParamsCopyWithImpl<_$_CreateListParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordsList list) create,
  }) {
    return create(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WordsList list)? create,
  }) {
    return create?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordsList list)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateListParams value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateListParams value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateListParams value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _CreateListParams implements CreateListParams {
  const factory _CreateListParams({required final WordsList list}) =
      _$_CreateListParams;

  @override
  WordsList get list;
  @override
  @JsonKey(ignore: true)
  _$$_CreateListParamsCopyWith<_$_CreateListParams> get copyWith =>
      throw _privateConstructorUsedError;
}
