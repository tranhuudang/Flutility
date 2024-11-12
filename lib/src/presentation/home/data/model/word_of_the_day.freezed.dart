// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_of_the_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WordOfTheDay _$WordOfTheDayFromJson(Map<String, dynamic> json) {
  return _WordOfTheDay.fromJson(json);
}

/// @nodoc
mixin _$WordOfTheDay {
  String get word => throw _privateConstructorUsedError;
  String get partOfSpeech => throw _privateConstructorUsedError;
  String get pronunciation => throw _privateConstructorUsedError;
  String get meaning => throw _privateConstructorUsedError;
  List<Example> get examples => throw _privateConstructorUsedError;

  /// Serializes this WordOfTheDay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WordOfTheDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WordOfTheDayCopyWith<WordOfTheDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordOfTheDayCopyWith<$Res> {
  factory $WordOfTheDayCopyWith(
          WordOfTheDay value, $Res Function(WordOfTheDay) then) =
      _$WordOfTheDayCopyWithImpl<$Res, WordOfTheDay>;
  @useResult
  $Res call(
      {String word,
      String partOfSpeech,
      String pronunciation,
      String meaning,
      List<Example> examples});
}

/// @nodoc
class _$WordOfTheDayCopyWithImpl<$Res, $Val extends WordOfTheDay>
    implements $WordOfTheDayCopyWith<$Res> {
  _$WordOfTheDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WordOfTheDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? partOfSpeech = null,
    Object? pronunciation = null,
    Object? meaning = null,
    Object? examples = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      pronunciation: null == pronunciation
          ? _value.pronunciation
          : pronunciation // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      examples: null == examples
          ? _value.examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<Example>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordOfTheDayImplCopyWith<$Res>
    implements $WordOfTheDayCopyWith<$Res> {
  factory _$$WordOfTheDayImplCopyWith(
          _$WordOfTheDayImpl value, $Res Function(_$WordOfTheDayImpl) then) =
      __$$WordOfTheDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word,
      String partOfSpeech,
      String pronunciation,
      String meaning,
      List<Example> examples});
}

/// @nodoc
class __$$WordOfTheDayImplCopyWithImpl<$Res>
    extends _$WordOfTheDayCopyWithImpl<$Res, _$WordOfTheDayImpl>
    implements _$$WordOfTheDayImplCopyWith<$Res> {
  __$$WordOfTheDayImplCopyWithImpl(
      _$WordOfTheDayImpl _value, $Res Function(_$WordOfTheDayImpl) _then)
      : super(_value, _then);

  /// Create a copy of WordOfTheDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? partOfSpeech = null,
    Object? pronunciation = null,
    Object? meaning = null,
    Object? examples = null,
  }) {
    return _then(_$WordOfTheDayImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      pronunciation: null == pronunciation
          ? _value.pronunciation
          : pronunciation // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      examples: null == examples
          ? _value._examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<Example>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordOfTheDayImpl implements _WordOfTheDay {
  const _$WordOfTheDayImpl(
      {required this.word,
      required this.partOfSpeech,
      required this.pronunciation,
      required this.meaning,
      required final List<Example> examples})
      : _examples = examples;

  factory _$WordOfTheDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordOfTheDayImplFromJson(json);

  @override
  final String word;
  @override
  final String partOfSpeech;
  @override
  final String pronunciation;
  @override
  final String meaning;
  final List<Example> _examples;
  @override
  List<Example> get examples {
    if (_examples is EqualUnmodifiableListView) return _examples;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_examples);
  }

  @override
  String toString() {
    return 'WordOfTheDay(word: $word, partOfSpeech: $partOfSpeech, pronunciation: $pronunciation, meaning: $meaning, examples: $examples)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordOfTheDayImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.partOfSpeech, partOfSpeech) ||
                other.partOfSpeech == partOfSpeech) &&
            (identical(other.pronunciation, pronunciation) ||
                other.pronunciation == pronunciation) &&
            (identical(other.meaning, meaning) || other.meaning == meaning) &&
            const DeepCollectionEquality().equals(other._examples, _examples));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, word, partOfSpeech,
      pronunciation, meaning, const DeepCollectionEquality().hash(_examples));

  /// Create a copy of WordOfTheDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WordOfTheDayImplCopyWith<_$WordOfTheDayImpl> get copyWith =>
      __$$WordOfTheDayImplCopyWithImpl<_$WordOfTheDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordOfTheDayImplToJson(
      this,
    );
  }
}

