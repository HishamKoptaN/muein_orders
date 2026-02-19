// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presigned_doc_url_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PresignedDocUrlReqModel {

@JsonKey(name: 'doc_id') int? get docId;@JsonKey(name: 'file_type') String? get fileType;@JsonKey(name: 'extension') String? get extension;
/// Create a copy of PresignedDocUrlReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresignedDocUrlReqModelCopyWith<PresignedDocUrlReqModel> get copyWith => _$PresignedDocUrlReqModelCopyWithImpl<PresignedDocUrlReqModel>(this as PresignedDocUrlReqModel, _$identity);

  /// Serializes this PresignedDocUrlReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresignedDocUrlReqModel&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.fileType, fileType) || other.fileType == fileType)&&(identical(other.extension, extension) || other.extension == extension));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,docId,fileType,extension);

@override
String toString() {
  return 'PresignedDocUrlReqModel(docId: $docId, fileType: $fileType, extension: $extension)';
}


}

/// @nodoc
abstract mixin class $PresignedDocUrlReqModelCopyWith<$Res>  {
  factory $PresignedDocUrlReqModelCopyWith(PresignedDocUrlReqModel value, $Res Function(PresignedDocUrlReqModel) _then) = _$PresignedDocUrlReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'doc_id') int? docId,@JsonKey(name: 'file_type') String? fileType,@JsonKey(name: 'extension') String? extension
});




}
/// @nodoc
class _$PresignedDocUrlReqModelCopyWithImpl<$Res>
    implements $PresignedDocUrlReqModelCopyWith<$Res> {
  _$PresignedDocUrlReqModelCopyWithImpl(this._self, this._then);

  final PresignedDocUrlReqModel _self;
  final $Res Function(PresignedDocUrlReqModel) _then;

/// Create a copy of PresignedDocUrlReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? docId = freezed,Object? fileType = freezed,Object? extension = freezed,}) {
  return _then(_self.copyWith(
docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int?,fileType: freezed == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String?,extension: freezed == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PresignedDocUrlReqModel].
extension PresignedDocUrlReqModelPatterns on PresignedDocUrlReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PresignedDocUrlReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PresignedDocUrlReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PresignedDocUrlReqModel value)  $default,){
final _that = this;
switch (_that) {
case _PresignedDocUrlReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PresignedDocUrlReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _PresignedDocUrlReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'doc_id')  int? docId, @JsonKey(name: 'file_type')  String? fileType, @JsonKey(name: 'extension')  String? extension)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PresignedDocUrlReqModel() when $default != null:
return $default(_that.docId,_that.fileType,_that.extension);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'doc_id')  int? docId, @JsonKey(name: 'file_type')  String? fileType, @JsonKey(name: 'extension')  String? extension)  $default,) {final _that = this;
switch (_that) {
case _PresignedDocUrlReqModel():
return $default(_that.docId,_that.fileType,_that.extension);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'doc_id')  int? docId, @JsonKey(name: 'file_type')  String? fileType, @JsonKey(name: 'extension')  String? extension)?  $default,) {final _that = this;
switch (_that) {
case _PresignedDocUrlReqModel() when $default != null:
return $default(_that.docId,_that.fileType,_that.extension);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PresignedDocUrlReqModel implements PresignedDocUrlReqModel {
  const _PresignedDocUrlReqModel({@JsonKey(name: 'doc_id') required this.docId, @JsonKey(name: 'file_type') required this.fileType, @JsonKey(name: 'extension') required this.extension});
  factory _PresignedDocUrlReqModel.fromJson(Map<String, dynamic> json) => _$PresignedDocUrlReqModelFromJson(json);

@override@JsonKey(name: 'doc_id') final  int? docId;
@override@JsonKey(name: 'file_type') final  String? fileType;
@override@JsonKey(name: 'extension') final  String? extension;

/// Create a copy of PresignedDocUrlReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresignedDocUrlReqModelCopyWith<_PresignedDocUrlReqModel> get copyWith => __$PresignedDocUrlReqModelCopyWithImpl<_PresignedDocUrlReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresignedDocUrlReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresignedDocUrlReqModel&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.fileType, fileType) || other.fileType == fileType)&&(identical(other.extension, extension) || other.extension == extension));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,docId,fileType,extension);

@override
String toString() {
  return 'PresignedDocUrlReqModel(docId: $docId, fileType: $fileType, extension: $extension)';
}


}

/// @nodoc
abstract mixin class _$PresignedDocUrlReqModelCopyWith<$Res> implements $PresignedDocUrlReqModelCopyWith<$Res> {
  factory _$PresignedDocUrlReqModelCopyWith(_PresignedDocUrlReqModel value, $Res Function(_PresignedDocUrlReqModel) _then) = __$PresignedDocUrlReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'doc_id') int? docId,@JsonKey(name: 'file_type') String? fileType,@JsonKey(name: 'extension') String? extension
});




}
/// @nodoc
class __$PresignedDocUrlReqModelCopyWithImpl<$Res>
    implements _$PresignedDocUrlReqModelCopyWith<$Res> {
  __$PresignedDocUrlReqModelCopyWithImpl(this._self, this._then);

  final _PresignedDocUrlReqModel _self;
  final $Res Function(_PresignedDocUrlReqModel) _then;

/// Create a copy of PresignedDocUrlReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? docId = freezed,Object? fileType = freezed,Object? extension = freezed,}) {
  return _then(_PresignedDocUrlReqModel(
docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int?,fileType: freezed == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String?,extension: freezed == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
