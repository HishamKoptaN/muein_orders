// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docs_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocsResEntity {

@JsonKey(name: 'docs') List<DocEntity>? get docs;@JsonKey(name: 'meta') MetaEntity? get meta;
/// Create a copy of DocsResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocsResEntityCopyWith<DocsResEntity> get copyWith => _$DocsResEntityCopyWithImpl<DocsResEntity>(this as DocsResEntity, _$identity);

  /// Serializes this DocsResEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocsResEntity&&const DeepCollectionEquality().equals(other.docs, docs)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(docs),meta);

@override
String toString() {
  return 'DocsResEntity(docs: $docs, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $DocsResEntityCopyWith<$Res>  {
  factory $DocsResEntityCopyWith(DocsResEntity value, $Res Function(DocsResEntity) _then) = _$DocsResEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'docs') List<DocEntity>? docs,@JsonKey(name: 'meta') MetaEntity? meta
});


$MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class _$DocsResEntityCopyWithImpl<$Res>
    implements $DocsResEntityCopyWith<$Res> {
  _$DocsResEntityCopyWithImpl(this._self, this._then);

  final DocsResEntity _self;
  final $Res Function(DocsResEntity) _then;

/// Create a copy of DocsResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? docs = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
docs: freezed == docs ? _self.docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}
/// Create a copy of DocsResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaEntityCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [DocsResEntity].
extension DocsResEntityPatterns on DocsResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocsResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocsResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocsResEntity value)  $default,){
final _that = this;
switch (_that) {
case _DocsResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocsResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DocsResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'docs')  List<DocEntity>? docs, @JsonKey(name: 'meta')  MetaEntity? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocsResEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'docs')  List<DocEntity>? docs, @JsonKey(name: 'meta')  MetaEntity? meta)  $default,) {final _that = this;
switch (_that) {
case _DocsResEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'docs')  List<DocEntity>? docs, @JsonKey(name: 'meta')  MetaEntity? meta)?  $default,) {final _that = this;
switch (_that) {
case _DocsResEntity() when $default != null:
return $default(_that.docs,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocsResEntity implements DocsResEntity {
  const _DocsResEntity({@JsonKey(name: 'docs') final  List<DocEntity>? docs, @JsonKey(name: 'meta') this.meta}): _docs = docs;
  factory _DocsResEntity.fromJson(Map<String, dynamic> json) => _$DocsResEntityFromJson(json);

 final  List<DocEntity>? _docs;
@override@JsonKey(name: 'docs') List<DocEntity>? get docs {
  final value = _docs;
  if (value == null) return null;
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'meta') final  MetaEntity? meta;

/// Create a copy of DocsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocsResEntityCopyWith<_DocsResEntity> get copyWith => __$DocsResEntityCopyWithImpl<_DocsResEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocsResEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocsResEntity&&const DeepCollectionEquality().equals(other._docs, _docs)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_docs),meta);

@override
String toString() {
  return 'DocsResEntity(docs: $docs, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$DocsResEntityCopyWith<$Res> implements $DocsResEntityCopyWith<$Res> {
  factory _$DocsResEntityCopyWith(_DocsResEntity value, $Res Function(_DocsResEntity) _then) = __$DocsResEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'docs') List<DocEntity>? docs,@JsonKey(name: 'meta') MetaEntity? meta
});


@override $MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class __$DocsResEntityCopyWithImpl<$Res>
    implements _$DocsResEntityCopyWith<$Res> {
  __$DocsResEntityCopyWithImpl(this._self, this._then);

  final _DocsResEntity _self;
  final $Res Function(_DocsResEntity) _then;

/// Create a copy of DocsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? docs = freezed,Object? meta = freezed,}) {
  return _then(_DocsResEntity(
docs: freezed == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}

/// Create a copy of DocsResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaEntityCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$DocEntity {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'order_number') String? get orderNumber;@JsonKey(name: 'place') String? get place;@JsonKey(name: 'video_one') String? get videoOne;@JsonKey(name: 'video_two') String? get videoTwo;@JsonKey(name: 'thumbnail_url_one') String? get thumbnailUrlOne;@JsonKey(name: 'thumbnail_url_two') String? get thumbnailUrlTwo;@JsonKey(name: 'image_one') String? get imageOne;@JsonKey(name: 'image_two') String? get imageTwo;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'latitude') String? get latitude;@JsonKey(name: 'longitude') String? get longitude;@JsonKey(name: 'branch_id') int? get branchId;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocEntityCopyWith<DocEntity> get copyWith => _$DocEntityCopyWithImpl<DocEntity>(this as DocEntity, _$identity);

  /// Serializes this DocEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.place, place) || other.place == place)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.thumbnailUrlOne, thumbnailUrlOne) || other.thumbnailUrlOne == thumbnailUrlOne)&&(identical(other.thumbnailUrlTwo, thumbnailUrlTwo) || other.thumbnailUrlTwo == thumbnailUrlTwo)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderNumber,place,videoOne,videoTwo,thumbnailUrlOne,thumbnailUrlTwo,imageOne,imageTwo,updatedAt,latitude,longitude,branchId,createdAt);

@override
String toString() {
  return 'DocEntity(id: $id, orderNumber: $orderNumber, place: $place, videoOne: $videoOne, videoTwo: $videoTwo, thumbnailUrlOne: $thumbnailUrlOne, thumbnailUrlTwo: $thumbnailUrlTwo, imageOne: $imageOne, imageTwo: $imageTwo, updatedAt: $updatedAt, latitude: $latitude, longitude: $longitude, branchId: $branchId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DocEntityCopyWith<$Res>  {
  factory $DocEntityCopyWith(DocEntity value, $Res Function(DocEntity) _then) = _$DocEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'order_number') String? orderNumber,@JsonKey(name: 'place') String? place,@JsonKey(name: 'video_one') String? videoOne,@JsonKey(name: 'video_two') String? videoTwo,@JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,@JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,@JsonKey(name: 'image_one') String? imageOne,@JsonKey(name: 'image_two') String? imageTwo,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'branch_id') int? branchId,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$DocEntityCopyWithImpl<$Res>
    implements $DocEntityCopyWith<$Res> {
  _$DocEntityCopyWithImpl(this._self, this._then);

  final DocEntity _self;
  final $Res Function(DocEntity) _then;

/// Create a copy of DocEntity
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


/// Adds pattern-matching-related methods to [DocEntity].
extension DocEntityPatterns on DocEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocEntity value)  $default,){
final _that = this;
switch (_that) {
case _DocEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DocEntity() when $default != null:
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
case _DocEntity() when $default != null:
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
case _DocEntity():
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
case _DocEntity() when $default != null:
return $default(_that.id,_that.orderNumber,_that.place,_that.videoOne,_that.videoTwo,_that.thumbnailUrlOne,_that.thumbnailUrlTwo,_that.imageOne,_that.imageTwo,_that.updatedAt,_that.latitude,_that.longitude,_that.branchId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocEntity implements DocEntity {
  const _DocEntity({@JsonKey(name: 'id') this.id, @JsonKey(name: 'order_number') this.orderNumber, @JsonKey(name: 'place') this.place, @JsonKey(name: 'video_one') this.videoOne, @JsonKey(name: 'video_two') this.videoTwo, @JsonKey(name: 'thumbnail_url_one') this.thumbnailUrlOne, @JsonKey(name: 'thumbnail_url_two') this.thumbnailUrlTwo, @JsonKey(name: 'image_one') this.imageOne, @JsonKey(name: 'image_two') this.imageTwo, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'latitude') this.latitude, @JsonKey(name: 'longitude') this.longitude, @JsonKey(name: 'branch_id') this.branchId, @JsonKey(name: 'created_at') this.createdAt});
  factory _DocEntity.fromJson(Map<String, dynamic> json) => _$DocEntityFromJson(json);

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

/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocEntityCopyWith<_DocEntity> get copyWith => __$DocEntityCopyWithImpl<_DocEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.place, place) || other.place == place)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.thumbnailUrlOne, thumbnailUrlOne) || other.thumbnailUrlOne == thumbnailUrlOne)&&(identical(other.thumbnailUrlTwo, thumbnailUrlTwo) || other.thumbnailUrlTwo == thumbnailUrlTwo)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderNumber,place,videoOne,videoTwo,thumbnailUrlOne,thumbnailUrlTwo,imageOne,imageTwo,updatedAt,latitude,longitude,branchId,createdAt);