abstract class _WordOfTheDay implements WordOfTheDay {
  const factory _WordOfTheDay(
      {required final String word,
      required final String partOfSpeech,
      required final String pronunciation,
      required final String meaning,
      required final List<Example> examples}) = _$WordOfTheDayImpl;

  factory _WordOfTheDay.fromJson(Map<String, dynamic> json) =
      _$WordOfTheDayImpl.fromJson;

  @override
  String get word;
  @override
  String get partOfSpeech;
  @override
  String get pronunciation;
  @override
  String get meaning;
  @override
  List<Example> get examples;

  /// Create a copy of WordOfTheDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WordOfTheDayImplCopyWith<_$WordOfTheDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Example _$ExampleFromJson(Map<String, dynamic> json) {
  return _Example.fromJson(json);
}

/// @nodoc
mixin _$Example {
  String get example => throw _privateConstructorUsedError;
  String get translatedExample => throw _privateConstructorUsedError;

  /// Serializes this Example to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Example
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExampleCopyWith<Example> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleCopyWith<$Res> {
  factory $ExampleCopyWith(Example value, $Res Function(Example) then) =
      _$ExampleCopyWithImpl<$Res, Example>;
  @useResult
  $Res call({String example, String translatedExample});
}

/// @nodoc
class _$ExampleCopyWithImpl<$Res, $Val extends Example>
    implements $ExampleCopyWith<$Res> {
  _$ExampleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Example
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? example = null,
    Object? translatedExample = null,
  }) {
    return _then(_value.copyWith(
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      translatedExample: null == translatedExample
          ? _value.translatedExample
          : translatedExample // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleImplCopyWith<$Res> implements $ExampleCopyWith<$Res> {
  factory _$$ExampleImplCopyWith(
          _$ExampleImpl value, $Res Function(_$ExampleImpl) then) =
      __$$ExampleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String example, String translatedExample});
}

/// @nodoc
class __$$ExampleImplCopyWithImpl<$Res>
    extends _$ExampleCopyWithImpl<$Res, _$ExampleImpl>
    implements _$$ExampleImplCopyWith<$Res> {
  __$$ExampleImplCopyWithImpl(
      _$ExampleImpl _value, $Res Function(_$ExampleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Example
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? example = null,
    Object? translatedExample = null,
  }) {
    return _then(_$ExampleImpl(
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      translatedExample: null == translatedExample
          ? _value.translatedExample
          : translatedExample // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExampleImpl implements _Example {
  const _$ExampleImpl({required this.example, required this.translatedExample});

  factory _$ExampleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExampleImplFromJson(json);

  @override
  final String example;
  @override
  final String translatedExample;

  @override
  String toString() {
    return 'Example(example: $example, translatedExample: $translatedExample)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleImpl &&
            (identical(other.example, example) || other.example == example) &&
            (identical(other.translatedExample, translatedExample) ||
                other.translatedExample == translatedExample));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, example, translatedExample);

  /// Create a copy of Example
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleImplCopyWith<_$ExampleImpl> get copyWith =>
      __$$ExampleImplCopyWithImpl<_$ExampleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleImplToJson(
      this,
    );
  }
}

abstract class _Example implements Example {
  const factory _Example(
      {required final String example,
      required final String translatedExample}) = _$ExampleImpl;

  factory _Example.fromJson(Map<String, dynamic> json) = _$ExampleImpl.fromJson;

  @override
  String get example;
  @override
  String get translatedExample;

  /// Create a copy of Example
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExampleImplCopyWith<_$ExampleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
