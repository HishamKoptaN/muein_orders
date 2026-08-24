// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doc_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocReqModel {

@JsonKey(name: 'latitude') String get latitude;@JsonKey(name: 'longitude') String get longitude;
/// Create a copy of DocReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocReqModelCopyWith<DocReqModel> get copyWith => _$DocReqModelCopyWithImpl<DocReqModel>(this as DocReqModel, _$identity);

  /// Serializes this DocReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocReqModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'DocReqModel(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $DocReqModelCopyWith<$Res>  {
  factory $DocReqModelCopyWith(DocReqModel value, $Res Function(DocReqModel) _then) = _$DocReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'latitude') String latitude,@JsonKey(name: 'longitude') String longitude
});




}
/// @nodoc
class _$DocReqModelCopyWithImpl<$Res>
    implements $DocReqModelCopyWith<$Res> {
  _$DocReqModelCopyWithImpl(this._self, this._then);

  final DocReqModel _self;
  final $Res Function(DocReqModel) _then;

/// Create a copy of DocReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DocReqModel].
extension DocReqModelPatterns on DocReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocReqModel value)  $default,){
final _that = this;
switch (_that) {
case _DocReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _DocReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'latitude')  String latitude, @JsonKey(name: 'longitude')  String longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocReqModel() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'latitude')  String latitude, @JsonKey(name: 'longitude')  String longitude)  $default,) {final _that = this;
switch (_that) {
case _DocReqModel():
return $default(_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'latitude')  String latitude, @JsonKey(name: 'longitude')  String longitude)?  $default,) {final _that = this;
switch (_that) {
case _DocReqModel() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocReqModel implements DocReqModel {
  const _DocReqModel({@JsonKey(name: 'latitude') this.latitude = '', @JsonKey(name: 'longitude') this.longitude = ''});
  factory _DocReqModel.fromJson(Map<String, dynamic> json) => _$DocReqModelFromJson(json);

@override@JsonKey(name: 'latitude') final  String latitude;
@override@JsonKey(name: 'longitude') final  String longitude;

/// Create a copy of DocReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocReqModelCopyWith<_DocReqModel> get copyWith => __$DocReqModelCopyWithImpl<_DocReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocReqModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'DocReqModel(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$DocReqModelCopyWith<$Res> implements $DocReqModelCopyWith<$Res> {
  factory _$DocReqModelCopyWith(_DocReqModel value, $Res Function(_DocReqModel) _then) = __$DocReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'latitude') String latitude,@JsonKey(name: 'longitude') String longitude
});




}
/// @nodoc
class __$DocReqModelCopyWithImpl<$Res>
    implements _$DocReqModelCopyWith<$Res> {
  __$DocReqModelCopyWithImpl(this._self, this._then);

  final _DocReqModel _self;
  final $Res Function(_DocReqModel) _then;

/// Create a copy of DocReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_DocReqModel(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DocMediaReqModel {

 int get id;@JsonKey(name: 'file_path') String get filePath; String get thumbnail;
/// Create a copy of DocMediaReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocMediaReqModelCopyWith<DocMediaReqModel> get copyWith => _$DocMediaReqModelCopyWithImpl<DocMediaReqModel>(this as DocMediaReqModel, _$identity);

  /// Serializes this DocMediaReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocMediaReqModel&&(identical(other.id, id) || other.id == id)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,filePath,thumbnail);

@override
String toString() {
  return 'DocMediaReqModel(id: $id, filePath: $filePath, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $DocMediaReqModelCopyWith<$Res>  {
  factory $DocMediaReqModelCopyWith(DocMediaReqModel value, $Res Function(DocMediaReqModel) _then) = _$DocMediaReqModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'file_path') String filePath, String thumbnail
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? filePath = null,Object? thumbnail = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'file_path')  String filePath,  String thumbnail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocMediaReqModel() when $default != null:
return $default(_that.id,_that.filePath,_that.thumbnail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'file_path')  String filePath,  String thumbnail)  $default,) {final _that = this;
switch (_that) {
case _DocMediaReqModel():
return $default(_that.id,_that.filePath,_that.thumbnail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'file_path')  String filePath,  String thumbnail)?  $default,) {final _that = this;
switch (_that) {
case _DocMediaReqModel() when $default != null:
return $default(_that.id,_that.filePath,_that.thumbnail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocMediaReqModel implements DocMediaReqModel {
  const _DocMediaReqModel({this.id = 0, @JsonKey(name: 'file_path') this.filePath = '', this.thumbnail = ''});
  factory _DocMediaReqModel.fromJson(Map<String, dynamic> json) => _$DocMediaReqModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey(name: 'file_path') final  String filePath;
@override@JsonKey() final  String thumbnail;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocMediaReqModel&&(identical(other.id, id) || other.id == id)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,filePath,thumbnail);

@override
String toString() {
  return 'DocMediaReqModel(id: $id, filePath: $filePath, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$DocMediaReqModelCopyWith<$Res> implements $DocMediaReqModelCopyWith<$Res> {
  factory _$DocMediaReqModelCopyWith(_DocMediaReqModel value, $Res Function(_DocMediaReqModel) _then) = __$DocMediaReqModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'file_path') String filePath, String thumbnail
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? filePath = null,Object? thumbnail = null,}) {
  return _then(_DocMediaReqModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
