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

@JsonKey(name: 'docs') List<DocModel>? get docs;@JsonKey(name: 'meta') MetaModel? get meta;
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
@JsonKey(name: 'docs') List<DocModel>? docs,@JsonKey(name: 'meta') MetaModel? meta
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
as List<DocModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'docs')  List<DocModel>? docs, @JsonKey(name: 'meta')  MetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'docs')  List<DocModel>? docs, @JsonKey(name: 'meta')  MetaModel? meta)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'docs')  List<DocModel>? docs, @JsonKey(name: 'meta')  MetaModel? meta)?  $default,) {final _that = this;
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
  const _DocsResModel({@JsonKey(name: 'docs') final  List<DocModel>? docs, @JsonKey(name: 'meta') this.meta}): _docs = docs;
  factory _DocsResModel.fromJson(Map<String, dynamic> json) => _$DocsResModelFromJson(json);

 final  List<DocModel>? _docs;
@override@JsonKey(name: 'docs') List<DocModel>? get docs {
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
@JsonKey(name: 'docs') List<DocModel>? docs,@JsonKey(name: 'meta') MetaModel? meta
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
as List<DocModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
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
mixin _$DocModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'video_one') String? get videoOne;@JsonKey(name: 'video_two') String? get videoTwo;@JsonKey(name: 'thumbnail_url_one') String? get thumbnailUrlOne;@JsonKey(name: 'thumbnail_url_two') String? get thumbnailUrlTwo;@JsonKey(name: 'image_one') String? get imageOne;@JsonKey(name: 'image_two') String? get imageTwo;@JsonKey(name: 'latitude') String? get latitude;@JsonKey(name: 'longitude') String? get longitude;@JsonKey(name: 'doc_status') DocStatusModel? get docStatus;@JsonKey(name: 'copies_count') int? get copiesCount;@JsonKey(name: 'reviewed_by') String? get reviewedBy;@JsonKey(name: 'reviewed_at') String? get reviewedAt;@JsonKey(name: 'admin_notes') String? get adminNotes;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of DocModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocModelCopyWith<DocModel> get copyWith => _$DocModelCopyWithImpl<DocModel>(this as DocModel, _$identity);

  /// Serializes this DocModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocModel&&(identical(other.id, id) || other.id == id)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.thumbnailUrlOne, thumbnailUrlOne) || other.thumbnailUrlOne == thumbnailUrlOne)&&(identical(other.thumbnailUrlTwo, thumbnailUrlTwo) || other.thumbnailUrlTwo == thumbnailUrlTwo)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.docStatus, docStatus) || other.docStatus == docStatus)&&(identical(other.copiesCount, copiesCount) || other.copiesCount == copiesCount)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,videoOne,videoTwo,thumbnailUrlOne,thumbnailUrlTwo,imageOne,imageTwo,latitude,longitude,docStatus,copiesCount,reviewedBy,reviewedAt,adminNotes,createdAt,updatedAt);

@override
String toString() {
  return 'DocModel(id: $id, videoOne: $videoOne, videoTwo: $videoTwo, thumbnailUrlOne: $thumbnailUrlOne, thumbnailUrlTwo: $thumbnailUrlTwo, imageOne: $imageOne, imageTwo: $imageTwo, latitude: $latitude, longitude: $longitude, docStatus: $docStatus, copiesCount: $copiesCount, reviewedBy: $reviewedBy, reviewedAt: $reviewedAt, adminNotes: $adminNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DocModelCopyWith<$Res>  {
  factory $DocModelCopyWith(DocModel value, $Res Function(DocModel) _then) = _$DocModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'video_one') String? videoOne,@JsonKey(name: 'video_two') String? videoTwo,@JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,@JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,@JsonKey(name: 'image_one') String? imageOne,@JsonKey(name: 'image_two') String? imageTwo,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'doc_status') DocStatusModel? docStatus,@JsonKey(name: 'copies_count') int? copiesCount,@JsonKey(name: 'reviewed_by') String? reviewedBy,@JsonKey(name: 'reviewed_at') String? reviewedAt,@JsonKey(name: 'admin_notes') String? adminNotes,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});


