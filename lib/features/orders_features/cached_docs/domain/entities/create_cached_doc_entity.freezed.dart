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

 int? get id; int? get itemId; int? get unitId; List<UpdateDocMediaEntity> get files; GenericFormInput get latitude; GenericFormInput get longitude; UploadStatus get locationUploadStatus; DocEntity get original;
/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCachedDocEntityCopyWith<CreateCachedDocEntity> get copyWith => _$CreateCachedDocEntityCopyWithImpl<CreateCachedDocEntity>(this as CreateCachedDocEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CreateCachedDocEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('itemId', itemId))..add(DiagnosticsProperty('unitId', unitId))..add(DiagnosticsProperty('files', files))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('locationUploadStatus', locationUploadStatus))..add(DiagnosticsProperty('original', original));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCachedDocEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&const DeepCollectionEquality().equals(other.files, files)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.locationUploadStatus, locationUploadStatus) || other.locationUploadStatus == locationUploadStatus)&&(identical(other.original, original) || other.original == original));
}


@override
int get hashCode => Object.hash(runtimeType,id,itemId,unitId,const DeepCollectionEquality().hash(files),latitude,longitude,locationUploadStatus,original);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CreateCachedDocEntity(id: $id, itemId: $itemId, unitId: $unitId, files: $files, latitude: $latitude, longitude: $longitude, locationUploadStatus: $locationUploadStatus, original: $original)';
}


}

/// @nodoc
abstract mixin class $CreateCachedDocEntityCopyWith<$Res>  {
  factory $CreateCachedDocEntityCopyWith(CreateCachedDocEntity value, $Res Function(CreateCachedDocEntity) _then) = _$CreateCachedDocEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int? itemId, int? unitId, List<UpdateDocMediaEntity> files, GenericFormInput latitude, GenericFormInput longitude, UploadStatus locationUploadStatus, DocEntity original
});


$DocEntityCopyWith<$Res> get original;

}
/// @nodoc
class _$CreateCachedDocEntityCopyWithImpl<$Res>
    implements $CreateCachedDocEntityCopyWith<$Res> {
  _$CreateCachedDocEntityCopyWithImpl(this._self, this._then);

  final CreateCachedDocEntity _self;
  final $Res Function(CreateCachedDocEntity) _then;

/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? itemId = freezed,Object? unitId = freezed,Object? files = null,Object? latitude = null,Object? longitude = null,Object? locationUploadStatus = null,Object? original = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int?,files: null == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<UpdateDocMediaEntity>,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as GenericFormInput,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as GenericFormInput,locationUploadStatus: null == locationUploadStatus ? _self.locationUploadStatus : locationUploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as DocEntity,
  ));
}
/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocEntityCopyWith<$Res> get original {
  
  return $DocEntityCopyWith<$Res>(_self.original, (value) {
    return _then(_self.copyWith(original: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? itemId,  int? unitId,  List<UpdateDocMediaEntity> files,  GenericFormInput latitude,  GenericFormInput longitude,  UploadStatus locationUploadStatus,  DocEntity original)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCachedDocEntity() when $default != null:
return $default(_that.id,_that.itemId,_that.unitId,_that.files,_that.latitude,_that.longitude,_that.locationUploadStatus,_that.original);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? itemId,  int? unitId,  List<UpdateDocMediaEntity> files,  GenericFormInput latitude,  GenericFormInput longitude,  UploadStatus locationUploadStatus,  DocEntity original)  $default,) {final _that = this;
switch (_that) {
case _CreateCachedDocEntity():
return $default(_that.id,_that.itemId,_that.unitId,_that.files,_that.latitude,_that.longitude,_that.locationUploadStatus,_that.original);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? itemId,  int? unitId,  List<UpdateDocMediaEntity> files,  GenericFormInput latitude,  GenericFormInput longitude,  UploadStatus locationUploadStatus,  DocEntity original)?  $default,) {final _that = this;
switch (_that) {
case _CreateCachedDocEntity() when $default != null:
return $default(_that.id,_that.itemId,_that.unitId,_that.files,_that.latitude,_that.longitude,_that.locationUploadStatus,_that.original);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCachedDocEntity with DiagnosticableTreeMixin implements CreateCachedDocEntity {
  const _CreateCachedDocEntity({this.id, this.itemId, this.unitId, final  List<UpdateDocMediaEntity> files = const <UpdateDocMediaEntity>[], this.latitude = const GenericFormInput.pure(), this.longitude = const GenericFormInput.pure(), this.locationUploadStatus = UploadStatus.init, this.original = const DocEntity()}): _files = files;
  

@override final  int? id;
@override final  int? itemId;
@override final  int? unitId;
 final  List<UpdateDocMediaEntity> _files;
@override@JsonKey() List<UpdateDocMediaEntity> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}

@override@JsonKey() final  GenericFormInput latitude;
@override@JsonKey() final  GenericFormInput longitude;
@override@JsonKey() final  UploadStatus locationUploadStatus;
@override@JsonKey() final  DocEntity original;

/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCachedDocEntityCopyWith<_CreateCachedDocEntity> get copyWith => __$CreateCachedDocEntityCopyWithImpl<_CreateCachedDocEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CreateCachedDocEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('itemId', itemId))..add(DiagnosticsProperty('unitId', unitId))..add(DiagnosticsProperty('files', files))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('locationUploadStatus', locationUploadStatus))..add(DiagnosticsProperty('original', original));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCachedDocEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.locationUploadStatus, locationUploadStatus) || other.locationUploadStatus == locationUploadStatus)&&(identical(other.original, original) || other.original == original));
}


