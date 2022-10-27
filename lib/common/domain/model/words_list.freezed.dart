// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'words_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordsList {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordsListCopyWith<WordsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordsListCopyWith<$Res> {
  factory $WordsListCopyWith(WordsList value, $Res Function(WordsList) then) =
      _$WordsListCopyWithImpl<$Res>;
  $Res call({int id, String title});
}

/// @nodoc
class _$WordsListCopyWithImpl<$Res> implements $WordsListCopyWith<$Res> {
  _$WordsListCopyWithImpl(this._value, this._then);

  final WordsList _value;
  // ignore: unused_field
  final $Res Function(WordsList) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_WordsListCopyWith<$Res> implements $WordsListCopyWith<$Res> {
  factory _$$_WordsListCopyWith(
          _$_WordsList value, $Res Function(_$_WordsList) then) =
      __$$_WordsListCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title});
}

/// @nodoc
class __$$_WordsListCopyWithImpl<$Res> extends _$WordsListCopyWithImpl<$Res>
    implements _$$_WordsListCopyWith<$Res> {
  __$$_WordsListCopyWithImpl(
      _$_WordsList _value, $Res Function(_$_WordsList) _then)
      : super(_value, (v) => _then(v as _$_WordsList));

  @override
  _$_WordsList get _value => super._value as _$_WordsList;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_WordsList(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WordsList with DiagnosticableTreeMixin implements _WordsList {
  const _$_WordsList({required this.id, required this.title});

  @override
  final int id;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WordsList(id: $id, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WordsList'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordsList &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_WordsListCopyWith<_$_WordsList> get copyWith =>
      __$$_WordsListCopyWithImpl<_$_WordsList>(this, _$identity);
}

abstract class _WordsList implements WordsList {
  const factory _WordsList(
      {required final int id, required final String title}) = _$_WordsList;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_WordsListCopyWith<_$_WordsList> get copyWith =>
      throw _privateConstructorUsedError;
}