$DocStatusModelCopyWith<$Res>? get docStatus;

}
/// @nodoc
class _$DocModelCopyWithImpl<$Res>
    implements $DocModelCopyWith<$Res> {
  _$DocModelCopyWithImpl(this._self, this._then);

  final DocModel _self;
  final $Res Function(DocModel) _then;

/// Create a copy of DocModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? videoOne = freezed,Object? videoTwo = freezed,Object? thumbnailUrlOne = freezed,Object? thumbnailUrlTwo = freezed,Object? imageOne = freezed,Object? imageTwo = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? docStatus = freezed,Object? copiesCount = freezed,Object? reviewedBy = freezed,Object? reviewedAt = freezed,Object? adminNotes = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as String?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlOne: freezed == thumbnailUrlOne ? _self.thumbnailUrlOne : thumbnailUrlOne // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlTwo: freezed == thumbnailUrlTwo ? _self.thumbnailUrlTwo : thumbnailUrlTwo // ignore: cast_nullable_to_non_nullable
as String?,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as String?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,docStatus: freezed == docStatus ? _self.docStatus : docStatus // ignore: cast_nullable_to_non_nullable
as DocStatusModel?,copiesCount: freezed == copiesCount ? _self.copiesCount : copiesCount // ignore: cast_nullable_to_non_nullable
as int?,reviewedBy: freezed == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,adminNotes: freezed == adminNotes ? _self.adminNotes : adminNotes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DocModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocStatusModelCopyWith<$Res>? get docStatus {
    if (_self.docStatus == null) {
    return null;
  }

  return $DocStatusModelCopyWith<$Res>(_self.docStatus!, (value) {
    return _then(_self.copyWith(docStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [DocModel].
extension DocModelPatterns on DocModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocModel value)  $default,){
final _that = this;
switch (_that) {
case _DocModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocModel value)?  $default,){
final _that = this;
switch (_that) {
case _DocModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'video_one')  String? videoOne, @JsonKey(name: 'video_two')  String? videoTwo, @JsonKey(name: 'thumbnail_url_one')  String? thumbnailUrlOne, @JsonKey(name: 'thumbnail_url_two')  String? thumbnailUrlTwo, @JsonKey(name: 'image_one')  String? imageOne, @JsonKey(name: 'image_two')  String? imageTwo, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'doc_status')  DocStatusModel? docStatus, @JsonKey(name: 'copies_count')  int? copiesCount, @JsonKey(name: 'reviewed_by')  String? reviewedBy, @JsonKey(name: 'reviewed_at')  String? reviewedAt, @JsonKey(name: 'admin_notes')  String? adminNotes, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocModel() when $default != null:
return $default(_that.id,_that.videoOne,_that.videoTwo,_that.thumbnailUrlOne,_that.thumbnailUrlTwo,_that.imageOne,_that.imageTwo,_that.latitude,_that.longitude,_that.docStatus,_that.copiesCount,_that.reviewedBy,_that.reviewedAt,_that.adminNotes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'video_one')  String? videoOne, @JsonKey(name: 'video_two')  String? videoTwo, @JsonKey(name: 'thumbnail_url_one')  String? thumbnailUrlOne, @JsonKey(name: 'thumbnail_url_two')  String? thumbnailUrlTwo, @JsonKey(name: 'image_one')  String? imageOne, @JsonKey(name: 'image_two')  String? imageTwo, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'doc_status')  DocStatusModel? docStatus, @JsonKey(name: 'copies_count')  int? copiesCount, @JsonKey(name: 'reviewed_by')  String? reviewedBy, @JsonKey(name: 'reviewed_at')  String? reviewedAt, @JsonKey(name: 'admin_notes')  String? adminNotes, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DocModel():
return $default(_that.id,_that.videoOne,_that.videoTwo,_that.thumbnailUrlOne,_that.thumbnailUrlTwo,_that.imageOne,_that.imageTwo,_that.latitude,_that.longitude,_that.docStatus,_that.copiesCount,_that.reviewedBy,_that.reviewedAt,_that.adminNotes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'video_one')  String? videoOne, @JsonKey(name: 'video_two')  String? videoTwo, @JsonKey(name: 'thumbnail_url_one')  String? thumbnailUrlOne, @JsonKey(name: 'thumbnail_url_two')  String? thumbnailUrlTwo, @JsonKey(name: 'image_one')  String? imageOne, @JsonKey(name: 'image_two')  String? imageTwo, @JsonKey(name: 'latitude')  String? latitude, @JsonKey(name: 'longitude')  String? longitude, @JsonKey(name: 'doc_status')  DocStatusModel? docStatus, @JsonKey(name: 'copies_count')  int? copiesCount, @JsonKey(name: 'reviewed_by')  String? reviewedBy, @JsonKey(name: 'reviewed_at')  String? reviewedAt, @JsonKey(name: 'admin_notes')  String? adminNotes, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DocModel() when $default != null:
return $default(_that.id,_that.videoOne,_that.videoTwo,_that.thumbnailUrlOne,_that.thumbnailUrlTwo,_that.imageOne,_that.imageTwo,_that.latitude,_that.longitude,_that.docStatus,_that.copiesCount,_that.reviewedBy,_that.reviewedAt,_that.adminNotes,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocModel implements DocModel {
  const _DocModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'video_one') this.videoOne, @JsonKey(name: 'video_two') this.videoTwo, @JsonKey(name: 'thumbnail_url_one') this.thumbnailUrlOne, @JsonKey(name: 'thumbnail_url_two') this.thumbnailUrlTwo, @JsonKey(name: 'image_one') this.imageOne, @JsonKey(name: 'image_two') this.imageTwo, @JsonKey(name: 'latitude') this.latitude, @JsonKey(name: 'longitude') this.longitude, @JsonKey(name: 'doc_status') this.docStatus, @JsonKey(name: 'copies_count') this.copiesCount, @JsonKey(name: 'reviewed_by') this.reviewedBy, @JsonKey(name: 'reviewed_at') this.reviewedAt, @JsonKey(name: 'admin_notes') this.adminNotes, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _DocModel.fromJson(Map<String, dynamic> json) => _$DocModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'video_one') final  String? videoOne;
@override@JsonKey(name: 'video_two') final  String? videoTwo;
@override@JsonKey(name: 'thumbnail_url_one') final  String? thumbnailUrlOne;
@override@JsonKey(name: 'thumbnail_url_two') final  String? thumbnailUrlTwo;
@override@JsonKey(name: 'image_one') final  String? imageOne;
@override@JsonKey(name: 'image_two') final  String? imageTwo;
@override@JsonKey(name: 'latitude') final  String? latitude;
@override@JsonKey(name: 'longitude') final  String? longitude;
@override@JsonKey(name: 'doc_status') final  DocStatusModel? docStatus;
@override@JsonKey(name: 'copies_count') final  int? copiesCount;
@override@JsonKey(name: 'reviewed_by') final  String? reviewedBy;
@override@JsonKey(name: 'reviewed_at') final  String? reviewedAt;
@override@JsonKey(name: 'admin_notes') final  String? adminNotes;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of DocModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocModelCopyWith<_DocModel> get copyWith => __$DocModelCopyWithImpl<_DocModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocModel&&(identical(other.id, id) || other.id == id)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.thumbnailUrlOne, thumbnailUrlOne) || other.thumbnailUrlOne == thumbnailUrlOne)&&(identical(other.thumbnailUrlTwo, thumbnailUrlTwo) || other.thumbnailUrlTwo == thumbnailUrlTwo)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.docStatus, docStatus) || other.docStatus == docStatus)&&(identical(other.copiesCount, copiesCount) || other.copiesCount == copiesCount)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,videoOne,videoTwo,thumbnailUrlOne,thumbnailUrlTwo,imageOne,imageTwo,latitude,longitude,docStatus,copiesCount,reviewedBy,reviewedAt,adminNotes,createdAt,updatedAt);

