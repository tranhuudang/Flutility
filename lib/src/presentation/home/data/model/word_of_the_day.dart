import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_of_the_day.freezed.dart';
part 'word_of_the_day.g.dart';

@freezed
class WordOfTheDay with _$WordOfTheDay {
  const factory WordOfTheDay({
    required String word,
    required String partOfSpeech,
    required String pronunciation,
    required String meaning,
    required List<Example> examples,
  }) = _WordOfTheDay;

  factory WordOfTheDay.fromJson(Map<String, dynamic> json) => _$WordOfTheDayFromJson(json);
}

@freezed
class Example with _$Example {
  const factory Example({
    required String example,
    required String translatedExample,
  }) = _Example;

  factory Example.fromJson(Map<String, dynamic> json) => _$ExampleFromJson(json);
}
