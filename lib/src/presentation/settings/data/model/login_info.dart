import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_info.freezed.dart';
part 'login_info.g.dart';

@freezed
class LoginInfo with _$LoginInfo {
  const factory LoginInfo({
    required String computerName,
    required String os,
    required String productId,
    required DateTime requestTime,
    required String userEmail,
    required String userId,
    required String avatarUrl,
    required String displayName,
  }) = _LoginInfo;

  factory LoginInfo.fromJson(Map<String, dynamic> json) =>
      _$LoginInfoFromJson(json);
}