@override
int get hashCode => Object.hash(runtimeType,id,itemId,unitId,const DeepCollectionEquality().hash(_files),latitude,longitude,locationUploadStatus,original);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CreateCachedDocEntity(id: $id, itemId: $itemId, unitId: $unitId, files: $files, latitude: $latitude, longitude: $longitude, locationUploadStatus: $locationUploadStatus, original: $original)';
}


}

/// @nodoc
abstract mixin class _$CreateCachedDocEntityCopyWith<$Res> implements $CreateCachedDocEntityCopyWith<$Res> {
  factory _$CreateCachedDocEntityCopyWith(_CreateCachedDocEntity value, $Res Function(_CreateCachedDocEntity) _then) = __$CreateCachedDocEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? itemId, int? unitId, List<UpdateDocMediaEntity> files, GenericFormInput latitude, GenericFormInput longitude, UploadStatus locationUploadStatus, DocEntity original
});


@override $DocEntityCopyWith<$Res> get original;

}
/// @nodoc
class __$CreateCachedDocEntityCopyWithImpl<$Res>
    implements _$CreateCachedDocEntityCopyWith<$Res> {
  __$CreateCachedDocEntityCopyWithImpl(this._self, this._then);

  final _CreateCachedDocEntity _self;
  final $Res Function(_CreateCachedDocEntity) _then;

/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? itemId = freezed,Object? unitId = freezed,Object? files = null,Object? latitude = null,Object? longitude = null,Object? locationUploadStatus = null,Object? original = null,}) {
  return _then(_CreateCachedDocEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int?,files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<UpdateDocMediaEntity>,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as GenericFormInput,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as GenericFormInput,locationUploadStatus: null == locationUploadStatus ? _self.locationUploadStatus : locationUploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as DocEntity,
  ));
}

/// Create a copy of CreateCachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocEntityCopyWith<$Res> get original {
  
  return $DocEntityCopyWith<$Res>(_self.original, (value) {
    return _then(_self.copyWith(original: value));
  });
}
}

