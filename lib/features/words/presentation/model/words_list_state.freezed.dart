// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'words_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordsListState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<List<Word>> get lists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordsListStateCopyWith<WordsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordsListStateCopyWith<$Res> {
  factory $WordsListStateCopyWith(
          WordsListState value, $Res Function(WordsListState) then) =
      _$WordsListStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, Option<List<Word>> lists});
}

/// @nodoc
class _$WordsListStateCopyWithImpl<$Res>
    implements $WordsListStateCopyWith<$Res> {
  _$WordsListStateCopyWithImpl(this._value, this._then);

  final WordsListState _value;
  // ignore: unused_field
  final $Res Function(WordsListState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? lists = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lists: lists == freezed
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as Option<List<Word>>,
    ));
  }
}

/// @nodoc
abstract class _$$_WordsListStateCopyWith<$Res>
    implements $WordsListStateCopyWith<$Res> {
  factory _$$_WordsListStateCopyWith(
          _$_WordsListState value, $Res Function(_$_WordsListState) then) =
      __$$_WordsListStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, Option<List<Word>> lists});
}

/// @nodoc
class __$$_WordsListStateCopyWithImpl<$Res>
    extends _$WordsListStateCopyWithImpl<$Res>
    implements _$$_WordsListStateCopyWith<$Res> {
  __$$_WordsListStateCopyWithImpl(
      _$_WordsListState _value, $Res Function(_$_WordsListState) _then)
      : super(_value, (v) => _then(v as _$_WordsListState));

  @override
  _$_WordsListState get _value => super._value as _$_WordsListState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? lists = freezed,
  }) {
    return _then(_$_WordsListState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lists: lists == freezed
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as Option<List<Word>>,
    ));
  }
}

/// @nodoc

class _$_WordsListState
    with DiagnosticableTreeMixin
    implements _WordsListState {
  const _$_WordsListState({this.isLoading = false, required this.lists});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Option<List<Word>> lists;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WordsListState(isLoading: $isLoading, lists: $lists)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WordsListState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('lists', lists));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordsListState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.lists, lists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(lists));

  @JsonKey(ignore: true)
  @override
  _$$_WordsListStateCopyWith<_$_WordsListState> get copyWith =>
      __$$_WordsListStateCopyWithImpl<_$_WordsListState>(this, _$identity);
}

abstract class _WordsListState implements WordsListState {
  const factory _WordsListState(
      {final bool isLoading,
      required final Option<List<Word>> lists}) = _$_WordsListState;

  @override
  bool get isLoading;
  @override
  Option<List<Word>> get lists;
  @override
  @JsonKey(ignore: true)
  _$$_WordsListStateCopyWith<_$_WordsListState> get copyWith =>
      throw _privateConstructorUsedError;
}
