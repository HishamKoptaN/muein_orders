// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cached_doc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CachedDocModel {

 int get id; List<CachedDocMediaModel> get files; LocationDocModel? get location; UploadStatus get uploadStatus; double get uploadProgress;
/// Create a copy of CachedDocModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CachedDocModelCopyWith<CachedDocModel> get copyWith => _$CachedDocModelCopyWithImpl<CachedDocModel>(this as CachedDocModel, _$identity);

  /// Serializes this CachedDocModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CachedDocModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.files, files)&&(identical(other.location, location) || other.location == location)&&(identical(other.uploadStatus, uploadStatus) || other.uploadStatus == uploadStatus)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(files),location,uploadStatus,uploadProgress);

@override
String toString() {
  return 'CachedDocModel(id: $id, files: $files, location: $location, uploadStatus: $uploadStatus, uploadProgress: $uploadProgress)';
}


}

/// @nodoc
abstract mixin class $CachedDocModelCopyWith<$Res>  {
  factory $CachedDocModelCopyWith(CachedDocModel value, $Res Function(CachedDocModel) _then) = _$CachedDocModelCopyWithImpl;
@useResult
$Res call({
 int id, List<CachedDocMediaModel> files, LocationDocModel? location, UploadStatus uploadStatus, double uploadProgress
});


$LocationDocModelCopyWith<$Res>? get location;

}
/// @nodoc
class _$CachedDocModelCopyWithImpl<$Res>
    implements $CachedDocModelCopyWith<$Res> {
  _$CachedDocModelCopyWithImpl(this._self, this._then);

  final CachedDocModel _self;
  final $Res Function(CachedDocModel) _then;

/// Create a copy of CachedDocModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? files = null,Object? location = freezed,Object? uploadStatus = null,Object? uploadProgress = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,files: null == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<CachedDocMediaModel>,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationDocModel?,uploadStatus: null == uploadStatus ? _self.uploadStatus : uploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of CachedDocModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationDocModelCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationDocModelCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [CachedDocModel].
extension CachedDocModelPatterns on CachedDocModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CachedDocModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CachedDocModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CachedDocModel value)  $default,){
final _that = this;
switch (_that) {
case _CachedDocModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CachedDocModel value)?  $default,){
final _that = this;
switch (_that) {
case _CachedDocModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  List<CachedDocMediaModel> files,  LocationDocModel? location,  UploadStatus uploadStatus,  double uploadProgress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CachedDocModel() when $default != null:
return $default(_that.id,_that.files,_that.location,_that.uploadStatus,_that.uploadProgress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  List<CachedDocMediaModel> files,  LocationDocModel? location,  UploadStatus uploadStatus,  double uploadProgress)  $default,) {final _that = this;
switch (_that) {
case _CachedDocModel():
return $default(_that.id,_that.files,_that.location,_that.uploadStatus,_that.uploadProgress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  List<CachedDocMediaModel> files,  LocationDocModel? location,  UploadStatus uploadStatus,  double uploadProgress)?  $default,) {final _that = this;
switch (_that) {
case _CachedDocModel() when $default != null:
return $default(_that.id,_that.files,_that.location,_that.uploadStatus,_that.uploadProgress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CachedDocModel implements CachedDocModel {
  const _CachedDocModel({this.id = 0, final  List<CachedDocMediaModel> files = const [], this.location, this.uploadStatus = UploadStatus.pending, this.uploadProgress = 0.0}): _files = files;
  factory _CachedDocModel.fromJson(Map<String, dynamic> json) => _$CachedDocModelFromJson(json);

@override@JsonKey() final  int id;
 final  List<CachedDocMediaModel> _files;
@override@JsonKey() List<CachedDocMediaModel> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}

@override final  LocationDocModel? location;
@override@JsonKey() final  UploadStatus uploadStatus;
@override@JsonKey() final  double uploadProgress;

/// Create a copy of CachedDocModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CachedDocModelCopyWith<_CachedDocModel> get copyWith => __$CachedDocModelCopyWithImpl<_CachedDocModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CachedDocModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CachedDocModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.location, location) || other.location == location)&&(identical(other.uploadStatus, uploadStatus) || other.uploadStatus == uploadStatus)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_files),location,uploadStatus,uploadProgress);

@override
String toString() {
  return 'CachedDocModel(id: $id, files: $files, location: $location, uploadStatus: $uploadStatus, uploadProgress: $uploadProgress)';
}


}

/// @nodoc
abstract mixin class _$CachedDocModelCopyWith<$Res> implements $CachedDocModelCopyWith<$Res> {
  factory _$CachedDocModelCopyWith(_CachedDocModel value, $Res Function(_CachedDocModel) _then) = __$CachedDocModelCopyWithImpl;
@override @useResult
$Res call({
 int id, List<CachedDocMediaModel> files, LocationDocModel? location, UploadStatus uploadStatus, double uploadProgress
});


@override $LocationDocModelCopyWith<$Res>? get location;

}
/// @nodoc
class __$CachedDocModelCopyWithImpl<$Res>
    implements _$CachedDocModelCopyWith<$Res> {
  __$CachedDocModelCopyWithImpl(this._self, this._then);

  final _CachedDocModel _self;
  final $Res Function(_CachedDocModel) _then;

/// Create a copy of CachedDocModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? files = null,Object? location = freezed,Object? uploadStatus = null,Object? uploadProgress = null,}) {
  return _then(_CachedDocModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<CachedDocMediaModel>,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationDocModel?,uploadStatus: null == uploadStatus ? _self.uploadStatus : uploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of CachedDocModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationDocModelCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationDocModelCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc
mixin _$LocationDocModel {

 double get latitude; double get longitude; UploadStatus get status;
/// Create a copy of LocationDocModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationDocModelCopyWith<LocationDocModel> get copyWith => _$LocationDocModelCopyWithImpl<LocationDocModel>(this as LocationDocModel, _$identity);

  /// Serializes this LocationDocModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationDocModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,status);

@override
String toString() {
  return 'LocationDocModel(latitude: $latitude, longitude: $longitude, status: $status)';
}


}

/// @nodoc
abstract mixin class $LocationDocModelCopyWith<$Res>  {
  factory $LocationDocModelCopyWith(LocationDocModel value, $Res Function(LocationDocModel) _then) = _$LocationDocModelCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, UploadStatus status
});




}
/// @nodoc
class _$LocationDocModelCopyWithImpl<$Res>
    implements $LocationDocModelCopyWith<$Res> {
  _$LocationDocModelCopyWithImpl(this._self, this._then);

  final LocationDocModel _self;
  final $Res Function(LocationDocModel) _then;

/// Create a copy of LocationDocModel
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


/// Adds pattern-matching-related methods to [LocationDocModel].
extension LocationDocModelPatterns on LocationDocModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationDocModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationDocModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationDocModel value)  $default,){
final _that = this;
switch (_that) {
case _LocationDocModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationDocModel value)?  $default,){
final _that = this;
switch (_that) {
case _LocationDocModel() when $default != null:
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
case _LocationDocModel() when $default != null:
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
case _LocationDocModel():
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
case _LocationDocModel() when $default != null:
return $default(_that.latitude,_that.longitude,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocationDocModel implements LocationDocModel {
  const _LocationDocModel({this.latitude = 0.0, this.longitude = 0.0, this.status = UploadStatus.init});
  factory _LocationDocModel.fromJson(Map<String, dynamic> json) => _$LocationDocModelFromJson(json);

@override@JsonKey() final  double latitude;
@override@JsonKey() final  double longitude;
@override@JsonKey() final  UploadStatus status;

/// Create a copy of LocationDocModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationDocModelCopyWith<_LocationDocModel> get copyWith => __$LocationDocModelCopyWithImpl<_LocationDocModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationDocModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationDocModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,status);

@override
String toString() {
  return 'LocationDocModel(latitude: $latitude, longitude: $longitude, status: $status)';
}


}

/// @nodoc
abstract mixin class _$LocationDocModelCopyWith<$Res> implements $LocationDocModelCopyWith<$Res> {
  factory _$LocationDocModelCopyWith(_LocationDocModel value, $Res Function(_LocationDocModel) _then) = __$LocationDocModelCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, UploadStatus status
});




}
/// @nodoc
class __$LocationDocModelCopyWithImpl<$Res>
    implements _$LocationDocModelCopyWith<$Res> {
  __$LocationDocModelCopyWithImpl(this._self, this._then);

  final _LocationDocModel _self;
  final $Res Function(_LocationDocModel) _then;

/// Create a copy of LocationDocModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? status = null,}) {
  return _then(_LocationDocModel(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UploadStatus,
  ));
}


}


/// @nodoc
mixin _$CachedDocMediaModel {

 int get id; int get docId; DocMediaType get type; int get sequence; String get path; String get remoteUrl; UploadStatus get status;
/// Create a copy of CachedDocMediaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CachedDocMediaModelCopyWith<CachedDocMediaModel> get copyWith => _$CachedDocMediaModelCopyWithImpl<CachedDocMediaModel>(this as CachedDocMediaModel, _$identity);

  /// Serializes this CachedDocMediaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CachedDocMediaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.type, type) || other.type == type)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.path, path) || other.path == path)&&(identical(other.remoteUrl, remoteUrl) || other.remoteUrl == remoteUrl)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,docId,type,sequence,path,remoteUrl,status);

@override
String toString() {
  return 'CachedDocMediaModel(id: $id, docId: $docId, type: $type, sequence: $sequence, path: $path, remoteUrl: $remoteUrl, status: $status)';
}


}

/// @nodoc
abstract mixin class $CachedDocMediaModelCopyWith<$Res>  {
  factory $CachedDocMediaModelCopyWith(CachedDocMediaModel value, $Res Function(CachedDocMediaModel) _then) = _$CachedDocMediaModelCopyWithImpl;
@useResult
$Res call({
 int id, int docId, DocMediaType type, int sequence, String path, String remoteUrl, UploadStatus status
});




}
/// @nodoc
class _$CachedDocMediaModelCopyWithImpl<$Res>
    implements $CachedDocMediaModelCopyWith<$Res> {
  _$CachedDocMediaModelCopyWithImpl(this._self, this._then);

  final CachedDocMediaModel _self;
  final $Res Function(CachedDocMediaModel) _then;

/// Create a copy of CachedDocMediaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? docId = null,Object? type = null,Object? sequence = null,Object? path = null,Object? remoteUrl = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DocMediaType,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,remoteUrl: null == remoteUrl ? _self.remoteUrl : remoteUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UploadStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [CachedDocMediaModel].
extension CachedDocMediaModelPatterns on CachedDocMediaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CachedDocMediaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CachedDocMediaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CachedDocMediaModel value)  $default,){
final _that = this;
switch (_that) {
case _CachedDocMediaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CachedDocMediaModel value)?  $default,){
final _that = this;
switch (_that) {
case _CachedDocMediaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int docId,  DocMediaType type,  int sequence,  String path,  String remoteUrl,  UploadStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CachedDocMediaModel() when $default != null:
return $default(_that.id,_that.docId,_that.type,_that.sequence,_that.path,_that.remoteUrl,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int docId,  DocMediaType type,  int sequence,  String path,  String remoteUrl,  UploadStatus status)  $default,) {final _that = this;
switch (_that) {
case _CachedDocMediaModel():
return $default(_that.id,_that.docId,_that.type,_that.sequence,_that.path,_that.remoteUrl,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int docId,  DocMediaType type,  int sequence,  String path,  String remoteUrl,  UploadStatus status)?  $default,) {final _that = this;
switch (_that) {
case _CachedDocMediaModel() when $default != null:
return $default(_that.id,_that.docId,_that.type,_that.sequence,_that.path,_that.remoteUrl,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CachedDocMediaModel implements CachedDocMediaModel {
  const _CachedDocMediaModel({this.id = 0, this.docId = 0, this.type = DocMediaType.image, this.sequence = 0, this.path = '', this.remoteUrl = '', this.status = UploadStatus.init});
  factory _CachedDocMediaModel.fromJson(Map<String, dynamic> json) => _$CachedDocMediaModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int docId;
@override@JsonKey() final  DocMediaType type;
@override@JsonKey() final  int sequence;
@override@JsonKey() final  String path;
@override@JsonKey() final  String remoteUrl;
@override@JsonKey() final  UploadStatus status;

/// Create a copy of CachedDocMediaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CachedDocMediaModelCopyWith<_CachedDocMediaModel> get copyWith => __$CachedDocMediaModelCopyWithImpl<_CachedDocMediaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CachedDocMediaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CachedDocMediaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.type, type) || other.type == type)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.path, path) || other.path == path)&&(identical(other.remoteUrl, remoteUrl) || other.remoteUrl == remoteUrl)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,docId,type,sequence,path,remoteUrl,status);

@override
String toString() {
  return 'CachedDocMediaModel(id: $id, docId: $docId, type: $type, sequence: $sequence, path: $path, remoteUrl: $remoteUrl, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CachedDocMediaModelCopyWith<$Res> implements $CachedDocMediaModelCopyWith<$Res> {
  factory _$CachedDocMediaModelCopyWith(_CachedDocMediaModel value, $Res Function(_CachedDocMediaModel) _then) = __$CachedDocMediaModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int docId, DocMediaType type, int sequence, String path, String remoteUrl, UploadStatus status
});




}
/// @nodoc
class __$CachedDocMediaModelCopyWithImpl<$Res>
    implements _$CachedDocMediaModelCopyWith<$Res> {
  __$CachedDocMediaModelCopyWithImpl(this._self, this._then);

  final _CachedDocMediaModel _self;
  final $Res Function(_CachedDocMediaModel) _then;

/// Create a copy of CachedDocMediaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? docId = null,Object? type = null,Object? sequence = null,Object? path = null,Object? remoteUrl = null,Object? status = null,}) {
  return _then(_CachedDocMediaModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DocMediaType,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,remoteUrl: null == remoteUrl ? _self.remoteUrl : remoteUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UploadStatus,
  ));
}


}

// dart format on
