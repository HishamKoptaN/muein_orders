// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docs_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocsResModel {

@JsonKey(name: 'docs') List<Doc>? get docs;@JsonKey(name: 'meta') MetaModel? get meta;
/// Create a copy of DocsResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocsResModelCopyWith<DocsResModel> get copyWith => _$DocsResModelCopyWithImpl<DocsResModel>(this as DocsResModel, _$identity);

  /// Serializes this DocsResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocsResModel&&const DeepCollectionEquality().equals(other.docs, docs)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(docs),meta);

@override
String toString() {
  return 'DocsResModel(docs: $docs, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $DocsResModelCopyWith<$Res>  {
  factory $DocsResModelCopyWith(DocsResModel value, $Res Function(DocsResModel) _then) = _$DocsResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'docs') List<Doc>? docs,@JsonKey(name: 'meta') MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$DocsResModelCopyWithImpl<$Res>
    implements $DocsResModelCopyWith<$Res> {
  _$DocsResModelCopyWithImpl(this._self, this._then);

  final DocsResModel _self;
  final $Res Function(DocsResModel) _then;

/// Create a copy of DocsResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? docs = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
docs: freezed == docs ? _self.docs : docs // ignore: cast_nullable_to_non_nullable
as List<Doc>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}
/// Create a copy of DocsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [DocsResModel].
extension DocsResModelPatterns on DocsResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocsResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocsResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocsResModel value)  $default,){
final _that = this;
switch (_that) {
case _DocsResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocsResModel value)?  $default,){
final _that = this;
switch (_that) {
case _DocsResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'docs')  List<Doc>? docs, @JsonKey(name: 'meta')  MetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocsResModel() when $default != null:
return $default(_that.docs,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'docs')  List<Doc>? docs, @JsonKey(name: 'meta')  MetaModel? meta)  $default,) {final _that = this;
switch (_that) {
case _DocsResModel():
return $default(_that.docs,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'docs')  List<Doc>? docs, @JsonKey(name: 'meta')  MetaModel? meta)?  $default,) {final _that = this;
switch (_that) {
case _DocsResModel() when $default != null:
return $default(_that.docs,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocsResModel implements DocsResModel {
  const _DocsResModel({@JsonKey(name: 'docs') final  List<Doc>? docs, @JsonKey(name: 'meta') this.meta}): _docs = docs;
  factory _DocsResModel.fromJson(Map<String, dynamic> json) => _$DocsResModelFromJson(json);

 final  List<Doc>? _docs;
@override@JsonKey(name: 'docs') List<Doc>? get docs {
  final value = _docs;
  if (value == null) return null;
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'meta') final  MetaModel? meta;

/// Create a copy of DocsResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocsResModelCopyWith<_DocsResModel> get copyWith => __$DocsResModelCopyWithImpl<_DocsResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocsResModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocsResModel&&const DeepCollectionEquality().equals(other._docs, _docs)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_docs),meta);

@override
String toString() {
  return 'DocsResModel(docs: $docs, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$DocsResModelCopyWith<$Res> implements $DocsResModelCopyWith<$Res> {
  factory _$DocsResModelCopyWith(_DocsResModel value, $Res Function(_DocsResModel) _then) = __$DocsResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'docs') List<Doc>? docs,@JsonKey(name: 'meta') MetaModel? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$DocsResModelCopyWithImpl<$Res>
    implements _$DocsResModelCopyWith<$Res> {
  __$DocsResModelCopyWithImpl(this._self, this._then);

  final _DocsResModel _self;
  final $Res Function(_DocsResModel) _then;

/// Create a copy of DocsResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? docs = freezed,Object? meta = freezed,}) {
  return _then(_DocsResModel(
docs: freezed == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<Doc>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

/// Create a copy of DocsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$Doc {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'order_number') String? get orderNumber;@JsonKey(name: 'place') String? get place;@JsonKey(name: 'video_one') String? get videoOne;@JsonKey(name: 'video_two') String? get videoTwo;@JsonKey(name: 'thumbnail_url_one') String? get thumbnailUrlOne;@JsonKey(name: 'thumbnail_url_two') String? get thumbnailUrlTwo;@JsonKey(name: 'image_one') String? get imageOne;@JsonKey(name: 'image_two') String? get imageTwo;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'latitude') String? get latitude;@JsonKey(name: 'longitude') String? get longitude;@JsonKey(name: 'branch_id') int? get branchId;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of Doc
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocCopyWith<Doc> get copyWith => _$DocCopyWithImpl<Doc>(this as Doc, _$identity);

  /// Serializes this Doc to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Doc&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.place, place) || other.place == place)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.thumbnailUrlOne, thumbnailUrlOne) || other.thumbnailUrlOne == thumbnailUrlOne)&&(identical(other.thumbnailUrlTwo, thumbnailUrlTwo) || other.thumbnailUrlTwo == thumbnailUrlTwo)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderNumber,place,videoOne,videoTwo,thumbnailUrlOne,thumbnailUrlTwo,imageOne,imageTwo,updatedAt,latitude,longitude,branchId,createdAt);

@override
String toString() {
  return 'Doc(id: $id, orderNumber: $orderNumber, place: $place, videoOne: $videoOne, videoTwo: $videoTwo, thumbnailUrlOne: $thumbnailUrlOne, thumbnailUrlTwo: $thumbnailUrlTwo, imageOne: $imageOne, imageTwo: $imageTwo, updatedAt: $updatedAt, latitude: $latitude, longitude: $longitude, branchId: $branchId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DocCopyWith<$Res>  {
  factory $DocCopyWith(Doc value, $Res Function(Doc) _then) = _$DocCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'order_number') String? orderNumber,@JsonKey(name: 'place') String? place,@JsonKey(name: 'video_one') String? videoOne,@JsonKey(name: 'video_two') String? videoTwo,@JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,@JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,@JsonKey(name: 'image_one') String? imageOne,@JsonKey(name: 'image_two') String? imageTwo,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'branch_id') int? branchId,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$DocCopyWithImpl<$Res>
    implements $DocCopyWith<$Res> {
  _$DocCopyWithImpl(this._self, this._then);

  final Doc _self;
  final $Res Function(Doc) _then;

/// Create a copy of Doc
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? orderNumber = freezed,Object? place = freezed,Object? videoOne = freezed,Object? videoTwo = freezed,Object? thumbnailUrlOne = freezed,Object? thumbnailUrlTwo = freezed,Object? imageOne = freezed,Object? imageTwo = freezed,Object? updatedAt = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? branchId = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,place: freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String?,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as String?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlOne: freezed == thumbnailUrlOne ? _self.thumbnailUrlOne : thumbnailUrlOne // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlTwo: freezed == thumbnailUrlTwo ? _self.thumbnailUrlTwo : thumbnailUrlTwo // ignore: cast_nullable_to_non_nullable
as String?,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as String?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Doc].
extension DocPatterns on Doc {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Doc value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Doc() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Doc value)  $default,){
final _that = this;
switch (_that) {
case _Doc():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Doc value)?  $default,){
final _that = this;
switch (_that) {
case _Doc() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'order_number')  String? orderNumber, @JsonKey(name: 'place')  String? place, @JsonKey(name: 'video_one')  String? videoOne, @JsonKey(name: 'video_two')  String? videoTwo, @JsonKey(name: 'thumbnail_url_one')  String? thumbnailUrlOne, @JsonKey(name: 'thumbnail_url_two')  String? thumbnailUrlTwo, @JsonKey(name: 'image_one')  String? imageOne, @JsonKey(name: 'image_two')  String? imageTwo, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'branch_id')  int? branchId, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Doc() when $default != null:
return $default(_that.id,_that.orderNumber,_that.place,_that.videoOne,_that.videoTwo,_that.thumbnailUrlOne,_that.thumbnailUrlTwo,_that.imageOne,_that.imageTwo,_that.updatedAt,_that.latitude,_that.longitude,_that.branchId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'order_number')  String? orderNumber, @JsonKey(name: 'place')  String? place, @JsonKey(name: 'video_one')  String? videoOne, @JsonKey(name: 'video_two')  String? videoTwo, @JsonKey(name: 'thumbnail_url_one')  String? thumbnailUrlOne, @JsonKey(name: 'thumbnail_url_two')  String? thumbnailUrlTwo, @JsonKey(name: 'image_one')  String? imageOne, @JsonKey(name: 'image_two')  String? imageTwo, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'branch_id')  int? branchId, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Doc():
return $default(_that.id,_that.orderNumber,_that.place,_that.videoOne,_that.videoTwo,_that.thumbnailUrlOne,_that.thumbnailUrlTwo,_that.imageOne,_that.imageTwo,_that.updatedAt,_that.latitude,_that.longitude,_that.branchId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'order_number')  String? orderNumber, @JsonKey(name: 'place')  String? place, @JsonKey(name: 'video_one')  String? videoOne, @JsonKey(name: 'video_two')  String? videoTwo, @JsonKey(name: 'thumbnail_url_one')  String? thumbnailUrlOne, @JsonKey(name: 'thumbnail_url_two')  String? thumbnailUrlTwo, @JsonKey(name: 'image_one')  String? imageOne, @JsonKey(name: 'image_two')  String? imageTwo, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'branch_id')  int? branchId, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Doc() when $default != null:
return $default(_that.id,_that.orderNumber,_that.place,_that.videoOne,_that.videoTwo,_that.thumbnailUrlOne,_that.thumbnailUrlTwo,_that.imageOne,_that.imageTwo,_that.updatedAt,_that.latitude,_that.longitude,_that.branchId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Doc implements Doc {
  const _Doc({@JsonKey(name: 'id') this.id, @JsonKey(name: 'order_number') this.orderNumber, @JsonKey(name: 'place') this.place, @JsonKey(name: 'video_one') this.videoOne, @JsonKey(name: 'video_two') this.videoTwo, @JsonKey(name: 'thumbnail_url_one') this.thumbnailUrlOne, @JsonKey(name: 'thumbnail_url_two') this.thumbnailUrlTwo, @JsonKey(name: 'image_one') this.imageOne, @JsonKey(name: 'image_two') this.imageTwo, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'latitude') this.latitude, @JsonKey(name: 'longitude') this.longitude, @JsonKey(name: 'branch_id') this.branchId, @JsonKey(name: 'created_at') this.createdAt});
  factory _Doc.fromJson(Map<String, dynamic> json) => _$DocFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'order_number') final  String? orderNumber;
@override@JsonKey(name: 'place') final  String? place;
@override@JsonKey(name: 'video_one') final  String? videoOne;
@override@JsonKey(name: 'video_two') final  String? videoTwo;
@override@JsonKey(name: 'thumbnail_url_one') final  String? thumbnailUrlOne;
@override@JsonKey(name: 'thumbnail_url_two') final  String? thumbnailUrlTwo;
@override@JsonKey(name: 'image_one') final  String? imageOne;
@override@JsonKey(name: 'image_two') final  String? imageTwo;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'latitude') final  String? latitude;
@override@JsonKey(name: 'longitude') final  String? longitude;
@override@JsonKey(name: 'branch_id') final  int? branchId;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of Doc
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocCopyWith<_Doc> get copyWith => __$DocCopyWithImpl<_Doc>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Doc&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.place, place) || other.place == place)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.thumbnailUrlOne, thumbnailUrlOne) || other.thumbnailUrlOne == thumbnailUrlOne)&&(identical(other.thumbnailUrlTwo, thumbnailUrlTwo) || other.thumbnailUrlTwo == thumbnailUrlTwo)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderNumber,place,videoOne,videoTwo,thumbnailUrlOne,thumbnailUrlTwo,imageOne,imageTwo,updatedAt,latitude,longitude,branchId,createdAt);

