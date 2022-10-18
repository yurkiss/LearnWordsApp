// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'word_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String translation, WordsList list)
        saveWordEvent,
    required TResult Function(int id) queryWordEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String translation, WordsList list)?
        saveWordEvent,
    TResult Function(int id)? queryWordEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String translation, WordsList list)?
        saveWordEvent,
    TResult Function(int id)? queryWordEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveWordEvent value) saveWordEvent,
    required TResult Function(QueryWordEvent value) queryWordEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveWordEvent value)? saveWordEvent,
    TResult Function(QueryWordEvent value)? queryWordEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveWordEvent value)? saveWordEvent,
    TResult Function(QueryWordEvent value)? queryWordEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordEventCopyWith<$Res> {
  factory $WordEventCopyWith(WordEvent value, $Res Function(WordEvent) then) =
      _$WordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WordEventCopyWithImpl<$Res> implements $WordEventCopyWith<$Res> {
  _$WordEventCopyWithImpl(this._value, this._then);

  final WordEvent _value;
  // ignore: unused_field
  final $Res Function(WordEvent) _then;
}

/// @nodoc
abstract class _$$SaveWordEventCopyWith<$Res> {
  factory _$$SaveWordEventCopyWith(
          _$SaveWordEvent value, $Res Function(_$SaveWordEvent) then) =
      __$$SaveWordEventCopyWithImpl<$Res>;
  $Res call({String title, String translation, WordsList list});

  $WordsListCopyWith<$Res> get list;
}

/// @nodoc
class __$$SaveWordEventCopyWithImpl<$Res> extends _$WordEventCopyWithImpl<$Res>
    implements _$$SaveWordEventCopyWith<$Res> {
  __$$SaveWordEventCopyWithImpl(
      _$SaveWordEvent _value, $Res Function(_$SaveWordEvent) _then)
      : super(_value, (v) => _then(v as _$SaveWordEvent));

  @override
  _$SaveWordEvent get _value => super._value as _$SaveWordEvent;

  @override
  $Res call({
    Object? title = freezed,
    Object? translation = freezed,
    Object? list = freezed,
  }) {
    return _then(_$SaveWordEvent(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      translation: translation == freezed
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$SaveWordEvent with DiagnosticableTreeMixin implements SaveWordEvent {
  const _$SaveWordEvent(
      {required this.title, required this.translation, required this.list});

  @override
  final String title;
  @override
  final String translation;
  @override
  final WordsList list;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WordEvent.saveWordEvent(title: $title, translation: $translation, list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WordEvent.saveWordEvent'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('translation', translation))
      ..add(DiagnosticsProperty('list', list));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveWordEvent &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.translation, translation) &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(translation),
      const DeepCollectionEquality().hash(list));

  @JsonKey(ignore: true)
  @override
  _$$SaveWordEventCopyWith<_$SaveWordEvent> get copyWith =>
      __$$SaveWordEventCopyWithImpl<_$SaveWordEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String translation, WordsList list)
        saveWordEvent,
    required TResult Function(int id) queryWordEvent,
  }) {
    return saveWordEvent(title, translation, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String translation, WordsList list)?
        saveWordEvent,
    TResult Function(int id)? queryWordEvent,
  }) {
    return saveWordEvent?.call(title, translation, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String translation, WordsList list)?
        saveWordEvent,
    TResult Function(int id)? queryWordEvent,
    required TResult orElse(),
  }) {
    if (saveWordEvent != null) {
      return saveWordEvent(title, translation, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveWordEvent value) saveWordEvent,
    required TResult Function(QueryWordEvent value) queryWordEvent,
  }) {
    return saveWordEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveWordEvent value)? saveWordEvent,
    TResult Function(QueryWordEvent value)? queryWordEvent,
  }) {
    return saveWordEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveWordEvent value)? saveWordEvent,
    TResult Function(QueryWordEvent value)? queryWordEvent,
    required TResult orElse(),
  }) {
    if (saveWordEvent != null) {
      return saveWordEvent(this);
    }
    return orElse();
  }
}

abstract class SaveWordEvent implements WordEvent {
  const factory SaveWordEvent(
      {required final String title,
      required final String translation,
      required final WordsList list}) = _$SaveWordEvent;

  String get title;
  String get translation;
  WordsList get list;
  @JsonKey(ignore: true)
  _$$SaveWordEventCopyWith<_$SaveWordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryWordEventCopyWith<$Res> {
  factory _$$QueryWordEventCopyWith(
          _$QueryWordEvent value, $Res Function(_$QueryWordEvent) then) =
      __$$QueryWordEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$QueryWordEventCopyWithImpl<$Res> extends _$WordEventCopyWithImpl<$Res>
    implements _$$QueryWordEventCopyWith<$Res> {
  __$$QueryWordEventCopyWithImpl(
      _$QueryWordEvent _value, $Res Function(_$QueryWordEvent) _then)
      : super(_value, (v) => _then(v as _$QueryWordEvent));

  @override
  _$QueryWordEvent get _value => super._value as _$QueryWordEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$QueryWordEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QueryWordEvent with DiagnosticableTreeMixin implements QueryWordEvent {
  const _$QueryWordEvent({required this.id});

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WordEvent.queryWordEvent(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WordEvent.queryWordEvent'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryWordEvent &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$QueryWordEventCopyWith<_$QueryWordEvent> get copyWith =>
      __$$QueryWordEventCopyWithImpl<_$QueryWordEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String translation, WordsList list)
        saveWordEvent,
    required TResult Function(int id) queryWordEvent,
  }) {
    return queryWordEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String translation, WordsList list)?
        saveWordEvent,
    TResult Function(int id)? queryWordEvent,
  }) {
    return queryWordEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String translation, WordsList list)?
        saveWordEvent,
    TResult Function(int id)? queryWordEvent,
    required TResult orElse(),
  }) {
    if (queryWordEvent != null) {
      return queryWordEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveWordEvent value) saveWordEvent,
    required TResult Function(QueryWordEvent value) queryWordEvent,
  }) {
    return queryWordEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveWordEvent value)? saveWordEvent,
    TResult Function(QueryWordEvent value)? queryWordEvent,
  }) {
    return queryWordEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveWordEvent value)? saveWordEvent,
    TResult Function(QueryWordEvent value)? queryWordEvent,
    required TResult orElse(),
  }) {
    if (queryWordEvent != null) {
      return queryWordEvent(this);
    }
    return orElse();
  }
}

abstract class QueryWordEvent implements WordEvent {
  const factory QueryWordEvent({required final int id}) = _$QueryWordEvent;

  int get id;
  @JsonKey(ignore: true)
  _$$QueryWordEventCopyWith<_$QueryWordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
