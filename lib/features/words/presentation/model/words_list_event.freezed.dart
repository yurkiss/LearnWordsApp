// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'words_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int listId) newWordInList,
    required TResult Function(List<Word> words) queryWordsResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int listId)? newWordInList,
    TResult Function(List<Word> words)? queryWordsResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int listId)? newWordInList,
    TResult Function(List<Word> words)? queryWordsResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewWordInList value) newWordInList,
    required TResult Function(QueryWordsResult value) queryWordsResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewWordInList value)? newWordInList,
    TResult Function(QueryWordsResult value)? queryWordsResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewWordInList value)? newWordInList,
    TResult Function(QueryWordsResult value)? queryWordsResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordsListEventCopyWith<$Res> {
  factory $WordsListEventCopyWith(
          WordsListEvent value, $Res Function(WordsListEvent) then) =
      _$WordsListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WordsListEventCopyWithImpl<$Res>
    implements $WordsListEventCopyWith<$Res> {
  _$WordsListEventCopyWithImpl(this._value, this._then);

  final WordsListEvent _value;
  // ignore: unused_field
  final $Res Function(WordsListEvent) _then;
}

/// @nodoc
abstract class _$$NewWordInListCopyWith<$Res> {
  factory _$$NewWordInListCopyWith(
          _$NewWordInList value, $Res Function(_$NewWordInList) then) =
      __$$NewWordInListCopyWithImpl<$Res>;
  $Res call({int listId});
}

/// @nodoc
class __$$NewWordInListCopyWithImpl<$Res>
    extends _$WordsListEventCopyWithImpl<$Res>
    implements _$$NewWordInListCopyWith<$Res> {
  __$$NewWordInListCopyWithImpl(
      _$NewWordInList _value, $Res Function(_$NewWordInList) _then)
      : super(_value, (v) => _then(v as _$NewWordInList));

  @override
  _$NewWordInList get _value => super._value as _$NewWordInList;

  @override
  $Res call({
    Object? listId = freezed,
  }) {
    return _then(_$NewWordInList(
      listId: listId == freezed
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NewWordInList with DiagnosticableTreeMixin implements NewWordInList {
  const _$NewWordInList({required this.listId});

  @override
  final int listId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WordsListEvent.newWordInList(listId: $listId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WordsListEvent.newWordInList'))
      ..add(DiagnosticsProperty('listId', listId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewWordInList &&
            const DeepCollectionEquality().equals(other.listId, listId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(listId));

  @JsonKey(ignore: true)
  @override
  _$$NewWordInListCopyWith<_$NewWordInList> get copyWith =>
      __$$NewWordInListCopyWithImpl<_$NewWordInList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int listId) newWordInList,
    required TResult Function(List<Word> words) queryWordsResult,
  }) {
    return newWordInList(listId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int listId)? newWordInList,
    TResult Function(List<Word> words)? queryWordsResult,
  }) {
    return newWordInList?.call(listId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int listId)? newWordInList,
    TResult Function(List<Word> words)? queryWordsResult,
    required TResult orElse(),
  }) {
    if (newWordInList != null) {
      return newWordInList(listId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewWordInList value) newWordInList,
    required TResult Function(QueryWordsResult value) queryWordsResult,
  }) {
    return newWordInList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewWordInList value)? newWordInList,
    TResult Function(QueryWordsResult value)? queryWordsResult,
  }) {
    return newWordInList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewWordInList value)? newWordInList,
    TResult Function(QueryWordsResult value)? queryWordsResult,
    required TResult orElse(),
  }) {
    if (newWordInList != null) {
      return newWordInList(this);
    }
    return orElse();
  }
}

abstract class NewWordInList implements WordsListEvent {
  const factory NewWordInList({required final int listId}) = _$NewWordInList;

  int get listId;
  @JsonKey(ignore: true)
  _$$NewWordInListCopyWith<_$NewWordInList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryWordsResultCopyWith<$Res> {
  factory _$$QueryWordsResultCopyWith(
          _$QueryWordsResult value, $Res Function(_$QueryWordsResult) then) =
      __$$QueryWordsResultCopyWithImpl<$Res>;
  $Res call({List<Word> words});
}

/// @nodoc
class __$$QueryWordsResultCopyWithImpl<$Res>
    extends _$WordsListEventCopyWithImpl<$Res>
    implements _$$QueryWordsResultCopyWith<$Res> {
  __$$QueryWordsResultCopyWithImpl(
      _$QueryWordsResult _value, $Res Function(_$QueryWordsResult) _then)
      : super(_value, (v) => _then(v as _$QueryWordsResult));

  @override
  _$QueryWordsResult get _value => super._value as _$QueryWordsResult;

  @override
  $Res call({
    Object? words = freezed,
  }) {
    return _then(_$QueryWordsResult(
      words: words == freezed
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Word>,
    ));
  }
}

/// @nodoc

class _$QueryWordsResult
    with DiagnosticableTreeMixin
    implements QueryWordsResult {
  const _$QueryWordsResult({required final List<Word> words}) : _words = words;

  final List<Word> _words;
  @override
  List<Word> get words {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WordsListEvent.queryWordsResult(words: $words)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WordsListEvent.queryWordsResult'))
      ..add(DiagnosticsProperty('words', words));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryWordsResult &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  _$$QueryWordsResultCopyWith<_$QueryWordsResult> get copyWith =>
      __$$QueryWordsResultCopyWithImpl<_$QueryWordsResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int listId) newWordInList,
    required TResult Function(List<Word> words) queryWordsResult,
  }) {
    return queryWordsResult(words);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int listId)? newWordInList,
    TResult Function(List<Word> words)? queryWordsResult,
  }) {
    return queryWordsResult?.call(words);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int listId)? newWordInList,
    TResult Function(List<Word> words)? queryWordsResult,
    required TResult orElse(),
  }) {
    if (queryWordsResult != null) {
      return queryWordsResult(words);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewWordInList value) newWordInList,
    required TResult Function(QueryWordsResult value) queryWordsResult,
  }) {
    return queryWordsResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewWordInList value)? newWordInList,
    TResult Function(QueryWordsResult value)? queryWordsResult,
  }) {
    return queryWordsResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewWordInList value)? newWordInList,
    TResult Function(QueryWordsResult value)? queryWordsResult,
    required TResult orElse(),
  }) {
    if (queryWordsResult != null) {
      return queryWordsResult(this);
    }
    return orElse();
  }
}

abstract class QueryWordsResult implements WordsListEvent {
  const factory QueryWordsResult({required final List<Word> words}) =
      _$QueryWordsResult;

  List<Word> get words;
  @JsonKey(ignore: true)
  _$$QueryWordsResultCopyWith<_$QueryWordsResult> get copyWith =>
      throw _privateConstructorUsedError;
}
