// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doc_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DocReqEntity {

 int get id; double get latitude; double get longitude; UploadStatus get locationUploadStatus;
/// Create a copy of DocReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocReqEntityCopyWith<DocReqEntity> get copyWith => _$DocReqEntityCopyWithImpl<DocReqEntity>(this as DocReqEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocReqEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.locationUploadStatus, locationUploadStatus) || other.locationUploadStatus == locationUploadStatus));
}


@override
int get hashCode => Object.hash(runtimeType,id,latitude,longitude,locationUploadStatus);

@override
String toString() {
  return 'DocReqEntity(id: $id, latitude: $latitude, longitude: $longitude, locationUploadStatus: $locationUploadStatus)';
}


}

/// @nodoc
abstract mixin class $DocReqEntityCopyWith<$Res>  {
  factory $DocReqEntityCopyWith(DocReqEntity value, $Res Function(DocReqEntity) _then) = _$DocReqEntityCopyWithImpl;
@useResult
$Res call({
 int id, double latitude, double longitude, UploadStatus locationUploadStatus
});




}
/// @nodoc
class _$DocReqEntityCopyWithImpl<$Res>
    implements $DocReqEntityCopyWith<$Res> {
  _$DocReqEntityCopyWithImpl(this._self, this._then);

  final DocReqEntity _self;
  final $Res Function(DocReqEntity) _then;

/// Create a copy of DocReqEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? latitude = null,Object? longitude = null,Object? locationUploadStatus = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,locationUploadStatus: null == locationUploadStatus ? _self.locationUploadStatus : locationUploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [DocReqEntity].
extension DocReqEntityPatterns on DocReqEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocReqEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocReqEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocReqEntity value)  $default,){
final _that = this;
switch (_that) {
case _DocReqEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocReqEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DocReqEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  double latitude,  double longitude,  UploadStatus locationUploadStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocReqEntity() when $default != null:
return $default(_that.id,_that.latitude,_that.longitude,_that.locationUploadStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  double latitude,  double longitude,  UploadStatus locationUploadStatus)  $default,) {final _that = this;
switch (_that) {
case _DocReqEntity():
return $default(_that.id,_that.latitude,_that.longitude,_that.locationUploadStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  double latitude,  double longitude,  UploadStatus locationUploadStatus)?  $default,) {final _that = this;
switch (_that) {
case _DocReqEntity() when $default != null:
return $default(_that.id,_that.latitude,_that.longitude,_that.locationUploadStatus);case _:
  return null;

}
}

}

/// @nodoc


class _DocReqEntity implements DocReqEntity {
  const _DocReqEntity({required this.id, this.latitude = 0.0, this.longitude = 0.0, this.locationUploadStatus = UploadStatus.init});
  

@override final  int id;
@override@JsonKey() final  double latitude;
@override@JsonKey() final  double longitude;
@override@JsonKey() final  UploadStatus locationUploadStatus;

/// Create a copy of DocReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocReqEntityCopyWith<_DocReqEntity> get copyWith => __$DocReqEntityCopyWithImpl<_DocReqEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocReqEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.locationUploadStatus, locationUploadStatus) || other.locationUploadStatus == locationUploadStatus));
}


@override
int get hashCode => Object.hash(runtimeType,id,latitude,longitude,locationUploadStatus);

@override
String toString() {
  return 'DocReqEntity(id: $id, latitude: $latitude, longitude: $longitude, locationUploadStatus: $locationUploadStatus)';
}


}

/// @nodoc
abstract mixin class _$DocReqEntityCopyWith<$Res> implements $DocReqEntityCopyWith<$Res> {
  factory _$DocReqEntityCopyWith(_DocReqEntity value, $Res Function(_DocReqEntity) _then) = __$DocReqEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, double latitude, double longitude, UploadStatus locationUploadStatus
});




}
/// @nodoc
class __$DocReqEntityCopyWithImpl<$Res>
    implements _$DocReqEntityCopyWith<$Res> {
  __$DocReqEntityCopyWithImpl(this._self, this._then);

  final _DocReqEntity _self;
  final $Res Function(_DocReqEntity) _then;

/// Create a copy of DocReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? latitude = null,Object? longitude = null,Object? locationUploadStatus = null,}) {
  return _then(_DocReqEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,locationUploadStatus: null == locationUploadStatus ? _self.locationUploadStatus : locationUploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,
  ));
}


}

