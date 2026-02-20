// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_doc_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateDocReqModel {

@JsonKey(name: 'doc_id') int get docId;@JsonKey(name: 'video_one') String? get videoOne;@JsonKey(name: 'video_two') String? get videoTwo;@JsonKey(name: 'thumbnail_url_one') String? get thumbnailUrlOne;@JsonKey(name: 'thumbnail_url_two') String? get thumbnailUrlTwo;@JsonKey(name: 'image_one') String? get imageOne;@JsonKey(name: 'image_two') String? get imageTwo;@JsonKey(name: 'latitude', includeIfNull: false) String? get latitude;@JsonKey(name: 'longitude', includeIfNull: false) String? get longitude;
/// Create a copy of CreateDocReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDocReqModelCopyWith<CreateDocReqModel> get copyWith => _$CreateDocReqModelCopyWithImpl<CreateDocReqModel>(this as CreateDocReqModel, _$identity);

  /// Serializes this CreateDocReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDocReqModel&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.thumbnailUrlOne, thumbnailUrlOne) || other.thumbnailUrlOne == thumbnailUrlOne)&&(identical(other.thumbnailUrlTwo, thumbnailUrlTwo) || other.thumbnailUrlTwo == thumbnailUrlTwo)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,docId,videoOne,videoTwo,thumbnailUrlOne,thumbnailUrlTwo,imageOne,imageTwo,latitude,longitude);