@override
String toString() {
  return 'DocModel(id: $id, videoOne: $videoOne, videoTwo: $videoTwo, thumbnailUrlOne: $thumbnailUrlOne, thumbnailUrlTwo: $thumbnailUrlTwo, imageOne: $imageOne, imageTwo: $imageTwo, latitude: $latitude, longitude: $longitude, docStatus: $docStatus, copiesCount: $copiesCount, reviewedBy: $reviewedBy, reviewedAt: $reviewedAt, adminNotes: $adminNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DocModelCopyWith<$Res> implements $DocModelCopyWith<$Res> {
  factory _$DocModelCopyWith(_DocModel value, $Res Function(_DocModel) _then) = __$DocModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'video_one') String? videoOne,@JsonKey(name: 'video_two') String? videoTwo,@JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,@JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,@JsonKey(name: 'image_one') String? imageOne,@JsonKey(name: 'image_two') String? imageTwo,@JsonKey(name: 'latitude') String? latitude,@JsonKey(name: 'longitude') String? longitude,@JsonKey(name: 'doc_status') DocStatusModel? docStatus,@JsonKey(name: 'copies_count') int? copiesCount,@JsonKey(name: 'reviewed_by') String? reviewedBy,@JsonKey(name: 'reviewed_at') String? reviewedAt,@JsonKey(name: 'admin_notes') String? adminNotes,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});


