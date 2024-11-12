// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginInfo _$LoginInfoFromJson(Map<String, dynamic> json) {
  return _LoginInfo.fromJson(json);
}

/// @nodoc
mixin _$LoginInfo {
  String get computerName => throw _privateConstructorUsedError;
  String get os => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  DateTime get requestTime => throw _privateConstructorUsedError;
  String get userEmail => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  /// Serializes this LoginInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginInfoCopyWith<LoginInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginInfoCopyWith<$Res> {
  factory $LoginInfoCopyWith(LoginInfo value, $Res Function(LoginInfo) then) =
      _$LoginInfoCopyWithImpl<$Res, LoginInfo>;
  @useResult
  $Res call(
      {String computerName,
      String os,
      String productId,
      DateTime requestTime,
      String userEmail,
      String userId,
      String avatarUrl,
      String displayName});
}

/// @nodoc
class _$LoginInfoCopyWithImpl<$Res, $Val extends LoginInfo>
    implements $LoginInfoCopyWith<$Res> {
  _$LoginInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? computerName = null,
    Object? os = null,
    Object? productId = null,
    Object? requestTime = null,
    Object? userEmail = null,
    Object? userId = null,
    Object? avatarUrl = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      computerName: null == computerName
          ? _value.computerName
          : computerName // ignore: cast_nullable_to_non_nullable
              as String,
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      requestTime: null == requestTime
          ? _value.requestTime
          : requestTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginInfoImplCopyWith<$Res>
    implements $LoginInfoCopyWith<$Res> {
  factory _$$LoginInfoImplCopyWith(
          _$LoginInfoImpl value, $Res Function(_$LoginInfoImpl) then) =
      __$$LoginInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String computerName,
      String os,
      String productId,
      DateTime requestTime,
      String userEmail,
      String userId,
      String avatarUrl,
      String displayName});
}

/// @nodoc
class __$$LoginInfoImplCopyWithImpl<$Res>
    extends _$LoginInfoCopyWithImpl<$Res, _$LoginInfoImpl>
    implements _$$LoginInfoImplCopyWith<$Res> {
  __$$LoginInfoImplCopyWithImpl(
      _$LoginInfoImpl _value, $Res Function(_$LoginInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? computerName = null,
    Object? os = null,
    Object? productId = null,
    Object? requestTime = null,
    Object? userEmail = null,
    Object? userId = null,
    Object? avatarUrl = null,
    Object? displayName = null,
  }) {
    return _then(_$LoginInfoImpl(
      computerName: null == computerName
          ? _value.computerName
          : computerName // ignore: cast_nullable_to_non_nullable
              as String,
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      requestTime: null == requestTime
          ? _value.requestTime
          : requestTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginInfoImpl implements _LoginInfo {
  const _$LoginInfoImpl(
      {required this.computerName,
      required this.os,
      required this.productId,
      required this.requestTime,
      required this.userEmail,
      required this.userId,
      required this.avatarUrl,
      required this.displayName});

  factory _$LoginInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginInfoImplFromJson(json);

  @override
  final String computerName;
  @override
  final String os;
  @override
  final String productId;
  @override
  final DateTime requestTime;
  @override
  final String userEmail;
  @override
  final String userId;
  @override
  final String avatarUrl;
  @override
  final String displayName;

  @override
  String toString() {
    return 'LoginInfo(computerName: $computerName, os: $os, productId: $productId, requestTime: $requestTime, userEmail: $userEmail, userId: $userId, avatarUrl: $avatarUrl, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginInfoImpl &&
            (identical(other.computerName, computerName) ||
                other.computerName == computerName) &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.requestTime, requestTime) ||
                other.requestTime == requestTime) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, computerName, os, productId,
      requestTime, userEmail, userId, avatarUrl, displayName);

  /// Create a copy of LoginInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginInfoImplCopyWith<_$LoginInfoImpl> get copyWith =>
      __$$LoginInfoImplCopyWithImpl<_$LoginInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginInfoImplToJson(
      this,
    );
  }
}

abstract class _LoginInfo implements LoginInfo {
  const factory _LoginInfo(
      {required final String computerName,
      required final String os,
      required final String productId,
      required final DateTime requestTime,
      required final String userEmail,
      required final String userId,
      required final String avatarUrl,
      required final String displayName}) = _$LoginInfoImpl;

  factory _LoginInfo.fromJson(Map<String, dynamic> json) =
      _$LoginInfoImpl.fromJson;

  @override
  String get computerName;
  @override
  String get os;
  @override
  String get productId;
  @override
  DateTime get requestTime;
  @override
  String get userEmail;
  @override
  String get userId;
  @override
  String get avatarUrl;
  @override
  String get displayName;

  /// Create a copy of LoginInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginInfoImplCopyWith<_$LoginInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