@override
String toString() {
  return 'CreateDocReqModel(docId: $docId, videoOne: $videoOne, videoTwo: $videoTwo, thumbnailUrlOne: $thumbnailUrlOne, thumbnailUrlTwo: $thumbnailUrlTwo, imageOne: $imageOne, imageTwo: $imageTwo, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $CreateDocReqModelCopyWith<$Res>  {
  factory $CreateDocReqModelCopyWith(CreateDocReqModel value, $Res Function(CreateDocReqModel) _then) = _$CreateDocReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'doc_id') int docId,@JsonKey(name: 'video_one') String? videoOne,@JsonKey(name: 'video_two') String? videoTwo,@JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,@JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,@JsonKey(name: 'image_one') String? imageOne,@JsonKey(name: 'image_two') String? imageTwo,@JsonKey(name: 'latitude', includeIfNull: false) String? latitude,@JsonKey(name: 'longitude', includeIfNull: false) String? longitude
});




}
/// @nodoc
class _$CreateDocReqModelCopyWithImpl<$Res>
    implements $CreateDocReqModelCopyWith<$Res> {
  _$CreateDocReqModelCopyWithImpl(this._self, this._then);

  final CreateDocReqModel _self;
  final $Res Function(CreateDocReqModel) _then;

/// Create a copy of CreateDocReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? docId = null,Object? videoOne = freezed,Object? videoTwo = freezed,Object? thumbnailUrlOne = freezed,Object? thumbnailUrlTwo = freezed,Object? imageOne = freezed,Object? imageTwo = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_self.copyWith(
docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as String?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlOne: freezed == thumbnailUrlOne ? _self.thumbnailUrlOne : thumbnailUrlOne // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlTwo: freezed == thumbnailUrlTwo ? _self.thumbnailUrlTwo : thumbnailUrlTwo // ignore: cast_nullable_to_non_nullable
as String?,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as String?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDocReqModel].
extension CreateDocReqModelPatterns on CreateDocReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDocReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDocReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDocReqModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateDocReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDocReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDocReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'doc_id')  int docId, @JsonKey(name: 'video_one')  String? videoOne, @JsonKey(name: 'video_two')  String? videoTwo, @JsonKey(name: 'thumbnail_url_one')  String? thumbnailUrlOne, @JsonKey(name: 'thumbnail_url_two')  String? thumbnailUrlTwo, @JsonKey(name: 'image_one')  String? imageOne, @JsonKey(name: 'image_two')  String? imageTwo, @JsonKey(name: 'latitude', includeIfNull: false)  String? latitude, @JsonKey(name: 'longitude', includeIfNull: false)  String? longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDocReqModel() when $default != null:
return $default(_that.docId,_that.videoOne,_that.videoTwo,_that.thumbnailUrlOne,_that.thumbnailUrlTwo,_that.imageOne,_that.imageTwo,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'doc_id')  int docId, @JsonKey(name: 'video_one')  String? videoOne, @JsonKey(name: 'video_two')  String? videoTwo, @JsonKey(name: 'thumbnail_url_one')  String? thumbnailUrlOne, @JsonKey(name: 'thumbnail_url_two')  String? thumbnailUrlTwo, @JsonKey(name: 'image_one')  String? imageOne, @JsonKey(name: 'image_two')  String? imageTwo, @JsonKey(name: 'latitude', includeIfNull: false)  String? latitude, @JsonKey(name: 'longitude', includeIfNull: false)  String? longitude)  $default,) {final _that = this;
switch (_that) {
case _CreateDocReqModel():
return $default(_that.docId,_that.videoOne,_that.videoTwo,_that.thumbnailUrlOne,_that.thumbnailUrlTwo,_that.imageOne,_that.imageTwo,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'doc_id')  int docId, @JsonKey(name: 'video_one')  String? videoOne, @JsonKey(name: 'video_two')  String? videoTwo, @JsonKey(name: 'thumbnail_url_one')  String? thumbnailUrlOne, @JsonKey(name: 'thumbnail_url_two')  String? thumbnailUrlTwo, @JsonKey(name: 'image_one')  String? imageOne, @JsonKey(name: 'image_two')  String? imageTwo, @JsonKey(name: 'latitude', includeIfNull: false)  String? latitude, @JsonKey(name: 'longitude', includeIfNull: false)  String? longitude)?  $default,) {final _that = this;
switch (_that) {
case _CreateDocReqModel() when $default != null:
return $default(_that.docId,_that.videoOne,_that.videoTwo,_that.thumbnailUrlOne,_that.thumbnailUrlTwo,_that.imageOne,_that.imageTwo,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDocReqModel implements CreateDocReqModel {
  const _CreateDocReqModel({@JsonKey(name: 'doc_id') required this.docId, @JsonKey(name: 'video_one') this.videoOne, @JsonKey(name: 'video_two') this.videoTwo, @JsonKey(name: 'thumbnail_url_one') this.thumbnailUrlOne, @JsonKey(name: 'thumbnail_url_two') this.thumbnailUrlTwo, @JsonKey(name: 'image_one') this.imageOne, @JsonKey(name: 'image_two') this.imageTwo, @JsonKey(name: 'latitude', includeIfNull: false) this.latitude, @JsonKey(name: 'longitude', includeIfNull: false) this.longitude});
  factory _CreateDocReqModel.fromJson(Map<String, dynamic> json) => _$CreateDocReqModelFromJson(json);

@override@JsonKey(name: 'doc_id') final  int docId;
@override@JsonKey(name: 'video_one') final  String? videoOne;
@override@JsonKey(name: 'video_two') final  String? videoTwo;
@override@JsonKey(name: 'thumbnail_url_one') final  String? thumbnailUrlOne;
@override@JsonKey(name: 'thumbnail_url_two') final  String? thumbnailUrlTwo;
@override@JsonKey(name: 'image_one') final  String? imageOne;
@override@JsonKey(name: 'image_two') final  String? imageTwo;
@override@JsonKey(name: 'latitude', includeIfNull: false) final  String? latitude;
@override@JsonKey(name: 'longitude', includeIfNull: false) final  String? longitude;

/// Create a copy of CreateDocReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDocReqModelCopyWith<_CreateDocReqModel> get copyWith => __$CreateDocReqModelCopyWithImpl<_CreateDocReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDocReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDocReqModel&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.thumbnailUrlOne, thumbnailUrlOne) || other.thumbnailUrlOne == thumbnailUrlOne)&&(identical(other.thumbnailUrlTwo, thumbnailUrlTwo) || other.thumbnailUrlTwo == thumbnailUrlTwo)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,docId,videoOne,videoTwo,thumbnailUrlOne,thumbnailUrlTwo,imageOne,imageTwo,latitude,longitude);

@override
String toString() {
  return 'CreateDocReqModel(docId: $docId, videoOne: $videoOne, videoTwo: $videoTwo, thumbnailUrlOne: $thumbnailUrlOne, thumbnailUrlTwo: $thumbnailUrlTwo, imageOne: $imageOne, imageTwo: $imageTwo, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$CreateDocReqModelCopyWith<$Res> implements $CreateDocReqModelCopyWith<$Res> {
  factory _$CreateDocReqModelCopyWith(_CreateDocReqModel value, $Res Function(_CreateDocReqModel) _then) = __$CreateDocReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'doc_id') int docId,@JsonKey(name: 'video_one') String? videoOne,@JsonKey(name: 'video_two') String? videoTwo,@JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,@JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,@JsonKey(name: 'image_one') String? imageOne,@JsonKey(name: 'image_two') String? imageTwo,@JsonKey(name: 'latitude', includeIfNull: false) String? latitude,@JsonKey(name: 'longitude', includeIfNull: false) String? longitude
});




}
/// @nodoc
class __$CreateDocReqModelCopyWithImpl<$Res>
    implements _$CreateDocReqModelCopyWith<$Res> {
  __$CreateDocReqModelCopyWithImpl(this._self, this._then);

  final _CreateDocReqModel _self;
  final $Res Function(_CreateDocReqModel) _then;

/// Create a copy of CreateDocReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? docId = null,Object? videoOne = freezed,Object? videoTwo = freezed,Object? thumbnailUrlOne = freezed,Object? thumbnailUrlTwo = freezed,Object? imageOne = freezed,Object? imageTwo = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_CreateDocReqModel(
docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as String?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlOne: freezed == thumbnailUrlOne ? _self.thumbnailUrlOne : thumbnailUrlOne // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlTwo: freezed == thumbnailUrlTwo ? _self.thumbnailUrlTwo : thumbnailUrlTwo // ignore: cast_nullable_to_non_nullable
as String?,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as String?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
