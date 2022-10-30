// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'next_word_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NextWordEvent {
  WordsList get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NextWordEventCopyWith<NextWordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextWordEventCopyWith<$Res> {
  factory $NextWordEventCopyWith(
          NextWordEvent value, $Res Function(NextWordEvent) then) =
      _$NextWordEventCopyWithImpl<$Res>;
  $Res call({WordsList list});

  $WordsListCopyWith<$Res> get list;
}

/// @nodoc
class _$NextWordEventCopyWithImpl<$Res>
    implements $NextWordEventCopyWith<$Res> {
  _$NextWordEventCopyWithImpl(this._value, this._then);

  final NextWordEvent _value;
  // ignore: unused_field
  final $Res Function(NextWordEvent) _then;

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
abstract class _$$_NextWordEventCopyWith<$Res>
    implements $NextWordEventCopyWith<$Res> {
  factory _$$_NextWordEventCopyWith(
          _$_NextWordEvent value, $Res Function(_$_NextWordEvent) then) =
      __$$_NextWordEventCopyWithImpl<$Res>;
  @override
  $Res call({WordsList list});

  @override
  $WordsListCopyWith<$Res> get list;
}

/// @nodoc
class __$$_NextWordEventCopyWithImpl<$Res>
    extends _$NextWordEventCopyWithImpl<$Res>
    implements _$$_NextWordEventCopyWith<$Res> {
  __$$_NextWordEventCopyWithImpl(
      _$_NextWordEvent _value, $Res Function(_$_NextWordEvent) _then)
      : super(_value, (v) => _then(v as _$_NextWordEvent));

  @override
  _$_NextWordEvent get _value => super._value as _$_NextWordEvent;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$_NextWordEvent(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as WordsList,
    ));
  }
}

/// @nodoc

class _$_NextWordEvent with DiagnosticableTreeMixin implements _NextWordEvent {
  const _$_NextWordEvent({required this.list});

  @override
  final WordsList list;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NextWordEvent(list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NextWordEvent'))
      ..add(DiagnosticsProperty('list', list));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextWordEvent &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(list));

  @JsonKey(ignore: true)
  @override
  _$$_NextWordEventCopyWith<_$_NextWordEvent> get copyWith =>
      __$$_NextWordEventCopyWithImpl<_$_NextWordEvent>(this, _$identity);
}

abstract class _NextWordEvent implements NextWordEvent {
  const factory _NextWordEvent({required final WordsList list}) =
      _$_NextWordEvent;

  @override
  WordsList get list;
  @override
  @JsonKey(ignore: true)
  _$$_NextWordEventCopyWith<_$_NextWordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
