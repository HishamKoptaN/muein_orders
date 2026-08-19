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

 int? get docId; List<DocFile>? get files; LocationDoc? get location; FileUploadStatus get uploadStatus; double get uploadProgress;
/// Create a copy of CachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CachedDocEntityCopyWith<CachedDocEntity> get copyWith => _$CachedDocEntityCopyWithImpl<CachedDocEntity>(this as CachedDocEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CachedDocEntity&&(identical(other.docId, docId) || other.docId == docId)&&const DeepCollectionEquality().equals(other.files, files)&&(identical(other.location, location) || other.location == location)&&(identical(other.uploadStatus, uploadStatus) || other.uploadStatus == uploadStatus)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress));
}


@override
int get hashCode => Object.hash(runtimeType,docId,const DeepCollectionEquality().hash(files),location,uploadStatus,uploadProgress);

@override
String toString() {
  return 'CachedDocEntity(docId: $docId, files: $files, location: $location, uploadStatus: $uploadStatus, uploadProgress: $uploadProgress)';
}


}

/// @nodoc
abstract mixin class $CachedDocEntityCopyWith<$Res>  {
  factory $CachedDocEntityCopyWith(CachedDocEntity value, $Res Function(CachedDocEntity) _then) = _$CachedDocEntityCopyWithImpl;
@useResult
$Res call({
 int? docId, List<DocFile>? files, LocationDoc? location, FileUploadStatus uploadStatus, double uploadProgress
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
@pragma('vm:prefer-inline') @override $Res call({Object? docId = freezed,Object? files = freezed,Object? location = freezed,Object? uploadStatus = null,Object? uploadProgress = null,}) {
  return _then(_self.copyWith(
docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int?,files: freezed == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<DocFile>?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationDoc?,uploadStatus: null == uploadStatus ? _self.uploadStatus : uploadStatus // ignore: cast_nullable_to_non_nullable
as FileUploadStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? docId,  List<DocFile>? files,  LocationDoc? location,  FileUploadStatus uploadStatus,  double uploadProgress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CachedDocEntity() when $default != null:
return $default(_that.docId,_that.files,_that.location,_that.uploadStatus,_that.uploadProgress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? docId,  List<DocFile>? files,  LocationDoc? location,  FileUploadStatus uploadStatus,  double uploadProgress)  $default,) {final _that = this;
switch (_that) {
case _CachedDocEntity():
return $default(_that.docId,_that.files,_that.location,_that.uploadStatus,_that.uploadProgress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? docId,  List<DocFile>? files,  LocationDoc? location,  FileUploadStatus uploadStatus,  double uploadProgress)?  $default,) {final _that = this;
switch (_that) {
case _CachedDocEntity() when $default != null:
return $default(_that.docId,_that.files,_that.location,_that.uploadStatus,_that.uploadProgress);case _:
  return null;

}
}

}

/// @nodoc


class _CachedDocEntity extends CachedDocEntity {
  const _CachedDocEntity({this.docId, final  List<DocFile>? files, this.location, this.uploadStatus = FileUploadStatus.pending, this.uploadProgress = 0.0}): _files = files,super._();
  

@override final  int? docId;
 final  List<DocFile>? _files;
@override List<DocFile>? get files {
  final value = _files;
  if (value == null) return null;
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  LocationDoc? location;
@override@JsonKey() final  FileUploadStatus uploadStatus;
@override@JsonKey() final  double uploadProgress;

/// Create a copy of CachedDocEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CachedDocEntityCopyWith<_CachedDocEntity> get copyWith => __$CachedDocEntityCopyWithImpl<_CachedDocEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CachedDocEntity&&(identical(other.docId, docId) || other.docId == docId)&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.location, location) || other.location == location)&&(identical(other.uploadStatus, uploadStatus) || other.uploadStatus == uploadStatus)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress));
}


@override
int get hashCode => Object.hash(runtimeType,docId,const DeepCollectionEquality().hash(_files),location,uploadStatus,uploadProgress);

@override
String toString() {
  return 'CachedDocEntity(docId: $docId, files: $files, location: $location, uploadStatus: $uploadStatus, uploadProgress: $uploadProgress)';
}


}

/// @nodoc
abstract mixin class _$CachedDocEntityCopyWith<$Res> implements $CachedDocEntityCopyWith<$Res> {
  factory _$CachedDocEntityCopyWith(_CachedDocEntity value, $Res Function(_CachedDocEntity) _then) = __$CachedDocEntityCopyWithImpl;
@override @useResult
$Res call({
 int? docId, List<DocFile>? files, LocationDoc? location, FileUploadStatus uploadStatus, double uploadProgress
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
@override @pragma('vm:prefer-inline') $Res call({Object? docId = freezed,Object? files = freezed,Object? location = freezed,Object? uploadStatus = null,Object? uploadProgress = null,}) {
  return _then(_CachedDocEntity(
docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int?,files: freezed == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<DocFile>?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationDoc?,uploadStatus: null == uploadStatus ? _self.uploadStatus : uploadStatus // ignore: cast_nullable_to_non_nullable
as FileUploadStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
