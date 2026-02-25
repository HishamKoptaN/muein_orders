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

 GenericFormzInput<int>? get docId; List<DocFileEntity> get files; LocationEntity? get location;
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
 GenericFormzInput<int>? docId, List<DocFileEntity> files, LocationEntity? location
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
as GenericFormzInput<int>?,files: null == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<DocFileEntity>,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GenericFormzInput<int>? docId,  List<DocFileEntity> files,  LocationEntity? location)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GenericFormzInput<int>? docId,  List<DocFileEntity> files,  LocationEntity? location)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GenericFormzInput<int>? docId,  List<DocFileEntity> files,  LocationEntity? location)?  $default,) {final _that = this;
switch (_that) {
case _CreateCachedDocEntity() when $default != null:
return $default(_that.docId,_that.files,_that.location);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCachedDocEntity extends CreateCachedDocEntity with DiagnosticableTreeMixin {
  const _CreateCachedDocEntity({this.docId, final  List<DocFileEntity> files = const [], this.location}): _files = files,super._();
  

@override final  GenericFormzInput<int>? docId;
 final  List<DocFileEntity> _files;
@override@JsonKey() List<DocFileEntity> get files {
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
 GenericFormzInput<int>? docId, List<DocFileEntity> files, LocationEntity? location
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
as GenericFormzInput<int>?,files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<DocFileEntity>,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
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
mixin _$DocFileEntity implements DiagnosticableTreeMixin {

 FileFormzInput? get file; DocFile? get docFile; FileUploadStatus get docFileStatus;
/// Create a copy of DocFileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocFileEntityCopyWith<DocFileEntity> get copyWith => _$DocFileEntityCopyWithImpl<DocFileEntity>(this as DocFileEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DocFileEntity'))
    ..add(DiagnosticsProperty('file', file))..add(DiagnosticsProperty('docFile', docFile))..add(DiagnosticsProperty('docFileStatus', docFileStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocFileEntity&&(identical(other.file, file) || other.file == file)&&(identical(other.docFile, docFile) || other.docFile == docFile)&&(identical(other.docFileStatus, docFileStatus) || other.docFileStatus == docFileStatus));
}


@override
int get hashCode => Object.hash(runtimeType,file,docFile,docFileStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DocFileEntity(file: $file, docFile: $docFile, docFileStatus: $docFileStatus)';
}


}

/// @nodoc
abstract mixin class $DocFileEntityCopyWith<$Res>  {
  factory $DocFileEntityCopyWith(DocFileEntity value, $Res Function(DocFileEntity) _then) = _$DocFileEntityCopyWithImpl;
@useResult
$Res call({
 FileFormzInput? file, DocFile? docFile, FileUploadStatus docFileStatus
});




}
/// @nodoc
class _$DocFileEntityCopyWithImpl<$Res>
    implements $DocFileEntityCopyWith<$Res> {
  _$DocFileEntityCopyWithImpl(this._self, this._then);

  final DocFileEntity _self;
  final $Res Function(DocFileEntity) _then;

/// Create a copy of DocFileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? file = freezed,Object? docFile = freezed,Object? docFileStatus = null,}) {
  return _then(_self.copyWith(
file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as FileFormzInput?,docFile: freezed == docFile ? _self.docFile : docFile // ignore: cast_nullable_to_non_nullable
as DocFile?,docFileStatus: null == docFileStatus ? _self.docFileStatus : docFileStatus // ignore: cast_nullable_to_non_nullable
as FileUploadStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [DocFileEntity].
extension DocFileEntityPatterns on DocFileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocFileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocFileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocFileEntity value)  $default,){
final _that = this;
switch (_that) {
case _DocFileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocFileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DocFileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FileFormzInput? file,  DocFile? docFile,  FileUploadStatus docFileStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocFileEntity() when $default != null:
return $default(_that.file,_that.docFile,_that.docFileStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FileFormzInput? file,  DocFile? docFile,  FileUploadStatus docFileStatus)  $default,) {final _that = this;
switch (_that) {
case _DocFileEntity():
return $default(_that.file,_that.docFile,_that.docFileStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FileFormzInput? file,  DocFile? docFile,  FileUploadStatus docFileStatus)?  $default,) {final _that = this;
switch (_that) {
case _DocFileEntity() when $default != null:
return $default(_that.file,_that.docFile,_that.docFileStatus);case _:
  return null;

}
}

}

/// @nodoc


class _DocFileEntity with DiagnosticableTreeMixin implements DocFileEntity {
  const _DocFileEntity({this.file, this.docFile, this.docFileStatus = FileUploadStatus.init});
  

@override final  FileFormzInput? file;
@override final  DocFile? docFile;
@override@JsonKey() final  FileUploadStatus docFileStatus;

/// Create a copy of DocFileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocFileEntityCopyWith<_DocFileEntity> get copyWith => __$DocFileEntityCopyWithImpl<_DocFileEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DocFileEntity'))
    ..add(DiagnosticsProperty('file', file))..add(DiagnosticsProperty('docFile', docFile))..add(DiagnosticsProperty('docFileStatus', docFileStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocFileEntity&&(identical(other.file, file) || other.file == file)&&(identical(other.docFile, docFile) || other.docFile == docFile)&&(identical(other.docFileStatus, docFileStatus) || other.docFileStatus == docFileStatus));
}


@override
int get hashCode => Object.hash(runtimeType,file,docFile,docFileStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DocFileEntity(file: $file, docFile: $docFile, docFileStatus: $docFileStatus)';
}


}

/// @nodoc
abstract mixin class _$DocFileEntityCopyWith<$Res> implements $DocFileEntityCopyWith<$Res> {
  factory _$DocFileEntityCopyWith(_DocFileEntity value, $Res Function(_DocFileEntity) _then) = __$DocFileEntityCopyWithImpl;
@override @useResult
$Res call({
 FileFormzInput? file, DocFile? docFile, FileUploadStatus docFileStatus
});




}
/// @nodoc
class __$DocFileEntityCopyWithImpl<$Res>
    implements _$DocFileEntityCopyWith<$Res> {
  __$DocFileEntityCopyWithImpl(this._self, this._then);

  final _DocFileEntity _self;
  final $Res Function(_DocFileEntity) _then;

/// Create a copy of DocFileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? file = freezed,Object? docFile = freezed,Object? docFileStatus = null,}) {
  return _then(_DocFileEntity(
file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as FileFormzInput?,docFile: freezed == docFile ? _self.docFile : docFile // ignore: cast_nullable_to_non_nullable
as DocFile?,docFileStatus: null == docFileStatus ? _self.docFileStatus : docFileStatus // ignore: cast_nullable_to_non_nullable
as FileUploadStatus,
  ));
}


}

/// @nodoc
mixin _$LocationEntity implements DiagnosticableTreeMixin {

 double? get latitude; double? get longitude; FileUploadStatus get status;
/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationEntityCopyWith<LocationEntity> get copyWith => _$LocationEntityCopyWithImpl<LocationEntity>(this as LocationEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocationEntity'))
    ..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationEntity&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocationEntity(latitude: $latitude, longitude: $longitude, status: $status)';
}


}

/// @nodoc
abstract mixin class $LocationEntityCopyWith<$Res>  {
  factory $LocationEntityCopyWith(LocationEntity value, $Res Function(LocationEntity) _then) = _$LocationEntityCopyWithImpl;
@useResult
$Res call({
 double? latitude, double? longitude, FileUploadStatus status
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
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = freezed,Object? longitude = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FileUploadStatus,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? latitude,  double? longitude,  FileUploadStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? latitude,  double? longitude,  FileUploadStatus status)  $default,) {final _that = this;
switch (_that) {
case _LocationEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? latitude,  double? longitude,  FileUploadStatus status)?  $default,) {final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
return $default(_that.latitude,_that.longitude,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _LocationEntity extends LocationEntity with DiagnosticableTreeMixin {
  const _LocationEntity({this.latitude, this.longitude, this.status = FileUploadStatus.init}): super._();
  

@override final  double? latitude;
@override final  double? longitude;
@override@JsonKey() final  FileUploadStatus status;

/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationEntityCopyWith<_LocationEntity> get copyWith => __$LocationEntityCopyWithImpl<_LocationEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocationEntity'))
    ..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationEntity&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocationEntity(latitude: $latitude, longitude: $longitude, status: $status)';
}


}

/// @nodoc
abstract mixin class _$LocationEntityCopyWith<$Res> implements $LocationEntityCopyWith<$Res> {
  factory _$LocationEntityCopyWith(_LocationEntity value, $Res Function(_LocationEntity) _then) = __$LocationEntityCopyWithImpl;
@override @useResult
$Res call({
 double? latitude, double? longitude, FileUploadStatus status
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
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = freezed,Object? longitude = freezed,Object? status = null,}) {
  return _then(_LocationEntity(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FileUploadStatus,
  ));
}


}

// dart format on
