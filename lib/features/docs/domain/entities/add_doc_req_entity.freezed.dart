// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_doc_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddDocReqEntity {
  int? get orderId => throw _privateConstructorUsedError;
  File? get video => throw _privateConstructorUsedError;
  File? get imageOne => throw _privateConstructorUsedError;
  File? get imageTwo => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;

  /// Create a copy of AddDocReqEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddDocReqEntityCopyWith<AddDocReqEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDocReqEntityCopyWith<$Res> {
  factory $AddDocReqEntityCopyWith(
          AddDocReqEntity value, $Res Function(AddDocReqEntity) then) =
      _$AddDocReqEntityCopyWithImpl<$Res, AddDocReqEntity>;
  @useResult
  $Res call(
      {int? orderId,
      File? video,
      File? imageOne,
      File? imageTwo,
      String? latitude,
      String? longitude});
}

/// @nodoc
class _$AddDocReqEntityCopyWithImpl<$Res, $Val extends AddDocReqEntity>
    implements $AddDocReqEntityCopyWith<$Res> {
  _$AddDocReqEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddDocReqEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? video = freezed,
    Object? imageOne = freezed,
    Object? imageTwo = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as File?,
      imageOne: freezed == imageOne
          ? _value.imageOne
          : imageOne // ignore: cast_nullable_to_non_nullable
              as File?,
      imageTwo: freezed == imageTwo
          ? _value.imageTwo
          : imageTwo // ignore: cast_nullable_to_non_nullable
              as File?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddDocReqEntityImplCopyWith<$Res>
    implements $AddDocReqEntityCopyWith<$Res> {
  factory _$$AddDocReqEntityImplCopyWith(_$AddDocReqEntityImpl value,
          $Res Function(_$AddDocReqEntityImpl) then) =
      __$$AddDocReqEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? orderId,
      File? video,
      File? imageOne,
      File? imageTwo,
      String? latitude,
      String? longitude});
}

/// @nodoc
class __$$AddDocReqEntityImplCopyWithImpl<$Res>
    extends _$AddDocReqEntityCopyWithImpl<$Res, _$AddDocReqEntityImpl>
    implements _$$AddDocReqEntityImplCopyWith<$Res> {
  __$$AddDocReqEntityImplCopyWithImpl(
      _$AddDocReqEntityImpl _value, $Res Function(_$AddDocReqEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddDocReqEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? video = freezed,
    Object? imageOne = freezed,
    Object? imageTwo = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$AddDocReqEntityImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as File?,
      imageOne: freezed == imageOne
          ? _value.imageOne
          : imageOne // ignore: cast_nullable_to_non_nullable
              as File?,
      imageTwo: freezed == imageTwo
          ? _value.imageTwo
          : imageTwo // ignore: cast_nullable_to_non_nullable
              as File?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddDocReqEntityImpl implements _AddDocReqEntity {
  const _$AddDocReqEntityImpl(
      {this.orderId,
      this.video,
      this.imageOne,
      this.imageTwo,
      this.latitude,
      this.longitude});

  @override
  final int? orderId;
  @override
  final File? video;
  @override
  final File? imageOne;
  @override
  final File? imageTwo;
  @override
  final String? latitude;
  @override
  final String? longitude;

  @override
  String toString() {
    return 'AddDocReqEntity(orderId: $orderId, video: $video, imageOne: $imageOne, imageTwo: $imageTwo, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDocReqEntityImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.imageOne, imageOne) ||
                other.imageOne == imageOne) &&
            (identical(other.imageTwo, imageTwo) ||
                other.imageTwo == imageTwo) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, video, imageOne, imageTwo, latitude, longitude);

  /// Create a copy of AddDocReqEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDocReqEntityImplCopyWith<_$AddDocReqEntityImpl> get copyWith =>
      __$$AddDocReqEntityImplCopyWithImpl<_$AddDocReqEntityImpl>(
          this, _$identity);
}

abstract class _AddDocReqEntity implements AddDocReqEntity {
  const factory _AddDocReqEntity(
      {final int? orderId,
      final File? video,
      final File? imageOne,
      final File? imageTwo,
      final String? latitude,
      final String? longitude}) = _$AddDocReqEntityImpl;

  @override
  int? get orderId;
  @override
  File? get video;
  @override
  File? get imageOne;
  @override
  File? get imageTwo;
  @override
  String? get latitude;
  @override
  String? get longitude;

  /// Create a copy of AddDocReqEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDocReqEntityImplCopyWith<_$AddDocReqEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
