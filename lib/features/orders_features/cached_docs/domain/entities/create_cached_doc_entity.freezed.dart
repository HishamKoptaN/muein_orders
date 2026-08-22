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

 GenericFormInput? get docId; List<DocMediaEntity> get files; LocationEntity? get location;
/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCachedDocEntityCopyWith<CreateCachedDocEntity> get copyWith => _$CreateCachedDocEntityCopyWithImpl<CreateCachedDocEntity>(this as CreateCachedDocEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CreateCachedDocEntity'))
    ..add(DiagnosticsProperty('docId', docId))..add(DiagnosticsProperty('files', files))..add(DiagnosticsProperty('location', location));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCachedDocEntity&&(identical(other.docId, docId) || other.docId == docId)&&const DeepCollectionEquality().equals(other.files, files)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,docId,const DeepCollectionEquality().hash(files),location);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CreateCachedDocEntity(docId: $docId, files: $files, location: $location)';
}


}

/// @nodoc
abstract mixin class $CreateCachedDocEntityCopyWith<$Res>  {
  factory $CreateCachedDocEntityCopyWith(CreateCachedDocEntity value, $Res Function(CreateCachedDocEntity) _then) = _$CreateCachedDocEntityCopyWithImpl;
@useResult
$Res call({
 GenericFormInput? docId, List<DocMediaEntity> files, LocationEntity? location
});


$LocationEntityCopyWith<$Res>? get location;

}
/// @nodoc
class _$CreateCachedDocEntityCopyWithImpl<$Res>
    implements $CreateCachedDocEntityCopyWith<$Res> {
  _$CreateCachedDocEntityCopyWithImpl(this._self, this._then);

  final CreateCachedDocEntity _self;
  final $Res Function(CreateCachedDocEntity) _then;

/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? docId = freezed,Object? files = null,Object? location = freezed,}) {
  return _then(_self.copyWith(
docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,files: null == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<DocMediaEntity>,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationEntity?,
  ));
}
/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationEntityCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationEntityCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GenericFormInput? docId,  List<DocMediaEntity> files,  LocationEntity? location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCachedDocEntity() when $default != null:
return $default(_that.docId,_that.files,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GenericFormInput? docId,  List<DocMediaEntity> files,  LocationEntity? location)  $default,) {final _that = this;
switch (_that) {
case _CreateCachedDocEntity():
return $default(_that.docId,_that.files,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GenericFormInput? docId,  List<DocMediaEntity> files,  LocationEntity? location)?  $default,) {final _that = this;
switch (_that) {
case _CreateCachedDocEntity() when $default != null:
return $default(_that.docId,_that.files,_that.location);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCachedDocEntity extends CreateCachedDocEntity with DiagnosticableTreeMixin {
  const _CreateCachedDocEntity({this.docId, final  List<DocMediaEntity> files = const <DocMediaEntity>[], this.location}): _files = files,super._();
  

@override final  GenericFormInput? docId;
 final  List<DocMediaEntity> _files;
@override@JsonKey() List<DocMediaEntity> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}

@override final  LocationEntity? location;

/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCachedDocEntityCopyWith<_CreateCachedDocEntity> get copyWith => __$CreateCachedDocEntityCopyWithImpl<_CreateCachedDocEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CreateCachedDocEntity'))
    ..add(DiagnosticsProperty('docId', docId))..add(DiagnosticsProperty('files', files))..add(DiagnosticsProperty('location', location));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCachedDocEntity&&(identical(other.docId, docId) || other.docId == docId)&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,docId,const DeepCollectionEquality().hash(_files),location);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CreateCachedDocEntity(docId: $docId, files: $files, location: $location)';
}


}

/// @nodoc
abstract mixin class _$CreateCachedDocEntityCopyWith<$Res> implements $CreateCachedDocEntityCopyWith<$Res> {
  factory _$CreateCachedDocEntityCopyWith(_CreateCachedDocEntity value, $Res Function(_CreateCachedDocEntity) _then) = __$CreateCachedDocEntityCopyWithImpl;
@override @useResult
$Res call({
 GenericFormInput? docId, List<DocMediaEntity> files, LocationEntity? location
});


@override $LocationEntityCopyWith<$Res>? get location;

}
/// @nodoc
class __$CreateCachedDocEntityCopyWithImpl<$Res>
    implements _$CreateCachedDocEntityCopyWith<$Res> {
  __$CreateCachedDocEntityCopyWithImpl(this._self, this._then);

  final _CreateCachedDocEntity _self;
  final $Res Function(_CreateCachedDocEntity) _then;

/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? docId = freezed,Object? files = null,Object? location = freezed,}) {
  return _then(_CreateCachedDocEntity(
docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<DocMediaEntity>,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationEntity?,
  ));
}

