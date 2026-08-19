// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doc_media_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocMediaReqModel {

 int get docId; String get filePath; String? get thumbnail; String get fileType;
/// Create a copy of DocMediaReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocMediaReqModelCopyWith<DocMediaReqModel> get copyWith => _$DocMediaReqModelCopyWithImpl<DocMediaReqModel>(this as DocMediaReqModel, _$identity);

  /// Serializes this DocMediaReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocMediaReqModel&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.fileType, fileType) || other.fileType == fileType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,docId,filePath,thumbnail,fileType);

@override
String toString() {
  return 'DocMediaReqModel(docId: $docId, filePath: $filePath, thumbnail: $thumbnail, fileType: $fileType)';
}


}

/// @nodoc
abstract mixin class $DocMediaReqModelCopyWith<$Res>  {
  factory $DocMediaReqModelCopyWith(DocMediaReqModel value, $Res Function(DocMediaReqModel) _then) = _$DocMediaReqModelCopyWithImpl;
@useResult
$Res call({
 int docId, String filePath, String? thumbnail, String fileType
});




}
/// @nodoc
class _$DocMediaReqModelCopyWithImpl<$Res>
    implements $DocMediaReqModelCopyWith<$Res> {
  _$DocMediaReqModelCopyWithImpl(this._self, this._then);

  final DocMediaReqModel _self;
  final $Res Function(DocMediaReqModel) _then;

/// Create a copy of DocMediaReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? docId = null,Object? filePath = null,Object? thumbnail = freezed,Object? fileType = null,}) {
  return _then(_self.copyWith(
docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DocMediaReqModel].
extension DocMediaReqModelPatterns on DocMediaReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocMediaReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocMediaReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocMediaReqModel value)  $default,){
final _that = this;
switch (_that) {
case _DocMediaReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocMediaReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _DocMediaReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int docId,  String filePath,  String? thumbnail,  String fileType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocMediaReqModel() when $default != null:
return $default(_that.docId,_that.filePath,_that.thumbnail,_that.fileType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int docId,  String filePath,  String? thumbnail,  String fileType)  $default,) {final _that = this;
switch (_that) {
case _DocMediaReqModel():
return $default(_that.docId,_that.filePath,_that.thumbnail,_that.fileType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int docId,  String filePath,  String? thumbnail,  String fileType)?  $default,) {final _that = this;
switch (_that) {
case _DocMediaReqModel() when $default != null:
return $default(_that.docId,_that.filePath,_that.thumbnail,_that.fileType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocMediaReqModel implements DocMediaReqModel {
  const _DocMediaReqModel({required this.docId, required this.filePath, this.thumbnail, required this.fileType});
  factory _DocMediaReqModel.fromJson(Map<String, dynamic> json) => _$DocMediaReqModelFromJson(json);

@override final  int docId;
@override final  String filePath;
@override final  String? thumbnail;
@override final  String fileType;

/// Create a copy of DocMediaReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocMediaReqModelCopyWith<_DocMediaReqModel> get copyWith => __$DocMediaReqModelCopyWithImpl<_DocMediaReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocMediaReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocMediaReqModel&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.fileType, fileType) || other.fileType == fileType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,docId,filePath,thumbnail,fileType);

@override
String toString() {
  return 'DocMediaReqModel(docId: $docId, filePath: $filePath, thumbnail: $thumbnail, fileType: $fileType)';
}


}

/// @nodoc
abstract mixin class _$DocMediaReqModelCopyWith<$Res> implements $DocMediaReqModelCopyWith<$Res> {
  factory _$DocMediaReqModelCopyWith(_DocMediaReqModel value, $Res Function(_DocMediaReqModel) _then) = __$DocMediaReqModelCopyWithImpl;
@override @useResult
$Res call({
 int docId, String filePath, String? thumbnail, String fileType
});




}
/// @nodoc
class __$DocMediaReqModelCopyWithImpl<$Res>
    implements _$DocMediaReqModelCopyWith<$Res> {
  __$DocMediaReqModelCopyWithImpl(this._self, this._then);

  final _DocMediaReqModel _self;
  final $Res Function(_DocMediaReqModel) _then;

/// Create a copy of DocMediaReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? docId = null,Object? filePath = null,Object? thumbnail = freezed,Object? fileType = null,}) {
  return _then(_DocMediaReqModel(
docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
