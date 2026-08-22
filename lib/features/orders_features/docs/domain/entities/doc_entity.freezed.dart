// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doc_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DocEntity {

 int get id; List<DocMediaEntity> get files; String get latitude; String get longitude; DocStatusEntity get docStatus; LocationDocEntity get location; UploadStatus get uploadStatus; double get uploadProgress; int? get copiesCount; String? get reviewedBy; String? get reviewedAt; String? get adminNotes; String? get createdAt; String? get updatedAt;
/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocEntityCopyWith<DocEntity> get copyWith => _$DocEntityCopyWithImpl<DocEntity>(this as DocEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocEntity&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.files, files)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.docStatus, docStatus) || other.docStatus == docStatus)&&(identical(other.location, location) || other.location == location)&&(identical(other.uploadStatus, uploadStatus) || other.uploadStatus == uploadStatus)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress)&&(identical(other.copiesCount, copiesCount) || other.copiesCount == copiesCount)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(files),latitude,longitude,docStatus,location,uploadStatus,uploadProgress,copiesCount,reviewedBy,reviewedAt,adminNotes,createdAt,updatedAt);

@override
String toString() {
  return 'DocEntity(id: $id, files: $files, latitude: $latitude, longitude: $longitude, docStatus: $docStatus, location: $location, uploadStatus: $uploadStatus, uploadProgress: $uploadProgress, copiesCount: $copiesCount, reviewedBy: $reviewedBy, reviewedAt: $reviewedAt, adminNotes: $adminNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DocEntityCopyWith<$Res>  {
  factory $DocEntityCopyWith(DocEntity value, $Res Function(DocEntity) _then) = _$DocEntityCopyWithImpl;
@useResult
$Res call({
 int id, List<DocMediaEntity> files, String latitude, String longitude, DocStatusEntity docStatus, LocationDocEntity location, UploadStatus uploadStatus, double uploadProgress, int? copiesCount, String? reviewedBy, String? reviewedAt, String? adminNotes, String? createdAt, String? updatedAt
});


$DocStatusEntityCopyWith<$Res> get docStatus;$LocationDocEntityCopyWith<$Res> get location;

}
/// @nodoc
class _$DocEntityCopyWithImpl<$Res>
    implements $DocEntityCopyWith<$Res> {
  _$DocEntityCopyWithImpl(this._self, this._then);

  final DocEntity _self;
  final $Res Function(DocEntity) _then;

/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? files = null,Object? latitude = null,Object? longitude = null,Object? docStatus = null,Object? location = null,Object? uploadStatus = null,Object? uploadProgress = null,Object? copiesCount = freezed,Object? reviewedBy = freezed,Object? reviewedAt = freezed,Object? adminNotes = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,files: null == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<DocMediaEntity>,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,docStatus: null == docStatus ? _self.docStatus : docStatus // ignore: cast_nullable_to_non_nullable
as DocStatusEntity,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationDocEntity,uploadStatus: null == uploadStatus ? _self.uploadStatus : uploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as double,copiesCount: freezed == copiesCount ? _self.copiesCount : copiesCount // ignore: cast_nullable_to_non_nullable
as int?,reviewedBy: freezed == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,adminNotes: freezed == adminNotes ? _self.adminNotes : adminNotes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocStatusEntityCopyWith<$Res> get docStatus {
  
  return $DocStatusEntityCopyWith<$Res>(_self.docStatus, (value) {
    return _then(_self.copyWith(docStatus: value));
  });
}/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationDocEntityCopyWith<$Res> get location {
  
  return $LocationDocEntityCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [DocEntity].
extension DocEntityPatterns on DocEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocEntity value)  $default,){
final _that = this;
switch (_that) {
case _DocEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DocEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  List<DocMediaEntity> files,  String latitude,  String longitude,  DocStatusEntity docStatus,  LocationDocEntity location,  UploadStatus uploadStatus,  double uploadProgress,  int? copiesCount,  String? reviewedBy,  String? reviewedAt,  String? adminNotes,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocEntity() when $default != null:
return $default(_that.id,_that.files,_that.latitude,_that.longitude,_that.docStatus,_that.location,_that.uploadStatus,_that.uploadProgress,_that.copiesCount,_that.reviewedBy,_that.reviewedAt,_that.adminNotes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  List<DocMediaEntity> files,  String latitude,  String longitude,  DocStatusEntity docStatus,  LocationDocEntity location,  UploadStatus uploadStatus,  double uploadProgress,  int? copiesCount,  String? reviewedBy,  String? reviewedAt,  String? adminNotes,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DocEntity():
return $default(_that.id,_that.files,_that.latitude,_that.longitude,_that.docStatus,_that.location,_that.uploadStatus,_that.uploadProgress,_that.copiesCount,_that.reviewedBy,_that.reviewedAt,_that.adminNotes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  List<DocMediaEntity> files,  String latitude,  String longitude,  DocStatusEntity docStatus,  LocationDocEntity location,  UploadStatus uploadStatus,  double uploadProgress,  int? copiesCount,  String? reviewedBy,  String? reviewedAt,  String? adminNotes,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DocEntity() when $default != null:
return $default(_that.id,_that.files,_that.latitude,_that.longitude,_that.docStatus,_that.location,_that.uploadStatus,_that.uploadProgress,_that.copiesCount,_that.reviewedBy,_that.reviewedAt,_that.adminNotes,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _DocEntity implements DocEntity {
  const _DocEntity({this.id = 0, final  List<DocMediaEntity> files = const [], this.latitude = '', this.longitude = '', this.docStatus = const DocStatusEntity(), this.location = const LocationDocEntity(), this.uploadStatus = UploadStatus.pending, this.uploadProgress = 0.0, this.copiesCount, this.reviewedBy, this.reviewedAt, this.adminNotes, this.createdAt, this.updatedAt}): _files = files;
  

@override@JsonKey() final  int id;
 final  List<DocMediaEntity> _files;
@override@JsonKey() List<DocMediaEntity> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}

@override@JsonKey() final  String latitude;
@override@JsonKey() final  String longitude;
@override@JsonKey() final  DocStatusEntity docStatus;
@override@JsonKey() final  LocationDocEntity location;
@override@JsonKey() final  UploadStatus uploadStatus;
@override@JsonKey() final  double uploadProgress;
@override final  int? copiesCount;
@override final  String? reviewedBy;
@override final  String? reviewedAt;
@override final  String? adminNotes;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocEntityCopyWith<_DocEntity> get copyWith => __$DocEntityCopyWithImpl<_DocEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocEntity&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.docStatus, docStatus) || other.docStatus == docStatus)&&(identical(other.location, location) || other.location == location)&&(identical(other.uploadStatus, uploadStatus) || other.uploadStatus == uploadStatus)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress)&&(identical(other.copiesCount, copiesCount) || other.copiesCount == copiesCount)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_files),latitude,longitude,docStatus,location,uploadStatus,uploadProgress,copiesCount,reviewedBy,reviewedAt,adminNotes,createdAt,updatedAt);

