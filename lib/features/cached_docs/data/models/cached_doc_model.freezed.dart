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

 int? get docId; DocFile? get imageOne; DocFile? get imageTwo; DocFile? get videoOne; DocFile? get videoTwo; LocationDoc? get location; FileUploadStatus get uploadStatus; double get uploadProgress;
/// Create a copy of CachedDocModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CachedDocModelCopyWith<CachedDocModel> get copyWith => _$CachedDocModelCopyWithImpl<CachedDocModel>(this as CachedDocModel, _$identity);

  /// Serializes this CachedDocModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CachedDocModel&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.location, location) || other.location == location)&&(identical(other.uploadStatus, uploadStatus) || other.uploadStatus == uploadStatus)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,docId,imageOne,imageTwo,videoOne,videoTwo,location,uploadStatus,uploadProgress);

@override
String toString() {
  return 'CachedDocModel(docId: $docId, imageOne: $imageOne, imageTwo: $imageTwo, videoOne: $videoOne, videoTwo: $videoTwo, location: $location, uploadStatus: $uploadStatus, uploadProgress: $uploadProgress)';
}


}

/// @nodoc
abstract mixin class $CachedDocModelCopyWith<$Res>  {
  factory $CachedDocModelCopyWith(CachedDocModel value, $Res Function(CachedDocModel) _then) = _$CachedDocModelCopyWithImpl;
@useResult
$Res call({
 int? docId, DocFile? imageOne, DocFile? imageTwo, DocFile? videoOne, DocFile? videoTwo, LocationDoc? location, FileUploadStatus uploadStatus, double uploadProgress
});




}
/// @nodoc
class _$CachedDocModelCopyWithImpl<$Res>
    implements $CachedDocModelCopyWith<$Res> {
  _$CachedDocModelCopyWithImpl(this._self, this._then);

  final CachedDocModel _self;
  final $Res Function(CachedDocModel) _then;

/// Create a copy of CachedDocModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? docId = freezed,Object? imageOne = freezed,Object? imageTwo = freezed,Object? videoOne = freezed,Object? videoTwo = freezed,Object? location = freezed,Object? uploadStatus = null,Object? uploadProgress = null,}) {
  return _then(_self.copyWith(
docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int?,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as DocFile?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as DocFile?,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as DocFile?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as DocFile?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationDoc?,uploadStatus: null == uploadStatus ? _self.uploadStatus : uploadStatus // ignore: cast_nullable_to_non_nullable
as FileUploadStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as double,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? docId,  DocFile? imageOne,  DocFile? imageTwo,  DocFile? videoOne,  DocFile? videoTwo,  LocationDoc? location,  FileUploadStatus uploadStatus,  double uploadProgress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CachedDocModel() when $default != null:
return $default(_that.docId,_that.imageOne,_that.imageTwo,_that.videoOne,_that.videoTwo,_that.location,_that.uploadStatus,_that.uploadProgress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? docId,  DocFile? imageOne,  DocFile? imageTwo,  DocFile? videoOne,  DocFile? videoTwo,  LocationDoc? location,  FileUploadStatus uploadStatus,  double uploadProgress)  $default,) {final _that = this;
switch (_that) {
case _CachedDocModel():
return $default(_that.docId,_that.imageOne,_that.imageTwo,_that.videoOne,_that.videoTwo,_that.location,_that.uploadStatus,_that.uploadProgress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? docId,  DocFile? imageOne,  DocFile? imageTwo,  DocFile? videoOne,  DocFile? videoTwo,  LocationDoc? location,  FileUploadStatus uploadStatus,  double uploadProgress)?  $default,) {final _that = this;
switch (_that) {
case _CachedDocModel() when $default != null:
return $default(_that.docId,_that.imageOne,_that.imageTwo,_that.videoOne,_that.videoTwo,_that.location,_that.uploadStatus,_that.uploadProgress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CachedDocModel implements CachedDocModel {
  const _CachedDocModel({this.docId, this.imageOne, this.imageTwo, this.videoOne, this.videoTwo, this.location, this.uploadStatus = FileUploadStatus.pending, this.uploadProgress = 0.0});
  factory _CachedDocModel.fromJson(Map<String, dynamic> json) => _$CachedDocModelFromJson(json);

@override final  int? docId;
@override final  DocFile? imageOne;
@override final  DocFile? imageTwo;
@override final  DocFile? videoOne;
@override final  DocFile? videoTwo;
@override final  LocationDoc? location;
@override@JsonKey() final  FileUploadStatus uploadStatus;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CachedDocModel&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.location, location) || other.location == location)&&(identical(other.uploadStatus, uploadStatus) || other.uploadStatus == uploadStatus)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,docId,imageOne,imageTwo,videoOne,videoTwo,location,uploadStatus,uploadProgress);

@override
String toString() {
  return 'CachedDocModel(docId: $docId, imageOne: $imageOne, imageTwo: $imageTwo, videoOne: $videoOne, videoTwo: $videoTwo, location: $location, uploadStatus: $uploadStatus, uploadProgress: $uploadProgress)';
}


}

/// @nodoc
abstract mixin class _$CachedDocModelCopyWith<$Res> implements $CachedDocModelCopyWith<$Res> {
  factory _$CachedDocModelCopyWith(_CachedDocModel value, $Res Function(_CachedDocModel) _then) = __$CachedDocModelCopyWithImpl;
@override @useResult
$Res call({
 int? docId, DocFile? imageOne, DocFile? imageTwo, DocFile? videoOne, DocFile? videoTwo, LocationDoc? location, FileUploadStatus uploadStatus, double uploadProgress
});




}
/// @nodoc
class __$CachedDocModelCopyWithImpl<$Res>
    implements _$CachedDocModelCopyWith<$Res> {
  __$CachedDocModelCopyWithImpl(this._self, this._then);

  final _CachedDocModel _self;
  final $Res Function(_CachedDocModel) _then;

/// Create a copy of CachedDocModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? docId = freezed,Object? imageOne = freezed,Object? imageTwo = freezed,Object? videoOne = freezed,Object? videoTwo = freezed,Object? location = freezed,Object? uploadStatus = null,Object? uploadProgress = null,}) {
  return _then(_CachedDocModel(
docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int?,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as DocFile?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as DocFile?,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as DocFile?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as DocFile?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationDoc?,uploadStatus: null == uploadStatus ? _self.uploadStatus : uploadStatus // ignore: cast_nullable_to_non_nullable
as FileUploadStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
