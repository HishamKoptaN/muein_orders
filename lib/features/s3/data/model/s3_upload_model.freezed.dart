// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_upload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$S3UploadModel {

@JsonKey(name: 'upload_url') String get uploadUrl;@JsonKey(name: 'file_path') String get filePath;@JsonKey(name: 'content_type') String get contentType;
/// Create a copy of S3UploadModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$S3UploadModelCopyWith<S3UploadModel> get copyWith => _$S3UploadModelCopyWithImpl<S3UploadModel>(this as S3UploadModel, _$identity);

  /// Serializes this S3UploadModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is S3UploadModel&&(identical(other.uploadUrl, uploadUrl) || other.uploadUrl == uploadUrl)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uploadUrl,filePath,contentType);

@override
String toString() {
  return 'S3UploadModel(uploadUrl: $uploadUrl, filePath: $filePath, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class $S3UploadModelCopyWith<$Res>  {
  factory $S3UploadModelCopyWith(S3UploadModel value, $Res Function(S3UploadModel) _then) = _$S3UploadModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'upload_url') String uploadUrl,@JsonKey(name: 'file_path') String filePath,@JsonKey(name: 'content_type') String contentType
});




}
/// @nodoc
class _$S3UploadModelCopyWithImpl<$Res>
    implements $S3UploadModelCopyWith<$Res> {
  _$S3UploadModelCopyWithImpl(this._self, this._then);

  final S3UploadModel _self;
  final $Res Function(S3UploadModel) _then;

/// Create a copy of S3UploadModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uploadUrl = null,Object? filePath = null,Object? contentType = null,}) {
  return _then(_self.copyWith(
uploadUrl: null == uploadUrl ? _self.uploadUrl : uploadUrl // ignore: cast_nullable_to_non_nullable
as String,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [S3UploadModel].
extension S3UploadModelPatterns on S3UploadModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _S3UploadModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _S3UploadModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _S3UploadModel value)  $default,){
final _that = this;
switch (_that) {
case _S3UploadModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _S3UploadModel value)?  $default,){
final _that = this;
switch (_that) {
case _S3UploadModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'upload_url')  String uploadUrl, @JsonKey(name: 'file_path')  String filePath, @JsonKey(name: 'content_type')  String contentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _S3UploadModel() when $default != null:
return $default(_that.uploadUrl,_that.filePath,_that.contentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'upload_url')  String uploadUrl, @JsonKey(name: 'file_path')  String filePath, @JsonKey(name: 'content_type')  String contentType)  $default,) {final _that = this;
switch (_that) {
case _S3UploadModel():
return $default(_that.uploadUrl,_that.filePath,_that.contentType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'upload_url')  String uploadUrl, @JsonKey(name: 'file_path')  String filePath, @JsonKey(name: 'content_type')  String contentType)?  $default,) {final _that = this;
switch (_that) {
case _S3UploadModel() when $default != null:
return $default(_that.uploadUrl,_that.filePath,_that.contentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _S3UploadModel implements S3UploadModel {
  const _S3UploadModel({@JsonKey(name: 'upload_url') required this.uploadUrl, @JsonKey(name: 'file_path') required this.filePath, @JsonKey(name: 'content_type') required this.contentType});
  factory _S3UploadModel.fromJson(Map<String, dynamic> json) => _$S3UploadModelFromJson(json);

@override@JsonKey(name: 'upload_url') final  String uploadUrl;
@override@JsonKey(name: 'file_path') final  String filePath;
@override@JsonKey(name: 'content_type') final  String contentType;

/// Create a copy of S3UploadModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$S3UploadModelCopyWith<_S3UploadModel> get copyWith => __$S3UploadModelCopyWithImpl<_S3UploadModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$S3UploadModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _S3UploadModel&&(identical(other.uploadUrl, uploadUrl) || other.uploadUrl == uploadUrl)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uploadUrl,filePath,contentType);

@override
String toString() {
  return 'S3UploadModel(uploadUrl: $uploadUrl, filePath: $filePath, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class _$S3UploadModelCopyWith<$Res> implements $S3UploadModelCopyWith<$Res> {
  factory _$S3UploadModelCopyWith(_S3UploadModel value, $Res Function(_S3UploadModel) _then) = __$S3UploadModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'upload_url') String uploadUrl,@JsonKey(name: 'file_path') String filePath,@JsonKey(name: 'content_type') String contentType
});




}
/// @nodoc
class __$S3UploadModelCopyWithImpl<$Res>
    implements _$S3UploadModelCopyWith<$Res> {
  __$S3UploadModelCopyWithImpl(this._self, this._then);

  final _S3UploadModel _self;
  final $Res Function(_S3UploadModel) _then;

/// Create a copy of S3UploadModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uploadUrl = null,Object? filePath = null,Object? contentType = null,}) {
  return _then(_S3UploadModel(
uploadUrl: null == uploadUrl ? _self.uploadUrl : uploadUrl // ignore: cast_nullable_to_non_nullable
as String,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