/// @nodoc
mixin _$UpdateDocMediaEntity implements DiagnosticableTreeMixin {

 int? get id; int? get docId; GenericFormInput get localFilePath; String get filePath; String get thumbnail; DocMediaType get docMediaType; UploadStatus get fileUploadStatus; bool get isEdited;
/// Create a copy of UpdateDocMediaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDocMediaEntityCopyWith<UpdateDocMediaEntity> get copyWith => _$UpdateDocMediaEntityCopyWithImpl<UpdateDocMediaEntity>(this as UpdateDocMediaEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UpdateDocMediaEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('docId', docId))..add(DiagnosticsProperty('localFilePath', localFilePath))..add(DiagnosticsProperty('filePath', filePath))..add(DiagnosticsProperty('thumbnail', thumbnail))..add(DiagnosticsProperty('docMediaType', docMediaType))..add(DiagnosticsProperty('fileUploadStatus', fileUploadStatus))..add(DiagnosticsProperty('isEdited', isEdited));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDocMediaEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.localFilePath, localFilePath) || other.localFilePath == localFilePath)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.docMediaType, docMediaType) || other.docMediaType == docMediaType)&&(identical(other.fileUploadStatus, fileUploadStatus) || other.fileUploadStatus == fileUploadStatus)&&(identical(other.isEdited, isEdited) || other.isEdited == isEdited));
}


@override
int get hashCode => Object.hash(runtimeType,id,docId,localFilePath,filePath,thumbnail,docMediaType,fileUploadStatus,isEdited);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UpdateDocMediaEntity(id: $id, docId: $docId, localFilePath: $localFilePath, filePath: $filePath, thumbnail: $thumbnail, docMediaType: $docMediaType, fileUploadStatus: $fileUploadStatus, isEdited: $isEdited)';
}


}

/// @nodoc
abstract mixin class $UpdateDocMediaEntityCopyWith<$Res>  {
  factory $UpdateDocMediaEntityCopyWith(UpdateDocMediaEntity value, $Res Function(UpdateDocMediaEntity) _then) = _$UpdateDocMediaEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int? docId, GenericFormInput localFilePath, String filePath, String thumbnail, DocMediaType docMediaType, UploadStatus fileUploadStatus, bool isEdited
});




}
/// @nodoc
class _$UpdateDocMediaEntityCopyWithImpl<$Res>
    implements $UpdateDocMediaEntityCopyWith<$Res> {
  _$UpdateDocMediaEntityCopyWithImpl(this._self, this._then);

  final UpdateDocMediaEntity _self;
  final $Res Function(UpdateDocMediaEntity) _then;

/// Create a copy of UpdateDocMediaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? docId = freezed,Object? localFilePath = null,Object? filePath = null,Object? thumbnail = null,Object? docMediaType = null,Object? fileUploadStatus = null,Object? isEdited = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int?,localFilePath: null == localFilePath ? _self.localFilePath : localFilePath // ignore: cast_nullable_to_non_nullable
as GenericFormInput,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,docMediaType: null == docMediaType ? _self.docMediaType : docMediaType // ignore: cast_nullable_to_non_nullable
as DocMediaType,fileUploadStatus: null == fileUploadStatus ? _self.fileUploadStatus : fileUploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,isEdited: null == isEdited ? _self.isEdited : isEdited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDocMediaEntity].
extension UpdateDocMediaEntityPatterns on UpdateDocMediaEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDocMediaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDocMediaEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDocMediaEntity value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDocMediaEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDocMediaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDocMediaEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? docId,  GenericFormInput localFilePath,  String filePath,  String thumbnail,  DocMediaType docMediaType,  UploadStatus fileUploadStatus,  bool isEdited)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDocMediaEntity() when $default != null:
return $default(_that.id,_that.docId,_that.localFilePath,_that.filePath,_that.thumbnail,_that.docMediaType,_that.fileUploadStatus,_that.isEdited);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? docId,  GenericFormInput localFilePath,  String filePath,  String thumbnail,  DocMediaType docMediaType,  UploadStatus fileUploadStatus,  bool isEdited)  $default,) {final _that = this;
switch (_that) {
case _UpdateDocMediaEntity():
return $default(_that.id,_that.docId,_that.localFilePath,_that.filePath,_that.thumbnail,_that.docMediaType,_that.fileUploadStatus,_that.isEdited);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? docId,  GenericFormInput localFilePath,  String filePath,  String thumbnail,  DocMediaType docMediaType,  UploadStatus fileUploadStatus,  bool isEdited)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDocMediaEntity() when $default != null:
return $default(_that.id,_that.docId,_that.localFilePath,_that.filePath,_that.thumbnail,_that.docMediaType,_that.fileUploadStatus,_that.isEdited);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateDocMediaEntity with DiagnosticableTreeMixin implements UpdateDocMediaEntity {
  const _UpdateDocMediaEntity({this.id, this.docId, this.localFilePath = const GenericFormInput.pure(), this.filePath = '', this.thumbnail = '', this.docMediaType = DocMediaType.image, this.fileUploadStatus = UploadStatus.init, this.isEdited = false});
  

@override final  int? id;
@override final  int? docId;
@override@JsonKey() final  GenericFormInput localFilePath;
@override@JsonKey() final  String filePath;
@override@JsonKey() final  String thumbnail;
@override@JsonKey() final  DocMediaType docMediaType;
@override@JsonKey() final  UploadStatus fileUploadStatus;
@override@JsonKey() final  bool isEdited;

/// Create a copy of UpdateDocMediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDocMediaEntityCopyWith<_UpdateDocMediaEntity> get copyWith => __$UpdateDocMediaEntityCopyWithImpl<_UpdateDocMediaEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UpdateDocMediaEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('docId', docId))..add(DiagnosticsProperty('localFilePath', localFilePath))..add(DiagnosticsProperty('filePath', filePath))..add(DiagnosticsProperty('thumbnail', thumbnail))..add(DiagnosticsProperty('docMediaType', docMediaType))..add(DiagnosticsProperty('fileUploadStatus', fileUploadStatus))..add(DiagnosticsProperty('isEdited', isEdited));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDocMediaEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.localFilePath, localFilePath) || other.localFilePath == localFilePath)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.docMediaType, docMediaType) || other.docMediaType == docMediaType)&&(identical(other.fileUploadStatus, fileUploadStatus) || other.fileUploadStatus == fileUploadStatus)&&(identical(other.isEdited, isEdited) || other.isEdited == isEdited));
}


@override
int get hashCode => Object.hash(runtimeType,id,docId,localFilePath,filePath,thumbnail,docMediaType,fileUploadStatus,isEdited);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UpdateDocMediaEntity(id: $id, docId: $docId, localFilePath: $localFilePath, filePath: $filePath, thumbnail: $thumbnail, docMediaType: $docMediaType, fileUploadStatus: $fileUploadStatus, isEdited: $isEdited)';
}


}

