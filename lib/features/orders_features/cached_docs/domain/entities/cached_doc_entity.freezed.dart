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
mixin _$LocationDocEntity {

 double get latitude; double get longitude; UploadStatus get status;
/// Create a copy of LocationDocEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationDocEntityCopyWith<LocationDocEntity> get copyWith => _$LocationDocEntityCopyWithImpl<LocationDocEntity>(this as LocationDocEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationDocEntity&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,status);

@override
String toString() {
  return 'LocationDocEntity(latitude: $latitude, longitude: $longitude, status: $status)';
}


}

/// @nodoc
abstract mixin class $LocationDocEntityCopyWith<$Res>  {
  factory $LocationDocEntityCopyWith(LocationDocEntity value, $Res Function(LocationDocEntity) _then) = _$LocationDocEntityCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, UploadStatus status
});




}
/// @nodoc
class _$LocationDocEntityCopyWithImpl<$Res>
    implements $LocationDocEntityCopyWith<$Res> {
  _$LocationDocEntityCopyWithImpl(this._self, this._then);

  final LocationDocEntity _self;
  final $Res Function(LocationDocEntity) _then;

/// Create a copy of LocationDocEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? status = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UploadStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationDocEntity].
extension LocationDocEntityPatterns on LocationDocEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationDocEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationDocEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationDocEntity value)  $default,){
final _that = this;
switch (_that) {
case _LocationDocEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationDocEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LocationDocEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude,  UploadStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationDocEntity() when $default != null:
return $default(_that.latitude,_that.longitude,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude,  UploadStatus status)  $default,) {final _that = this;
switch (_that) {
case _LocationDocEntity():
return $default(_that.latitude,_that.longitude,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude,  UploadStatus status)?  $default,) {final _that = this;
switch (_that) {
case _LocationDocEntity() when $default != null:
return $default(_that.latitude,_that.longitude,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _LocationDocEntity implements LocationDocEntity {
  const _LocationDocEntity({this.latitude = 0.0, this.longitude = 0.0, this.status = UploadStatus.init});
  

@override@JsonKey() final  double latitude;
@override@JsonKey() final  double longitude;
@override@JsonKey() final  UploadStatus status;

/// Create a copy of LocationDocEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationDocEntityCopyWith<_LocationDocEntity> get copyWith => __$LocationDocEntityCopyWithImpl<_LocationDocEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationDocEntity&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,status);

@override
String toString() {
  return 'LocationDocEntity(latitude: $latitude, longitude: $longitude, status: $status)';
}


}

/// @nodoc
abstract mixin class _$LocationDocEntityCopyWith<$Res> implements $LocationDocEntityCopyWith<$Res> {
  factory _$LocationDocEntityCopyWith(_LocationDocEntity value, $Res Function(_LocationDocEntity) _then) = __$LocationDocEntityCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, UploadStatus status
});




}
/// @nodoc
class __$LocationDocEntityCopyWithImpl<$Res>
    implements _$LocationDocEntityCopyWith<$Res> {
  __$LocationDocEntityCopyWithImpl(this._self, this._then);

  final _LocationDocEntity _self;
  final $Res Function(_LocationDocEntity) _then;

/// Create a copy of LocationDocEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? status = null,}) {
  return _then(_LocationDocEntity(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UploadStatus,
  ));
}


}

// dart format on
