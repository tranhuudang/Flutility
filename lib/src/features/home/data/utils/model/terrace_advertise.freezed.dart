// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terrace_advertise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TerraceAdvertise {
  String get id;
  String get title;
  String get description;
  String get iconUrl;
  String get link;
  String? get previewImage;
  bool? get isActive;
  int? get order;
  DateTime? get startDate;
  DateTime? get endDate;

  /// Create a copy of TerraceAdvertise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TerraceAdvertiseCopyWith<TerraceAdvertise> get copyWith =>
      _$TerraceAdvertiseCopyWithImpl<TerraceAdvertise>(
          this as TerraceAdvertise, _$identity);

  /// Serializes this TerraceAdvertise to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TerraceAdvertise &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.previewImage, previewImage) ||
                other.previewImage == previewImage) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, iconUrl,
      link, previewImage, isActive, order, startDate, endDate);

  @override
  String toString() {
    return 'TerraceAdvertise(id: $id, title: $title, description: $description, iconUrl: $iconUrl, link: $link, previewImage: $previewImage, isActive: $isActive, order: $order, startDate: $startDate, endDate: $endDate)';
  }
}

/// @nodoc
abstract mixin class $TerraceAdvertiseCopyWith<$Res> {
  factory $TerraceAdvertiseCopyWith(
          TerraceAdvertise value, $Res Function(TerraceAdvertise) _then) =
      _$TerraceAdvertiseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String iconUrl,
      String link,
      String? previewImage,
      bool? isActive,
      int? order,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class _$TerraceAdvertiseCopyWithImpl<$Res>
    implements $TerraceAdvertiseCopyWith<$Res> {
  _$TerraceAdvertiseCopyWithImpl(this._self, this._then);

  final TerraceAdvertise _self;
  final $Res Function(TerraceAdvertise) _then;

  /// Create a copy of TerraceAdvertise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? iconUrl = null,
    Object? link = null,
    Object? previewImage = freezed,
    Object? isActive = freezed,
    Object? order = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _self.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      previewImage: freezed == previewImage
          ? _self.previewImage
          : previewImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: freezed == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TerraceAdvertise implements TerraceAdvertise {
  const _TerraceAdvertise(
      {required this.id,
      required this.title,
      required this.description,
      required this.iconUrl,
      required this.link,
      this.previewImage,
      this.isActive = true,
      this.order = 0,
      this.startDate,
      this.endDate});
  factory _TerraceAdvertise.fromJson(Map<String, dynamic> json) =>
      _$TerraceAdvertiseFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String iconUrl;
  @override
  final String link;
  @override
  final String? previewImage;
  @override
  @JsonKey()
  final bool? isActive;
  @override
  @JsonKey()
  final int? order;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  /// Create a copy of TerraceAdvertise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TerraceAdvertiseCopyWith<_TerraceAdvertise> get copyWith =>
      __$TerraceAdvertiseCopyWithImpl<_TerraceAdvertise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TerraceAdvertiseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TerraceAdvertise &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.previewImage, previewImage) ||
                other.previewImage == previewImage) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, iconUrl,
      link, previewImage, isActive, order, startDate, endDate);

  @override
  String toString() {
    return 'TerraceAdvertise(id: $id, title: $title, description: $description, iconUrl: $iconUrl, link: $link, previewImage: $previewImage, isActive: $isActive, order: $order, startDate: $startDate, endDate: $endDate)';
  }
}

/// @nodoc
abstract mixin class _$TerraceAdvertiseCopyWith<$Res>
    implements $TerraceAdvertiseCopyWith<$Res> {
  factory _$TerraceAdvertiseCopyWith(
          _TerraceAdvertise value, $Res Function(_TerraceAdvertise) _then) =
      __$TerraceAdvertiseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String iconUrl,
      String link,
      String? previewImage,
      bool? isActive,
      int? order,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class __$TerraceAdvertiseCopyWithImpl<$Res>
    implements _$TerraceAdvertiseCopyWith<$Res> {
  __$TerraceAdvertiseCopyWithImpl(this._self, this._then);

  final _TerraceAdvertise _self;
  final $Res Function(_TerraceAdvertise) _then;

  /// Create a copy of TerraceAdvertise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? iconUrl = null,
    Object? link = null,
    Object? previewImage = freezed,
    Object? isActive = freezed,
    Object? order = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_TerraceAdvertise(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _self.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      previewImage: freezed == previewImage
          ? _self.previewImage
          : previewImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: freezed == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
