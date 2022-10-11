// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'word_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordCardState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<WordsList> get selectedList => throw _privateConstructorUsedError;
  Option<Word> get word => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordCardStateCopyWith<WordCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordCardStateCopyWith<$Res> {
  factory $WordCardStateCopyWith(
          WordCardState value, $Res Function(WordCardState) then) =
      _$WordCardStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, Option<WordsList> selectedList, Option<Word> word});
}

/// @nodoc
class _$WordCardStateCopyWithImpl<$Res>
    implements $WordCardStateCopyWith<$Res> {
  _$WordCardStateCopyWithImpl(this._value, this._then);

  final WordCardState _value;
  // ignore: unused_field
  final $Res Function(WordCardState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? selectedList = freezed,
    Object? word = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedList: selectedList == freezed
          ? _value.selectedList
          : selectedList // ignore: cast_nullable_to_non_nullable
              as Option<WordsList>,
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Option<Word>,
    ));
  }
}

/// @nodoc
abstract class _$$_WordCardStateCopyWith<$Res>
    implements $WordCardStateCopyWith<$Res> {
  factory _$$_WordCardStateCopyWith(
          _$_WordCardState value, $Res Function(_$_WordCardState) then) =
      __$$_WordCardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading, Option<WordsList> selectedList, Option<Word> word});
}

/// @nodoc
class __$$_WordCardStateCopyWithImpl<$Res>
    extends _$WordCardStateCopyWithImpl<$Res>
    implements _$$_WordCardStateCopyWith<$Res> {
  __$$_WordCardStateCopyWithImpl(
      _$_WordCardState _value, $Res Function(_$_WordCardState) _then)
      : super(_value, (v) => _then(v as _$_WordCardState));

  @override
  _$_WordCardState get _value => super._value as _$_WordCardState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? selectedList = freezed,
    Object? word = freezed,
  }) {
    return _then(_$_WordCardState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedList: selectedList == freezed
          ? _value.selectedList
          : selectedList // ignore: cast_nullable_to_non_nullable
              as Option<WordsList>,
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Option<Word>,
    ));
  }
}

/// @nodoc

class _$_WordCardState with DiagnosticableTreeMixin implements _WordCardState {
  const _$_WordCardState(
      {this.isLoading = false, required this.selectedList, required this.word});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Option<WordsList> selectedList;
  @override
  final Option<Word> word;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WordCardState(isLoading: $isLoading, selectedList: $selectedList, word: $word)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WordCardState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('selectedList', selectedList))
      ..add(DiagnosticsProperty('word', word));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordCardState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.selectedList, selectedList) &&
            const DeepCollectionEquality().equals(other.word, word));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(selectedList),
      const DeepCollectionEquality().hash(word));

  @JsonKey(ignore: true)
  @override
  _$$_WordCardStateCopyWith<_$_WordCardState> get copyWith =>
      __$$_WordCardStateCopyWithImpl<_$_WordCardState>(this, _$identity);
}

abstract class _WordCardState implements WordCardState {
  const factory _WordCardState(
      {final bool isLoading,
      required final Option<WordsList> selectedList,
      required final Option<Word> word}) = _$_WordCardState;

  @override
  bool get isLoading;
  @override
  Option<WordsList> get selectedList;
  @override
  Option<Word> get word;
  @override
  @JsonKey(ignore: true)
  _$$_WordCardStateCopyWith<_$_WordCardState> get copyWith =>
      throw _privateConstructorUsedError;
}
