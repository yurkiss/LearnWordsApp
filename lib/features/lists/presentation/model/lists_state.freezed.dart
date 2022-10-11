// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lists_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<List<WordsList>> get lists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListsStateCopyWith<ListsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListsStateCopyWith<$Res> {
  factory $ListsStateCopyWith(
          ListsState value, $Res Function(ListsState) then) =
      _$ListsStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, Option<List<WordsList>> lists});
}

/// @nodoc
class _$ListsStateCopyWithImpl<$Res> implements $ListsStateCopyWith<$Res> {
  _$ListsStateCopyWithImpl(this._value, this._then);

  final ListsState _value;
  // ignore: unused_field
  final $Res Function(ListsState) _then;

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
              as Option<List<WordsList>>,
    ));
  }
}

/// @nodoc
abstract class _$$_ListsStateCopyWith<$Res>
    implements $ListsStateCopyWith<$Res> {
  factory _$$_ListsStateCopyWith(
          _$_ListsState value, $Res Function(_$_ListsState) then) =
      __$$_ListsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, Option<List<WordsList>> lists});
}

/// @nodoc
class __$$_ListsStateCopyWithImpl<$Res> extends _$ListsStateCopyWithImpl<$Res>
    implements _$$_ListsStateCopyWith<$Res> {
  __$$_ListsStateCopyWithImpl(
      _$_ListsState _value, $Res Function(_$_ListsState) _then)
      : super(_value, (v) => _then(v as _$_ListsState));

  @override
  _$_ListsState get _value => super._value as _$_ListsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? lists = freezed,
  }) {
    return _then(_$_ListsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lists: lists == freezed
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as Option<List<WordsList>>,
    ));
  }
}

/// @nodoc

class _$_ListsState with DiagnosticableTreeMixin implements _ListsState {
  const _$_ListsState({this.isLoading = false, required this.lists});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Option<List<WordsList>> lists;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListsState(isLoading: $isLoading, lists: $lists)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('lists', lists));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListsState &&
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
  _$$_ListsStateCopyWith<_$_ListsState> get copyWith =>
      __$$_ListsStateCopyWithImpl<_$_ListsState>(this, _$identity);
}

abstract class _ListsState implements ListsState {
  const factory _ListsState(
      {final bool isLoading,
      required final Option<List<WordsList>> lists}) = _$_ListsState;

  @override
  bool get isLoading;
  @override
  Option<List<WordsList>> get lists;
  @override
  @JsonKey(ignore: true)
  _$$_ListsStateCopyWith<_$_ListsState> get copyWith =>
      throw _privateConstructorUsedError;
}