@override
String toString() {
  return 'DocEntity(id: $id, files: $files, latitude: $latitude, longitude: $longitude, docStatus: $docStatus, location: $location, uploadStatus: $uploadStatus, uploadProgress: $uploadProgress, copiesCount: $copiesCount, reviewedBy: $reviewedBy, reviewedAt: $reviewedAt, adminNotes: $adminNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DocEntityCopyWith<$Res> implements $DocEntityCopyWith<$Res> {
  factory _$DocEntityCopyWith(_DocEntity value, $Res Function(_DocEntity) _then) = __$DocEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, List<DocMediaEntity> files, String latitude, String longitude, DocStatusEntity docStatus, LocationDocEntity location, UploadStatus uploadStatus, double uploadProgress, int? copiesCount, String? reviewedBy, String? reviewedAt, String? adminNotes, String? createdAt, String? updatedAt
});


@override $DocStatusEntityCopyWith<$Res> get docStatus;@override $LocationDocEntityCopyWith<$Res> get location;

}
/// @nodoc
class __$DocEntityCopyWithImpl<$Res>
    implements _$DocEntityCopyWith<$Res> {
  __$DocEntityCopyWithImpl(this._self, this._then);

  final _DocEntity _self;
  final $Res Function(_DocEntity) _then;

/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? files = null,Object? latitude = null,Object? longitude = null,Object? docStatus = null,Object? location = null,Object? uploadStatus = null,Object? uploadProgress = null,Object? copiesCount = freezed,Object? reviewedBy = freezed,Object? reviewedAt = freezed,Object? adminNotes = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_DocEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<DocMediaEntity>,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,docStatus: null == docStatus ? _self.docStatus : docStatus // ignore: cast_nullable_to_non_nullable
as DocStatusEntity,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationDocEntity,uploadStatus: null == uploadStatus ? _self.uploadStatus : uploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as double,copiesCount: freezed == copiesCount ? _self.copiesCount : copiesCount // ignore: cast_nullable_to_non_nullable
as int?,reviewedBy: freezed == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,adminNotes: freezed == adminNotes ? _self.adminNotes : adminNotes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocStatusEntityCopyWith<$Res> get docStatus {
  
  return $DocStatusEntityCopyWith<$Res>(_self.docStatus, (value) {
    return _then(_self.copyWith(docStatus: value));
  });
}/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationDocEntityCopyWith<$Res> get location {
  
  return $LocationDocEntityCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

/// @nodoc
mixin _$DocMediaEntity {

 int get id; int get docId; String get filePath; DocMediaType get docMediaType; String get thumbnail; int get sequence; UploadStatus get fileUploadStatus; String get path; String get remoteUrl; String get createdAt; String get updatedAt;
/// Create a copy of DocMediaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocMediaEntityCopyWith<DocMediaEntity> get copyWith => _$DocMediaEntityCopyWithImpl<DocMediaEntity>(this as DocMediaEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocMediaEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.docMediaType, docMediaType) || other.docMediaType == docMediaType)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.fileUploadStatus, fileUploadStatus) || other.fileUploadStatus == fileUploadStatus)&&(identical(other.path, path) || other.path == path)&&(identical(other.remoteUrl, remoteUrl) || other.remoteUrl == remoteUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,docId,filePath,docMediaType,thumbnail,sequence,fileUploadStatus,path,remoteUrl,createdAt,updatedAt);

@override
String toString() {
  return 'DocMediaEntity(id: $id, docId: $docId, filePath: $filePath, docMediaType: $docMediaType, thumbnail: $thumbnail, sequence: $sequence, fileUploadStatus: $fileUploadStatus, path: $path, remoteUrl: $remoteUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DocMediaEntityCopyWith<$Res>  {
  factory $DocMediaEntityCopyWith(DocMediaEntity value, $Res Function(DocMediaEntity) _then) = _$DocMediaEntityCopyWithImpl;
@useResult
$Res call({
 int id, int docId, String filePath, DocMediaType docMediaType, String thumbnail, int sequence, UploadStatus fileUploadStatus, String path, String remoteUrl, String createdAt, String updatedAt
});




}
/// @nodoc
class _$DocMediaEntityCopyWithImpl<$Res>
    implements $DocMediaEntityCopyWith<$Res> {
  _$DocMediaEntityCopyWithImpl(this._self, this._then);

  final DocMediaEntity _self;
  final $Res Function(DocMediaEntity) _then;

/// Create a copy of DocMediaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? docId = null,Object? filePath = null,Object? docMediaType = null,Object? thumbnail = null,Object? sequence = null,Object? fileUploadStatus = null,Object? path = null,Object? remoteUrl = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,docMediaType: null == docMediaType ? _self.docMediaType : docMediaType // ignore: cast_nullable_to_non_nullable
as DocMediaType,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,fileUploadStatus: null == fileUploadStatus ? _self.fileUploadStatus : fileUploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,remoteUrl: null == remoteUrl ? _self.remoteUrl : remoteUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DocMediaEntity].
extension DocMediaEntityPatterns on DocMediaEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocMediaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocMediaEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocMediaEntity value)  $default,){
final _that = this;
switch (_that) {
case _DocMediaEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocMediaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DocMediaEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int docId,  String filePath,  DocMediaType docMediaType,  String thumbnail,  int sequence,  UploadStatus fileUploadStatus,  String path,  String remoteUrl,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocMediaEntity() when $default != null:
return $default(_that.id,_that.docId,_that.filePath,_that.docMediaType,_that.thumbnail,_that.sequence,_that.fileUploadStatus,_that.path,_that.remoteUrl,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int docId,  String filePath,  DocMediaType docMediaType,  String thumbnail,  int sequence,  UploadStatus fileUploadStatus,  String path,  String remoteUrl,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DocMediaEntity():
return $default(_that.id,_that.docId,_that.filePath,_that.docMediaType,_that.thumbnail,_that.sequence,_that.fileUploadStatus,_that.path,_that.remoteUrl,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int docId,  String filePath,  DocMediaType docMediaType,  String thumbnail,  int sequence,  UploadStatus fileUploadStatus,  String path,  String remoteUrl,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DocMediaEntity() when $default != null:
return $default(_that.id,_that.docId,_that.filePath,_that.docMediaType,_that.thumbnail,_that.sequence,_that.fileUploadStatus,_that.path,_that.remoteUrl,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _DocMediaEntity implements DocMediaEntity {
  const _DocMediaEntity({this.id = 0, this.docId = 0, this.filePath = '', this.docMediaType = DocMediaType.image, this.thumbnail = '', this.sequence = 0, this.fileUploadStatus = UploadStatus.init, this.path = '', this.remoteUrl = '', this.createdAt = '', this.updatedAt = ''});
  

@override@JsonKey() final  int id;
@override@JsonKey() final  int docId;
@override@JsonKey() final  String filePath;
@override@JsonKey() final  DocMediaType docMediaType;
@override@JsonKey() final  String thumbnail;
@override@JsonKey() final  int sequence;
@override@JsonKey() final  UploadStatus fileUploadStatus;
@override@JsonKey() final  String path;
@override@JsonKey() final  String remoteUrl;
@override@JsonKey() final  String createdAt;
@override@JsonKey() final  String updatedAt;

/// Create a copy of DocMediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocMediaEntityCopyWith<_DocMediaEntity> get copyWith => __$DocMediaEntityCopyWithImpl<_DocMediaEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocMediaEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.docMediaType, docMediaType) || other.docMediaType == docMediaType)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.fileUploadStatus, fileUploadStatus) || other.fileUploadStatus == fileUploadStatus)&&(identical(other.path, path) || other.path == path)&&(identical(other.remoteUrl, remoteUrl) || other.remoteUrl == remoteUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,docId,filePath,docMediaType,thumbnail,sequence,fileUploadStatus,path,remoteUrl,createdAt,updatedAt);

@override
String toString() {
  return 'DocMediaEntity(id: $id, docId: $docId, filePath: $filePath, docMediaType: $docMediaType, thumbnail: $thumbnail, sequence: $sequence, fileUploadStatus: $fileUploadStatus, path: $path, remoteUrl: $remoteUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DocMediaEntityCopyWith<$Res> implements $DocMediaEntityCopyWith<$Res> {
  factory _$DocMediaEntityCopyWith(_DocMediaEntity value, $Res Function(_DocMediaEntity) _then) = __$DocMediaEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int docId, String filePath, DocMediaType docMediaType, String thumbnail, int sequence, UploadStatus fileUploadStatus, String path, String remoteUrl, String createdAt, String updatedAt
});




}
/// @nodoc
class __$DocMediaEntityCopyWithImpl<$Res>
    implements _$DocMediaEntityCopyWith<$Res> {
  __$DocMediaEntityCopyWithImpl(this._self, this._then);

  final _DocMediaEntity _self;
  final $Res Function(_DocMediaEntity) _then;

/// Create a copy of DocMediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? docId = null,Object? filePath = null,Object? docMediaType = null,Object? thumbnail = null,Object? sequence = null,Object? fileUploadStatus = null,Object? path = null,Object? remoteUrl = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_DocMediaEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,docMediaType: null == docMediaType ? _self.docMediaType : docMediaType // ignore: cast_nullable_to_non_nullable
as DocMediaType,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,fileUploadStatus: null == fileUploadStatus ? _self.fileUploadStatus : fileUploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,remoteUrl: null == remoteUrl ? _self.remoteUrl : remoteUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
