// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginInfoImpl _$$LoginInfoImplFromJson(Map<String, dynamic> json) =>
    _$LoginInfoImpl(
      computerName: json['computerName'] as String,
      os: json['os'] as String,
      productId: json['productId'] as String,
      requestTime: DateTime.parse(json['requestTime'] as String),
      userEmail: json['userEmail'] as String,
      userId: json['userId'] as String,
      avatarUrl: json['avatarUrl'] as String,
      displayName: json['displayName'] as String,
    );

Map<String, dynamic> _$$LoginInfoImplToJson(_$LoginInfoImpl instance) =>
    <String, dynamic>{
      'computerName': instance.computerName,
      'os': instance.os,
      'productId': instance.productId,
      'requestTime': instance.requestTime.toIso8601String(),
      'userEmail': instance.userEmail,
      'userId': instance.userId,
      'avatarUrl': instance.avatarUrl,
      'displayName': instance.displayName,
    };