/// @nodoc
mixin _$DocMediaReqEntity {

 int get id; int get docId; String get filePath; String get thumbnail; DocMediaType get fileType;
/// Create a copy of DocMediaReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocMediaReqEntityCopyWith<DocMediaReqEntity> get copyWith => _$DocMediaReqEntityCopyWithImpl<DocMediaReqEntity>(this as DocMediaReqEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocMediaReqEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.fileType, fileType) || other.fileType == fileType));
}


@override
int get hashCode => Object.hash(runtimeType,id,docId,filePath,thumbnail,fileType);

@override
String toString() {
  return 'DocMediaReqEntity(id: $id, docId: $docId, filePath: $filePath, thumbnail: $thumbnail, fileType: $fileType)';
}


}

/// @nodoc
abstract mixin class $DocMediaReqEntityCopyWith<$Res>  {
  factory $DocMediaReqEntityCopyWith(DocMediaReqEntity value, $Res Function(DocMediaReqEntity) _then) = _$DocMediaReqEntityCopyWithImpl;
@useResult
$Res call({
 int id, int docId, String filePath, String thumbnail, DocMediaType fileType
});




}
/// @nodoc
class _$DocMediaReqEntityCopyWithImpl<$Res>
    implements $DocMediaReqEntityCopyWith<$Res> {
  _$DocMediaReqEntityCopyWithImpl(this._self, this._then);

  final DocMediaReqEntity _self;
  final $Res Function(DocMediaReqEntity) _then;

/// Create a copy of DocMediaReqEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? docId = null,Object? filePath = null,Object? thumbnail = null,Object? fileType = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as DocMediaType,
  ));
}

}


/// Adds pattern-matching-related methods to [DocMediaReqEntity].
extension DocMediaReqEntityPatterns on DocMediaReqEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocMediaReqEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocMediaReqEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocMediaReqEntity value)  $default,){
final _that = this;
switch (_that) {
case _DocMediaReqEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocMediaReqEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DocMediaReqEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int docId,  String filePath,  String thumbnail,  DocMediaType fileType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocMediaReqEntity() when $default != null:
return $default(_that.id,_that.docId,_that.filePath,_that.thumbnail,_that.fileType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int docId,  String filePath,  String thumbnail,  DocMediaType fileType)  $default,) {final _that = this;
switch (_that) {
case _DocMediaReqEntity():
return $default(_that.id,_that.docId,_that.filePath,_that.thumbnail,_that.fileType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int docId,  String filePath,  String thumbnail,  DocMediaType fileType)?  $default,) {final _that = this;
switch (_that) {
case _DocMediaReqEntity() when $default != null:
return $default(_that.id,_that.docId,_that.filePath,_that.thumbnail,_that.fileType);case _:
  return null;

}
}

}

/// @nodoc


class _DocMediaReqEntity implements DocMediaReqEntity {
  const _DocMediaReqEntity({required this.id, required this.docId, required this.filePath, required this.thumbnail, required this.fileType});
  

@override final  int id;
@override final  int docId;
@override final  String filePath;
@override final  String thumbnail;
@override final  DocMediaType fileType;

/// Create a copy of DocMediaReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocMediaReqEntityCopyWith<_DocMediaReqEntity> get copyWith => __$DocMediaReqEntityCopyWithImpl<_DocMediaReqEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocMediaReqEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.fileType, fileType) || other.fileType == fileType));
}


@override
int get hashCode => Object.hash(runtimeType,id,docId,filePath,thumbnail,fileType);

@override
String toString() {
  return 'DocMediaReqEntity(id: $id, docId: $docId, filePath: $filePath, thumbnail: $thumbnail, fileType: $fileType)';
}


}

/// @nodoc
abstract mixin class _$DocMediaReqEntityCopyWith<$Res> implements $DocMediaReqEntityCopyWith<$Res> {
  factory _$DocMediaReqEntityCopyWith(_DocMediaReqEntity value, $Res Function(_DocMediaReqEntity) _then) = __$DocMediaReqEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int docId, String filePath, String thumbnail, DocMediaType fileType
});




}
/// @nodoc
class __$DocMediaReqEntityCopyWithImpl<$Res>
    implements _$DocMediaReqEntityCopyWith<$Res> {
  __$DocMediaReqEntityCopyWithImpl(this._self, this._then);

  final _DocMediaReqEntity _self;
  final $Res Function(_DocMediaReqEntity) _then;

/// Create a copy of DocMediaReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? docId = null,Object? filePath = null,Object? thumbnail = null,Object? fileType = null,}) {
  return _then(_DocMediaReqEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as DocMediaType,
  ));
}


}

// dart format on
