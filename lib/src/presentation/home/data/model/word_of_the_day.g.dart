// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_of_the_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordOfTheDayImpl _$$WordOfTheDayImplFromJson(Map<String, dynamic> json) =>
    _$WordOfTheDayImpl(
      word: json['word'] as String,
      partOfSpeech: json['partOfSpeech'] as String,
      pronunciation: json['pronunciation'] as String,
      meaning: json['meaning'] as String,
      examples: (json['examples'] as List<dynamic>)
          .map((e) => Example.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WordOfTheDayImplToJson(_$WordOfTheDayImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'partOfSpeech': instance.partOfSpeech,
      'pronunciation': instance.pronunciation,
      'meaning': instance.meaning,
      'examples': instance.examples,
    };

_$ExampleImpl _$$ExampleImplFromJson(Map<String, dynamic> json) =>
    _$ExampleImpl(
      example: json['example'] as String,
      translatedExample: json['translatedExample'] as String,
    );

Map<String, dynamic> _$$ExampleImplToJson(_$ExampleImpl instance) =>
    <String, dynamic>{
      'example': instance.example,
      'translatedExample': instance.translatedExample,
    };
