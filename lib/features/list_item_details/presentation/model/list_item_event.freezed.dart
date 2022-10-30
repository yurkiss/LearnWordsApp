// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_item_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListItemEvent {
  WordsList get list => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordsList list, String title) saveItemEvent,
    required TResult Function(WordsList list) queryListEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WordsList list, String title)? saveItemEvent,
    TResult Function(WordsList list)? queryListEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordsList list, String title)? saveItemEvent,
    TResult Function(WordsList list)? queryListEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveListItemEvent value) saveItemEvent,
    required TResult Function(QueryListEvent value) queryListEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveListItemEvent value)? saveItemEvent,
    TResult Function(QueryListEvent value)? queryListEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveListItemEvent value)? saveItemEvent,
    TResult Function(QueryListEvent value)? queryListEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListItemEventCopyWith<ListItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListItemEventCopyWith<$Res> {
  factory $ListItemEventCopyWith(
          ListItemEvent value, $Res Function(ListItemEvent) then) =
      _$ListItemEventCopyWithImpl<$Res>;
  $Res call({WordsList list});

  $WordsListCopyWith<$Res> get list;
}

/// @nodoc
class _$ListItemEventCopyWithImpl<$Res>
    implements $ListItemEventCopyWith<$Res> {
  _$ListItemEventCopyWithImpl(this._value, this._then);

  final ListItemEvent _value;
  // ignore: unused_field
  final $Res Function(ListItemEvent) _then;

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
abstract class _$$SaveListItemEventCopyWith<$Res>
    implements $ListItemEventCopyWith<$Res> {
  factory _$$SaveListItemEventCopyWith(
          _$SaveListItemEvent value, $Res Function(_$SaveListItemEvent) then) =
      __$$SaveListItemEventCopyWithImpl<$Res>;
  @override
  $Res call({WordsList list, String title});

  @override
  $WordsListCopyWith<$Res> get list;
}

/// @nodoc
class __$$SaveListItemEventCopyWithImpl<$Res>
    extends _$ListItemEventCopyWithImpl<$Res>
    implements _$$SaveListItemEventCopyWith<$Res> {
  __$$SaveListItemEventCopyWithImpl(
      _$SaveListItemEvent _value, $Res Function(_$SaveListItemEvent) _then)
      : super(_value, (v) => _then(v as _$SaveListItemEvent));

  @override
  _$SaveListItemEvent get _value => super._value as _$SaveListItemEvent;

  @override
  $Res call({
    Object? list = freezed,
    Object? title = freezed,
  }) {
    return _then(_$SaveListItemEvent(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as WordsList,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveListItemEvent
    with DiagnosticableTreeMixin
    implements SaveListItemEvent {
  const _$SaveListItemEvent({required this.list, required this.title});

  @override
  final WordsList list;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListItemEvent.saveItemEvent(list: $list, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListItemEvent.saveItemEvent'))
      ..add(DiagnosticsProperty('list', list))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveListItemEvent &&
            const DeepCollectionEquality().equals(other.list, list) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(list),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$SaveListItemEventCopyWith<_$SaveListItemEvent> get copyWith =>
      __$$SaveListItemEventCopyWithImpl<_$SaveListItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordsList list, String title) saveItemEvent,
    required TResult Function(WordsList list) queryListEvent,
  }) {
    return saveItemEvent(list, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WordsList list, String title)? saveItemEvent,
    TResult Function(WordsList list)? queryListEvent,
  }) {
    return saveItemEvent?.call(list, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordsList list, String title)? saveItemEvent,
    TResult Function(WordsList list)? queryListEvent,
    required TResult orElse(),
  }) {
    if (saveItemEvent != null) {
      return saveItemEvent(list, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveListItemEvent value) saveItemEvent,
    required TResult Function(QueryListEvent value) queryListEvent,
  }) {
    return saveItemEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveListItemEvent value)? saveItemEvent,
    TResult Function(QueryListEvent value)? queryListEvent,
  }) {
    return saveItemEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveListItemEvent value)? saveItemEvent,
    TResult Function(QueryListEvent value)? queryListEvent,
    required TResult orElse(),
  }) {
    if (saveItemEvent != null) {
      return saveItemEvent(this);
    }
    return orElse();
  }
}

abstract class SaveListItemEvent implements ListItemEvent {
  const factory SaveListItemEvent(
      {required final WordsList list,
      required final String title}) = _$SaveListItemEvent;

  @override
  WordsList get list;
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$SaveListItemEventCopyWith<_$SaveListItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryListEventCopyWith<$Res>
    implements $ListItemEventCopyWith<$Res> {
  factory _$$QueryListEventCopyWith(
          _$QueryListEvent value, $Res Function(_$QueryListEvent) then) =
      __$$QueryListEventCopyWithImpl<$Res>;
  @override
  $Res call({WordsList list});

  @override
  $WordsListCopyWith<$Res> get list;
}

/// @nodoc
class __$$QueryListEventCopyWithImpl<$Res>
    extends _$ListItemEventCopyWithImpl<$Res>
    implements _$$QueryListEventCopyWith<$Res> {
  __$$QueryListEventCopyWithImpl(
      _$QueryListEvent _value, $Res Function(_$QueryListEvent) _then)
      : super(_value, (v) => _then(v as _$QueryListEvent));

  @override
  _$QueryListEvent get _value => super._value as _$QueryListEvent;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$QueryListEvent(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as WordsList,
    ));
  }
}

/// @nodoc

class _$QueryListEvent with DiagnosticableTreeMixin implements QueryListEvent {
  const _$QueryListEvent({required this.list});

  @override
  final WordsList list;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListItemEvent.queryListEvent(list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListItemEvent.queryListEvent'))
      ..add(DiagnosticsProperty('list', list));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryListEvent &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(list));

  @JsonKey(ignore: true)
  @override
  _$$QueryListEventCopyWith<_$QueryListEvent> get copyWith =>
      __$$QueryListEventCopyWithImpl<_$QueryListEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordsList list, String title) saveItemEvent,
    required TResult Function(WordsList list) queryListEvent,
  }) {
    return queryListEvent(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WordsList list, String title)? saveItemEvent,
    TResult Function(WordsList list)? queryListEvent,
  }) {
    return queryListEvent?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordsList list, String title)? saveItemEvent,
    TResult Function(WordsList list)? queryListEvent,
    required TResult orElse(),
  }) {
    if (queryListEvent != null) {
      return queryListEvent(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveListItemEvent value) saveItemEvent,
    required TResult Function(QueryListEvent value) queryListEvent,
  }) {
    return queryListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveListItemEvent value)? saveItemEvent,
    TResult Function(QueryListEvent value)? queryListEvent,
  }) {
    return queryListEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveListItemEvent value)? saveItemEvent,
    TResult Function(QueryListEvent value)? queryListEvent,
    required TResult orElse(),
  }) {
    if (queryListEvent != null) {
      return queryListEvent(this);
    }
    return orElse();
  }
}

abstract class QueryListEvent implements ListItemEvent {
  const factory QueryListEvent({required final WordsList list}) =
      _$QueryListEvent;

  @override
  WordsList get list;
  @override
  @JsonKey(ignore: true)
  _$$QueryListEventCopyWith<_$QueryListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
