// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListItemState {
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListItemStateCopyWith<ListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListItemStateCopyWith<$Res> {
  factory $ListItemStateCopyWith(
          ListItemState value, $Res Function(ListItemState) then) =
      _$ListItemStateCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class _$ListItemStateCopyWithImpl<$Res>
    implements $ListItemStateCopyWith<$Res> {
  _$ListItemStateCopyWithImpl(this._value, this._then);

  final ListItemState _value;
  // ignore: unused_field
  final $Res Function(ListItemState) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ListItemStateCopyWith<$Res>
    implements $ListItemStateCopyWith<$Res> {
  factory _$$_ListItemStateCopyWith(
          _$_ListItemState value, $Res Function(_$_ListItemState) then) =
      __$$_ListItemStateCopyWithImpl<$Res>;
  @override
  $Res call({String? name});
}

/// @nodoc
class __$$_ListItemStateCopyWithImpl<$Res>
    extends _$ListItemStateCopyWithImpl<$Res>
    implements _$$_ListItemStateCopyWith<$Res> {
  __$$_ListItemStateCopyWithImpl(
      _$_ListItemState _value, $Res Function(_$_ListItemState) _then)
      : super(_value, (v) => _then(v as _$_ListItemState));

  @override
  _$_ListItemState get _value => super._value as _$_ListItemState;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_ListItemState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ListItemState with DiagnosticableTreeMixin implements _ListItemState {
  const _$_ListItemState({required this.name});

  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListItemState(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListItemState'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListItemState &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_ListItemStateCopyWith<_$_ListItemState> get copyWith =>
      __$$_ListItemStateCopyWithImpl<_$_ListItemState>(this, _$identity);
}

abstract class _ListItemState implements ListItemState {
  const factory _ListItemState({required final String? name}) =
      _$_ListItemState;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_ListItemStateCopyWith<_$_ListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