@override
String toString() {
  return 'Doc(id: $id, orderNumber: $orderNumber, place: $place, videoOne: $videoOne, videoTwo: $videoTwo, thumbnailUrlOne: $thumbnailUrlOne, thumbnailUrlTwo: $thumbnailUrlTwo, imageOne: $imageOne, imageTwo: $imageTwo, updatedAt: $updatedAt, latitude: $latitude, longitude: $longitude, branchId: $branchId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DocCopyWith<$Res> implements $DocCopyWith<$Res> {
  factory _$DocCopyWith(_Doc value, $Res Function(_Doc) _then) = __$DocCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'order_number') String? orderNumber,@JsonKey(name: 'place') String? place,@JsonKey(name: 'video_one') String? videoOne,@JsonKey(name: 'video_two') String? videoTwo,@JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,@JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,@JsonKey(name: 'image_one') String? imageOne,@JsonKey(name: 'image_two') String? imageTwo,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'branch_id') int? branchId,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$DocCopyWithImpl<$Res>
    implements _$DocCopyWith<$Res> {
  __$DocCopyWithImpl(this._self, this._then);

  final _Doc _self;
  final $Res Function(_Doc) _then;

/// Create a copy of Doc
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? orderNumber = freezed,Object? place = freezed,Object? videoOne = freezed,Object? videoTwo = freezed,Object? thumbnailUrlOne = freezed,Object? thumbnailUrlTwo = freezed,Object? imageOne = freezed,Object? imageTwo = freezed,Object? updatedAt = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? branchId = freezed,Object? createdAt = freezed,}) {
  return _then(_Doc(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,place: freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String?,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as String?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlOne: freezed == thumbnailUrlOne ? _self.thumbnailUrlOne : thumbnailUrlOne // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlTwo: freezed == thumbnailUrlTwo ? _self.thumbnailUrlTwo : thumbnailUrlTwo // ignore: cast_nullable_to_non_nullable
as String?,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as String?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