@override
String toString() {
  return 'DocEntity(id: $id, orderNumber: $orderNumber, place: $place, videoOne: $videoOne, videoTwo: $videoTwo, thumbnailUrlOne: $thumbnailUrlOne, thumbnailUrlTwo: $thumbnailUrlTwo, imageOne: $imageOne, imageTwo: $imageTwo, updatedAt: $updatedAt, latitude: $latitude, longitude: $longitude, branchId: $branchId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DocEntityCopyWith<$Res> implements $DocEntityCopyWith<$Res> {
  factory _$DocEntityCopyWith(_DocEntity value, $Res Function(_DocEntity) _then) = __$DocEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'order_number') String? orderNumber,@JsonKey(name: 'place') String? place,@JsonKey(name: 'video_one') String? videoOne,@JsonKey(name: 'video_two') String? videoTwo,@JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,@JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,@JsonKey(name: 'image_one') String? imageOne,@JsonKey(name: 'image_two') String? imageTwo,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'branch_id') int? branchId,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$DocEntityCopyWithImpl<$Res>
    implements _$DocEntityCopyWith<$Res> {
  __$DocEntityCopyWithImpl(this._self, this._then);

  final _DocEntity _self;
  final $Res Function(_DocEntity) _then;

/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? orderNumber = freezed,Object? place = freezed,Object? videoOne = freezed,Object? videoTwo = freezed,Object? thumbnailUrlOne = freezed,Object? thumbnailUrlTwo = freezed,Object? imageOne = freezed,Object? imageTwo = freezed,Object? updatedAt = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? branchId = freezed,Object? createdAt = freezed,}) {
  return _then(_DocEntity(
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
