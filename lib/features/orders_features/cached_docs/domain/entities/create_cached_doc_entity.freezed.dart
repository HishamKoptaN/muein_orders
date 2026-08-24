// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_cached_doc_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateCachedDocEntity implements DiagnosticableTreeMixin {

 int? get id; int? get itemId; int? get unitId; List<DocMediaEntity> get files; double? get latitude; double? get longitude; UploadStatus get locationUploadStatus;
/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCachedDocEntityCopyWith<CreateCachedDocEntity> get copyWith => _$CreateCachedDocEntityCopyWithImpl<CreateCachedDocEntity>(this as CreateCachedDocEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CreateCachedDocEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('itemId', itemId))..add(DiagnosticsProperty('unitId', unitId))..add(DiagnosticsProperty('files', files))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('locationUploadStatus', locationUploadStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCachedDocEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&const DeepCollectionEquality().equals(other.files, files)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.locationUploadStatus, locationUploadStatus) || other.locationUploadStatus == locationUploadStatus));
}


@override
int get hashCode => Object.hash(runtimeType,id,itemId,unitId,const DeepCollectionEquality().hash(files),latitude,longitude,locationUploadStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CreateCachedDocEntity(id: $id, itemId: $itemId, unitId: $unitId, files: $files, latitude: $latitude, longitude: $longitude, locationUploadStatus: $locationUploadStatus)';
}


}

/// @nodoc
abstract mixin class $CreateCachedDocEntityCopyWith<$Res>  {
  factory $CreateCachedDocEntityCopyWith(CreateCachedDocEntity value, $Res Function(CreateCachedDocEntity) _then) = _$CreateCachedDocEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int? itemId, int? unitId, List<DocMediaEntity> files, double? latitude, double? longitude, UploadStatus locationUploadStatus
});




}
/// @nodoc
class _$CreateCachedDocEntityCopyWithImpl<$Res>
    implements $CreateCachedDocEntityCopyWith<$Res> {
  _$CreateCachedDocEntityCopyWithImpl(this._self, this._then);

  final CreateCachedDocEntity _self;
  final $Res Function(CreateCachedDocEntity) _then;

/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? itemId = freezed,Object? unitId = freezed,Object? files = null,Object? latitude = freezed,Object? longitude = freezed,Object? locationUploadStatus = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int?,files: null == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<DocMediaEntity>,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,locationUploadStatus: null == locationUploadStatus ? _self.locationUploadStatus : locationUploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCachedDocEntity].
extension CreateCachedDocEntityPatterns on CreateCachedDocEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCachedDocEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCachedDocEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCachedDocEntity value)  $default,){
final _that = this;
switch (_that) {
case _CreateCachedDocEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCachedDocEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCachedDocEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? itemId,  int? unitId,  List<DocMediaEntity> files,  double? latitude,  double? longitude,  UploadStatus locationUploadStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCachedDocEntity() when $default != null:
return $default(_that.id,_that.itemId,_that.unitId,_that.files,_that.latitude,_that.longitude,_that.locationUploadStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? itemId,  int? unitId,  List<DocMediaEntity> files,  double? latitude,  double? longitude,  UploadStatus locationUploadStatus)  $default,) {final _that = this;
switch (_that) {
case _CreateCachedDocEntity():
return $default(_that.id,_that.itemId,_that.unitId,_that.files,_that.latitude,_that.longitude,_that.locationUploadStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? itemId,  int? unitId,  List<DocMediaEntity> files,  double? latitude,  double? longitude,  UploadStatus locationUploadStatus)?  $default,) {final _that = this;
switch (_that) {
case _CreateCachedDocEntity() when $default != null:
return $default(_that.id,_that.itemId,_that.unitId,_that.files,_that.latitude,_that.longitude,_that.locationUploadStatus);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCachedDocEntity extends CreateCachedDocEntity with DiagnosticableTreeMixin {
  const _CreateCachedDocEntity({this.id, this.itemId, this.unitId, final  List<DocMediaEntity> files = const <DocMediaEntity>[], this.latitude, this.longitude, this.locationUploadStatus = UploadStatus.init}): _files = files,super._();
  

@override final  int? id;
@override final  int? itemId;
@override final  int? unitId;
 final  List<DocMediaEntity> _files;
@override@JsonKey() List<DocMediaEntity> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}

@override final  double? latitude;
@override final  double? longitude;
@override@JsonKey() final  UploadStatus locationUploadStatus;

/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCachedDocEntityCopyWith<_CreateCachedDocEntity> get copyWith => __$CreateCachedDocEntityCopyWithImpl<_CreateCachedDocEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CreateCachedDocEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('itemId', itemId))..add(DiagnosticsProperty('unitId', unitId))..add(DiagnosticsProperty('files', files))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('locationUploadStatus', locationUploadStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCachedDocEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.locationUploadStatus, locationUploadStatus) || other.locationUploadStatus == locationUploadStatus));
}


@override
int get hashCode => Object.hash(runtimeType,id,itemId,unitId,const DeepCollectionEquality().hash(_files),latitude,longitude,locationUploadStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CreateCachedDocEntity(id: $id, itemId: $itemId, unitId: $unitId, files: $files, latitude: $latitude, longitude: $longitude, locationUploadStatus: $locationUploadStatus)';
}


}

/// @nodoc
abstract mixin class _$CreateCachedDocEntityCopyWith<$Res> implements $CreateCachedDocEntityCopyWith<$Res> {
  factory _$CreateCachedDocEntityCopyWith(_CreateCachedDocEntity value, $Res Function(_CreateCachedDocEntity) _then) = __$CreateCachedDocEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? itemId, int? unitId, List<DocMediaEntity> files, double? latitude, double? longitude, UploadStatus locationUploadStatus
});




}
/// @nodoc
class __$CreateCachedDocEntityCopyWithImpl<$Res>
    implements _$CreateCachedDocEntityCopyWith<$Res> {
  __$CreateCachedDocEntityCopyWithImpl(this._self, this._then);

  final _CreateCachedDocEntity _self;
  final $Res Function(_CreateCachedDocEntity) _then;

/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? itemId = freezed,Object? unitId = freezed,Object? files = null,Object? latitude = freezed,Object? longitude = freezed,Object? locationUploadStatus = null,}) {
  return _then(_CreateCachedDocEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int?,files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<DocMediaEntity>,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,locationUploadStatus: null == locationUploadStatus ? _self.locationUploadStatus : locationUploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,
  ));
}


}

// dart format on
