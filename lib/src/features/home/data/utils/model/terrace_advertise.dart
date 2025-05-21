import 'package:freezed_annotation/freezed_annotation.dart';

part 'terrace_advertise.freezed.dart';
part 'terrace_advertise.g.dart';

@freezed
abstract class TerraceAdvertise with _$TerraceAdvertise {
  const factory TerraceAdvertise({
    required String id,
    required String title,
    required String description,
    required String iconUrl,
    required String link,
    String? previewImage,
    @Default(true) bool? isActive,
    @Default(0) int? order,
    DateTime? startDate,
    DateTime? endDate,
  }) = _TerraceAdvertise;

  factory TerraceAdvertise.fromJson(Map<String, dynamic> json) =>
      _$TerraceAdvertiseFromJson(json);
}
