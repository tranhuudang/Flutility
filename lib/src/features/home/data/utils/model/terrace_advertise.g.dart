// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terrace_advertise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TerraceAdvertise _$TerraceAdvertiseFromJson(Map<String, dynamic> json) =>
    _TerraceAdvertise(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      iconUrl: json['iconUrl'] as String,
      link: json['link'] as String,
      previewImage: json['previewImage'] as String?,
      isActive: json['isActive'] as bool? ?? true,
      order: (json['order'] as num?)?.toInt() ?? 0,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$TerraceAdvertiseToJson(_TerraceAdvertise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'iconUrl': instance.iconUrl,
      'link': instance.link,
      'previewImage': instance.previewImage,
      'isActive': instance.isActive,
      'order': instance.order,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };
