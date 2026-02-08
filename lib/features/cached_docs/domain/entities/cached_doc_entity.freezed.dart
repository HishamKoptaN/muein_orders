// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cached_doc_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CachedDocEntity {

 int? get id; int? get orderId; String? get imageOne; String? get imageTwo; String? get videoOne; String? get videoTwo; double? get latitude; double? get longitude; double? get shippingCost; UploadStatus get uploadStatus; double get uploadProgress;
/// Create a copy of CachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CachedDocEntityCopyWith<CachedDocEntity> get copyWith => _$CachedDocEntityCopyWithImpl<CachedDocEntity>(this as CachedDocEntity, _$identity);

  /// Serializes this CachedDocEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CachedDocEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.uploadStatus, uploadStatus) || other.uploadStatus == uploadStatus)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,imageOne,imageTwo,videoOne,videoTwo,latitude,longitude,shippingCost,uploadStatus,uploadProgress);

@override
String toString() {
  return 'CachedDocEntity(id: $id, orderId: $orderId, imageOne: $imageOne, imageTwo: $imageTwo, videoOne: $videoOne, videoTwo: $videoTwo, latitude: $latitude, longitude: $longitude, shippingCost: $shippingCost, uploadStatus: $uploadStatus, uploadProgress: $uploadProgress)';
}


}

/// @nodoc
abstract mixin class $CachedDocEntityCopyWith<$Res>  {
  factory $CachedDocEntityCopyWith(CachedDocEntity value, $Res Function(CachedDocEntity) _then) = _$CachedDocEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int? orderId, String? imageOne, String? imageTwo, String? videoOne, String? videoTwo, double? latitude, double? longitude, double? shippingCost, UploadStatus uploadStatus, double uploadProgress
});




}
/// @nodoc
class _$CachedDocEntityCopyWithImpl<$Res>
    implements $CachedDocEntityCopyWith<$Res> {
  _$CachedDocEntityCopyWithImpl(this._self, this._then);

  final CachedDocEntity _self;
  final $Res Function(CachedDocEntity) _then;

/// Create a copy of CachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? orderId = freezed,Object? imageOne = freezed,Object? imageTwo = freezed,Object? videoOne = freezed,Object? videoTwo = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? shippingCost = freezed,Object? uploadStatus = null,Object? uploadProgress = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as String?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as String?,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as String?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,shippingCost: freezed == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as double?,uploadStatus: null == uploadStatus ? _self.uploadStatus : uploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CachedDocEntity].
extension CachedDocEntityPatterns on CachedDocEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CachedDocEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CachedDocEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CachedDocEntity value)  $default,){
final _that = this;
switch (_that) {
case _CachedDocEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CachedDocEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CachedDocEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? orderId,  String? imageOne,  String? imageTwo,  String? videoOne,  String? videoTwo,  double? latitude,  double? longitude,  double? shippingCost,  UploadStatus uploadStatus,  double uploadProgress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CachedDocEntity() when $default != null:
return $default(_that.id,_that.orderId,_that.imageOne,_that.imageTwo,_that.videoOne,_that.videoTwo,_that.latitude,_that.longitude,_that.shippingCost,_that.uploadStatus,_that.uploadProgress);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? orderId,  String? imageOne,  String? imageTwo,  String? videoOne,  String? videoTwo,  double? latitude,  double? longitude,  double? shippingCost,  UploadStatus uploadStatus,  double uploadProgress)  $default,) {final _that = this;
switch (_that) {
case _CachedDocEntity():
return $default(_that.id,_that.orderId,_that.imageOne,_that.imageTwo,_that.videoOne,_that.videoTwo,_that.latitude,_that.longitude,_that.shippingCost,_that.uploadStatus,_that.uploadProgress);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? orderId,  String? imageOne,  String? imageTwo,  String? videoOne,  String? videoTwo,  double? latitude,  double? longitude,  double? shippingCost,  UploadStatus uploadStatus,  double uploadProgress)?  $default,) {final _that = this;
switch (_that) {
case _CachedDocEntity() when $default != null:
return $default(_that.id,_that.orderId,_that.imageOne,_that.imageTwo,_that.videoOne,_that.videoTwo,_that.latitude,_that.longitude,_that.shippingCost,_that.uploadStatus,_that.uploadProgress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CachedDocEntity implements CachedDocEntity {
  const _CachedDocEntity({this.id, this.orderId, this.imageOne, this.imageTwo, this.videoOne, this.videoTwo, this.latitude, this.longitude, this.shippingCost, this.uploadStatus = UploadStatus.pending, this.uploadProgress = 0.0});
  factory _CachedDocEntity.fromJson(Map<String, dynamic> json) => _$CachedDocEntityFromJson(json);

@override final  int? id;
@override final  int? orderId;
@override final  String? imageOne;
@override final  String? imageTwo;
@override final  String? videoOne;
@override final  String? videoTwo;
@override final  double? latitude;
@override final  double? longitude;
@override final  double? shippingCost;
@override@JsonKey() final  UploadStatus uploadStatus;
@override@JsonKey() final  double uploadProgress;

/// Create a copy of CachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CachedDocEntityCopyWith<_CachedDocEntity> get copyWith => __$CachedDocEntityCopyWithImpl<_CachedDocEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CachedDocEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CachedDocEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.uploadStatus, uploadStatus) || other.uploadStatus == uploadStatus)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,imageOne,imageTwo,videoOne,videoTwo,latitude,longitude,shippingCost,uploadStatus,uploadProgress);

@override
String toString() {
  return 'CachedDocEntity(id: $id, orderId: $orderId, imageOne: $imageOne, imageTwo: $imageTwo, videoOne: $videoOne, videoTwo: $videoTwo, latitude: $latitude, longitude: $longitude, shippingCost: $shippingCost, uploadStatus: $uploadStatus, uploadProgress: $uploadProgress)';
}


}

/// @nodoc
abstract mixin class _$CachedDocEntityCopyWith<$Res> implements $CachedDocEntityCopyWith<$Res> {
  factory _$CachedDocEntityCopyWith(_CachedDocEntity value, $Res Function(_CachedDocEntity) _then) = __$CachedDocEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? orderId, String? imageOne, String? imageTwo, String? videoOne, String? videoTwo, double? latitude, double? longitude, double? shippingCost, UploadStatus uploadStatus, double uploadProgress
});




}
/// @nodoc
class __$CachedDocEntityCopyWithImpl<$Res>
    implements _$CachedDocEntityCopyWith<$Res> {
  __$CachedDocEntityCopyWithImpl(this._self, this._then);

  final _CachedDocEntity _self;
  final $Res Function(_CachedDocEntity) _then;

/// Create a copy of CachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? orderId = freezed,Object? imageOne = freezed,Object? imageTwo = freezed,Object? videoOne = freezed,Object? videoTwo = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? shippingCost = freezed,Object? uploadStatus = null,Object? uploadProgress = null,}) {
  return _then(_CachedDocEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as String?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as String?,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as String?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,shippingCost: freezed == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as double?,uploadStatus: null == uploadStatus ? _self.uploadStatus : uploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