@override $DocStatusModelCopyWith<$Res>? get docStatus;

}
/// @nodoc
class __$DocModelCopyWithImpl<$Res>
    implements _$DocModelCopyWith<$Res> {
  __$DocModelCopyWithImpl(this._self, this._then);

  final _DocModel _self;
  final $Res Function(_DocModel) _then;

/// Create a copy of DocModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? videoOne = freezed,Object? videoTwo = freezed,Object? thumbnailUrlOne = freezed,Object? thumbnailUrlTwo = freezed,Object? imageOne = freezed,Object? imageTwo = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? docStatus = freezed,Object? copiesCount = freezed,Object? reviewedBy = freezed,Object? reviewedAt = freezed,Object? adminNotes = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_DocModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as String?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlOne: freezed == thumbnailUrlOne ? _self.thumbnailUrlOne : thumbnailUrlOne // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlTwo: freezed == thumbnailUrlTwo ? _self.thumbnailUrlTwo : thumbnailUrlTwo // ignore: cast_nullable_to_non_nullable
as String?,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as String?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,docStatus: freezed == docStatus ? _self.docStatus : docStatus // ignore: cast_nullable_to_non_nullable
as DocStatusModel?,copiesCount: freezed == copiesCount ? _self.copiesCount : copiesCount // ignore: cast_nullable_to_non_nullable
as int?,reviewedBy: freezed == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,adminNotes: freezed == adminNotes ? _self.adminNotes : adminNotes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DocModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocStatusModelCopyWith<$Res>? get docStatus {
    if (_self.docStatus == null) {
    return null;
  }

  return $DocStatusModelCopyWith<$Res>(_self.docStatus!, (value) {
    return _then(_self.copyWith(docStatus: value));
  });
}
}


/// @nodoc
mixin _$DocStatusModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'text_color') String? get textColor;@JsonKey(name: 'background_color') String? get backgroundColor;@JsonKey(name: 'icon_color') String? get iconColor;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of DocStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocStatusModelCopyWith<DocStatusModel> get copyWith => _$DocStatusModelCopyWithImpl<DocStatusModel>(this as DocStatusModel, _$identity);

  /// Serializes this DocStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocStatusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.iconColor, iconColor) || other.iconColor == iconColor)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,textColor,backgroundColor,iconColor,createdAt,updatedAt);