/// @nodoc
abstract mixin class _$UpdateDocMediaEntityCopyWith<$Res> implements $UpdateDocMediaEntityCopyWith<$Res> {
  factory _$UpdateDocMediaEntityCopyWith(_UpdateDocMediaEntity value, $Res Function(_UpdateDocMediaEntity) _then) = __$UpdateDocMediaEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? docId, GenericFormInput localFilePath, String filePath, String thumbnail, DocMediaType docMediaType, UploadStatus fileUploadStatus, bool isEdited
});




}
/// @nodoc
class __$UpdateDocMediaEntityCopyWithImpl<$Res>
    implements _$UpdateDocMediaEntityCopyWith<$Res> {
  __$UpdateDocMediaEntityCopyWithImpl(this._self, this._then);

  final _UpdateDocMediaEntity _self;
  final $Res Function(_UpdateDocMediaEntity) _then;

/// Create a copy of UpdateDocMediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? docId = freezed,Object? localFilePath = null,Object? filePath = null,Object? thumbnail = null,Object? docMediaType = null,Object? fileUploadStatus = null,Object? isEdited = null,}) {
  return _then(_UpdateDocMediaEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int?,localFilePath: null == localFilePath ? _self.localFilePath : localFilePath // ignore: cast_nullable_to_non_nullable
as GenericFormInput,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,docMediaType: null == docMediaType ? _self.docMediaType : docMediaType // ignore: cast_nullable_to_non_nullable
as DocMediaType,fileUploadStatus: null == fileUploadStatus ? _self.fileUploadStatus : fileUploadStatus // ignore: cast_nullable_to_non_nullable
as UploadStatus,isEdited: null == isEdited ? _self.isEdited : isEdited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