/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationEntityCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationEntityCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

/// @nodoc
mixin _$LocationEntity implements DiagnosticableTreeMixin {

 double? get latitude; double? get longitude; UploadStatus get fileUploadStatus;
/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationEntityCopyWith<LocationEntity> get copyWith => _$LocationEntityCopyWithImpl<LocationEntity>(this as LocationEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocationEntity'))
    ..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('fileUploadStatus', fileUploadStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationEntity&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.fileUploadStatus, fileUploadStatus) || other.fileUploadStatus == fileUploadStatus));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,fileUploadStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocationEntity(latitude: $latitude, longitude: $longitude, fileUploadStatus: $fileUploadStatus)';
}


}

/// @nodoc
abstract mixin class $LocationEntityCopyWith<$Res>  {
  factory $LocationEntityCopyWith(LocationEntity value, $Res Function(LocationEntity) _then) = _$LocationEntityCopyWithImpl;
@useResult
$Res call({
 double? latitude, double? longitude, UploadStatus fileUploadStatus
});




}
/// @nodoc
class _$LocationEntityCopyWithImpl<$Res>
    implements $LocationEntityCopyWith<$Res> {
  _$LocationEntityCopyWithImpl(this._self, this._then);

  final LocationEntity _self;
  final $Res Function(LocationEntity) _then;

/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = freezed,Object? longitude = freezed,Object? fileUploadStatus = null,}) {
  return _then(_self.copyWith(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,fileUploadStatus: null == fileUploadStatus ? _self.fileUploadStatus : fileUploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationEntity].
extension LocationEntityPatterns on LocationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationEntity value)  $default,){
final _that = this;
switch (_that) {
case _LocationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? latitude,  double? longitude,  UploadStatus fileUploadStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
return $default(_that.latitude,_that.longitude,_that.fileUploadStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? latitude,  double? longitude,  UploadStatus fileUploadStatus)  $default,) {final _that = this;
switch (_that) {
case _LocationEntity():
return $default(_that.latitude,_that.longitude,_that.fileUploadStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? latitude,  double? longitude,  UploadStatus fileUploadStatus)?  $default,) {final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
return $default(_that.latitude,_that.longitude,_that.fileUploadStatus);case _:
  return null;

}
}

}

/// @nodoc


class _LocationEntity extends LocationEntity with DiagnosticableTreeMixin {
  const _LocationEntity({this.latitude, this.longitude, this.fileUploadStatus = UploadStatus.init}): super._();
  

@override final  double? latitude;
@override final  double? longitude;
@override@JsonKey() final  UploadStatus fileUploadStatus;

/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationEntityCopyWith<_LocationEntity> get copyWith => __$LocationEntityCopyWithImpl<_LocationEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocationEntity'))
    ..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('fileUploadStatus', fileUploadStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationEntity&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.fileUploadStatus, fileUploadStatus) || other.fileUploadStatus == fileUploadStatus));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,fileUploadStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocationEntity(latitude: $latitude, longitude: $longitude, fileUploadStatus: $fileUploadStatus)';
}


}

/// @nodoc
abstract mixin class _$LocationEntityCopyWith<$Res> implements $LocationEntityCopyWith<$Res> {
  factory _$LocationEntityCopyWith(_LocationEntity value, $Res Function(_LocationEntity) _then) = __$LocationEntityCopyWithImpl;
@override @useResult
$Res call({
 double? latitude, double? longitude, UploadStatus fileUploadStatus
});




}
/// @nodoc
class __$LocationEntityCopyWithImpl<$Res>
    implements _$LocationEntityCopyWith<$Res> {
  __$LocationEntityCopyWithImpl(this._self, this._then);

  final _LocationEntity _self;
  final $Res Function(_LocationEntity) _then;

/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = freezed,Object? longitude = freezed,Object? fileUploadStatus = null,}) {
  return _then(_LocationEntity(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,fileUploadStatus: null == fileUploadStatus ? _self.fileUploadStatus : fileUploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,
  ));
}


}

// dart format on
