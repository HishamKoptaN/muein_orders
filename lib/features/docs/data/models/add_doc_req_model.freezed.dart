// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_doc_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddDocReqModel {
  @JsonKey(name: "order_id")
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  File? get video => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  File? get imageOne => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  File? get imageTwo => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  String? get longitude => throw _privateConstructorUsedError;

  /// Create a copy of AddDocReqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddDocReqModelCopyWith<AddDocReqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDocReqModelCopyWith<$Res> {
  factory $AddDocReqModelCopyWith(
          AddDocReqModel value, $Res Function(AddDocReqModel) then) =
      _$AddDocReqModelCopyWithImpl<$Res, AddDocReqModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int? orderId,
      @JsonKey(ignore: true) File? video,
      @JsonKey(ignore: true) File? imageOne,
      @JsonKey(ignore: true) File? imageTwo,
      @JsonKey(name: "latitude") String? latitude,
      @JsonKey(name: "longitude") String? longitude});
}

/// @nodoc
class _$AddDocReqModelCopyWithImpl<$Res, $Val extends AddDocReqModel>
    implements $AddDocReqModelCopyWith<$Res> {
  _$AddDocReqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddDocReqModel
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
abstract class _$$AddDocReqModelImplCopyWith<$Res>
    implements $AddDocReqModelCopyWith<$Res> {
  factory _$$AddDocReqModelImplCopyWith(_$AddDocReqModelImpl value,
          $Res Function(_$AddDocReqModelImpl) then) =
      __$$AddDocReqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int? orderId,
      @JsonKey(ignore: true) File? video,
      @JsonKey(ignore: true) File? imageOne,
      @JsonKey(ignore: true) File? imageTwo,
      @JsonKey(name: "latitude") String? latitude,
      @JsonKey(name: "longitude") String? longitude});
}

/// @nodoc
class __$$AddDocReqModelImplCopyWithImpl<$Res>
    extends _$AddDocReqModelCopyWithImpl<$Res, _$AddDocReqModelImpl>
    implements _$$AddDocReqModelImplCopyWith<$Res> {
  __$$AddDocReqModelImplCopyWithImpl(
      _$AddDocReqModelImpl _value, $Res Function(_$AddDocReqModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddDocReqModel
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
    return _then(_$AddDocReqModelImpl(
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

class _$AddDocReqModelImpl extends _AddDocReqModel {
  const _$AddDocReqModelImpl(
      {@JsonKey(name: "order_id") this.orderId,
      @JsonKey(ignore: true) this.video,
      @JsonKey(ignore: true) this.imageOne,
      @JsonKey(ignore: true) this.imageTwo,
      @JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude})
      : super._();

  @override
  @JsonKey(name: "order_id")
  final int? orderId;
  @override
  @JsonKey(ignore: true)
  final File? video;
  @override
  @JsonKey(ignore: true)
  final File? imageOne;
  @override
  @JsonKey(ignore: true)
  final File? imageTwo;
  @override
  @JsonKey(name: "latitude")
  final String? latitude;
  @override
  @JsonKey(name: "longitude")
  final String? longitude;

  @override
  String toString() {
    return 'AddDocReqModel(orderId: $orderId, video: $video, imageOne: $imageOne, imageTwo: $imageTwo, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDocReqModelImpl &&
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

  /// Create a copy of AddDocReqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDocReqModelImplCopyWith<_$AddDocReqModelImpl> get copyWith =>
      __$$AddDocReqModelImplCopyWithImpl<_$AddDocReqModelImpl>(
          this, _$identity);
}

abstract class _AddDocReqModel extends AddDocReqModel {
  const factory _AddDocReqModel(
          {@JsonKey(name: "order_id") final int? orderId,
          @JsonKey(ignore: true) final File? video,
          @JsonKey(ignore: true) final File? imageOne,
          @JsonKey(ignore: true) final File? imageTwo,
          @JsonKey(name: "latitude") final String? latitude,
          @JsonKey(name: "longitude") final String? longitude}) =
      _$AddDocReqModelImpl;
  const _AddDocReqModel._() : super._();

  @override
  @JsonKey(name: "order_id")
  int? get orderId;
  @override
  @JsonKey(ignore: true)
  File? get video;
  @override
  @JsonKey(ignore: true)
  File? get imageOne;
  @override
  @JsonKey(ignore: true)
  File? get imageTwo;
  @override
  @JsonKey(name: "latitude")
  String? get latitude;
  @override
  @JsonKey(name: "longitude")
  String? get longitude;

  /// Create a copy of AddDocReqModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDocReqModelImplCopyWith<_$AddDocReqModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