@override
String toString() {
  return 'DocStatusModel(id: $id, name: $name, textColor: $textColor, backgroundColor: $backgroundColor, iconColor: $iconColor, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DocStatusModelCopyWith<$Res>  {
  factory $DocStatusModelCopyWith(DocStatusModel value, $Res Function(DocStatusModel) _then) = _$DocStatusModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'text_color') String? textColor,@JsonKey(name: 'background_color') String? backgroundColor,@JsonKey(name: 'icon_color') String? iconColor,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$DocStatusModelCopyWithImpl<$Res>
    implements $DocStatusModelCopyWith<$Res> {
  _$DocStatusModelCopyWithImpl(this._self, this._then);

  final DocStatusModel _self;
  final $Res Function(DocStatusModel) _then;

/// Create a copy of DocStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? textColor = freezed,Object? backgroundColor = freezed,Object? iconColor = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as String?,backgroundColor: freezed == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String?,iconColor: freezed == iconColor ? _self.iconColor : iconColor // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DocStatusModel].
extension DocStatusModelPatterns on DocStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _DocStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _DocStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'text_color')  String? textColor, @JsonKey(name: 'background_color')  String? backgroundColor, @JsonKey(name: 'icon_color')  String? iconColor, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocStatusModel() when $default != null:
return $default(_that.id,_that.name,_that.textColor,_that.backgroundColor,_that.iconColor,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'text_color')  String? textColor, @JsonKey(name: 'background_color')  String? backgroundColor, @JsonKey(name: 'icon_color')  String? iconColor, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DocStatusModel():
return $default(_that.id,_that.name,_that.textColor,_that.backgroundColor,_that.iconColor,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'text_color')  String? textColor, @JsonKey(name: 'background_color')  String? backgroundColor, @JsonKey(name: 'icon_color')  String? iconColor, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DocStatusModel() when $default != null:
return $default(_that.id,_that.name,_that.textColor,_that.backgroundColor,_that.iconColor,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocStatusModel implements DocStatusModel {
  const _DocStatusModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'text_color') this.textColor, @JsonKey(name: 'background_color') this.backgroundColor, @JsonKey(name: 'icon_color') this.iconColor, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _DocStatusModel.fromJson(Map<String, dynamic> json) => _$DocStatusModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'text_color') final  String? textColor;
@override@JsonKey(name: 'background_color') final  String? backgroundColor;
@override@JsonKey(name: 'icon_color') final  String? iconColor;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of DocStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocStatusModelCopyWith<_DocStatusModel> get copyWith => __$DocStatusModelCopyWithImpl<_DocStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocStatusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.iconColor, iconColor) || other.iconColor == iconColor)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,textColor,backgroundColor,iconColor,createdAt,updatedAt);

@override
String toString() {
  return 'DocStatusModel(id: $id, name: $name, textColor: $textColor, backgroundColor: $backgroundColor, iconColor: $iconColor, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DocStatusModelCopyWith<$Res> implements $DocStatusModelCopyWith<$Res> {
  factory _$DocStatusModelCopyWith(_DocStatusModel value, $Res Function(_DocStatusModel) _then) = __$DocStatusModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'text_color') String? textColor,@JsonKey(name: 'background_color') String? backgroundColor,@JsonKey(name: 'icon_color') String? iconColor,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$DocStatusModelCopyWithImpl<$Res>
    implements _$DocStatusModelCopyWith<$Res> {
  __$DocStatusModelCopyWithImpl(this._self, this._then);

  final _DocStatusModel _self;
  final $Res Function(_DocStatusModel) _then;

/// Create a copy of DocStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? textColor = freezed,Object? backgroundColor = freezed,Object? iconColor = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_DocStatusModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as String?,backgroundColor: freezed == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String?,iconColor: freezed == iconColor ? _self.iconColor : iconColor // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
