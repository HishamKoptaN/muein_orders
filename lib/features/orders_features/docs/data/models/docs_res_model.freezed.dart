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

@JsonKey(name: 'docs') List<DocModel> get docs;@JsonKey(name: 'meta') MetaModel get meta;
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
@JsonKey(name: 'docs') List<DocModel> docs,@JsonKey(name: 'meta') MetaModel meta
});


$MetaModelCopyWith<$Res> get meta;

}
/// @nodoc
class _$DocsResModelCopyWithImpl<$Res>
    implements $DocsResModelCopyWith<$Res> {
  _$DocsResModelCopyWithImpl(this._self, this._then);

  final DocsResModel _self;
  final $Res Function(DocsResModel) _then;

/// Create a copy of DocsResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? docs = null,Object? meta = null,}) {
  return _then(_self.copyWith(
docs: null == docs ? _self.docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel,
  ));
}
/// Create a copy of DocsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res> get meta {
  
  return $MetaModelCopyWith<$Res>(_self.meta, (value) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'docs')  List<DocModel> docs, @JsonKey(name: 'meta')  MetaModel meta)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'docs')  List<DocModel> docs, @JsonKey(name: 'meta')  MetaModel meta)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'docs')  List<DocModel> docs, @JsonKey(name: 'meta')  MetaModel meta)?  $default,) {final _that = this;
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
  const _DocsResModel({@JsonKey(name: 'docs') final  List<DocModel> docs = const [], @JsonKey(name: 'meta') this.meta = const MetaModel()}): _docs = docs;
  factory _DocsResModel.fromJson(Map<String, dynamic> json) => _$DocsResModelFromJson(json);

 final  List<DocModel> _docs;
@override@JsonKey(name: 'docs') List<DocModel> get docs {
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_docs);
}

@override@JsonKey(name: 'meta') final  MetaModel meta;

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
@JsonKey(name: 'docs') List<DocModel> docs,@JsonKey(name: 'meta') MetaModel meta
});


@override $MetaModelCopyWith<$Res> get meta;

}
/// @nodoc
class __$DocsResModelCopyWithImpl<$Res>
    implements _$DocsResModelCopyWith<$Res> {
  __$DocsResModelCopyWithImpl(this._self, this._then);

  final _DocsResModel _self;
  final $Res Function(_DocsResModel) _then;

/// Create a copy of DocsResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? docs = null,Object? meta = null,}) {
  return _then(_DocsResModel(
docs: null == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel,
  ));
}

/// Create a copy of DocsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res> get meta {
  
  return $MetaModelCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$DocModel {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'unit_id') int get unitId;@JsonKey(name: 'media') List<DocMediaModel> get files;@JsonKey(name: 'latitude') String get latitude;@JsonKey(name: 'longitude') String get longitude;@JsonKey(name: 'doc_status') DocStatusModel get docStatus;@JsonKey(name: 'copies_count') int get copiesCount;@JsonKey(name: 'reviewed_by') String get reviewedBy;@JsonKey(name: 'reviewed_at') String get reviewedAt;@JsonKey(name: 'admin_notes') String get adminNotes;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of DocModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocModelCopyWith<DocModel> get copyWith => _$DocModelCopyWithImpl<DocModel>(this as DocModel, _$identity);

  /// Serializes this DocModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocModel&&(identical(other.id, id) || other.id == id)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&const DeepCollectionEquality().equals(other.files, files)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.docStatus, docStatus) || other.docStatus == docStatus)&&(identical(other.copiesCount, copiesCount) || other.copiesCount == copiesCount)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unitId,const DeepCollectionEquality().hash(files),latitude,longitude,docStatus,copiesCount,reviewedBy,reviewedAt,adminNotes,createdAt,updatedAt);

@override
String toString() {
  return 'DocModel(id: $id, unitId: $unitId, files: $files, latitude: $latitude, longitude: $longitude, docStatus: $docStatus, copiesCount: $copiesCount, reviewedBy: $reviewedBy, reviewedAt: $reviewedAt, adminNotes: $adminNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DocModelCopyWith<$Res>  {
  factory $DocModelCopyWith(DocModel value, $Res Function(DocModel) _then) = _$DocModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'unit_id') int unitId,@JsonKey(name: 'media') List<DocMediaModel> files,@JsonKey(name: 'latitude') String latitude,@JsonKey(name: 'longitude') String longitude,@JsonKey(name: 'doc_status') DocStatusModel docStatus,@JsonKey(name: 'copies_count') int copiesCount,@JsonKey(name: 'reviewed_by') String reviewedBy,@JsonKey(name: 'reviewed_at') String reviewedAt,@JsonKey(name: 'admin_notes') String adminNotes,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});


$DocStatusModelCopyWith<$Res> get docStatus;

}
/// @nodoc
class _$DocModelCopyWithImpl<$Res>
    implements $DocModelCopyWith<$Res> {
  _$DocModelCopyWithImpl(this._self, this._then);

  final DocModel _self;
  final $Res Function(DocModel) _then;

/// Create a copy of DocModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? unitId = null,Object? files = null,Object? latitude = null,Object? longitude = null,Object? docStatus = null,Object? copiesCount = null,Object? reviewedBy = null,Object? reviewedAt = null,Object? adminNotes = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int,files: null == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<DocMediaModel>,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,docStatus: null == docStatus ? _self.docStatus : docStatus // ignore: cast_nullable_to_non_nullable
as DocStatusModel,copiesCount: null == copiesCount ? _self.copiesCount : copiesCount // ignore: cast_nullable_to_non_nullable
as int,reviewedBy: null == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as String,reviewedAt: null == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String,adminNotes: null == adminNotes ? _self.adminNotes : adminNotes // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of DocModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocStatusModelCopyWith<$Res> get docStatus {
  
  return $DocStatusModelCopyWith<$Res>(_self.docStatus, (value) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'unit_id')  int unitId, @JsonKey(name: 'media')  List<DocMediaModel> files, @JsonKey(name: 'latitude')  String latitude, @JsonKey(name: 'longitude')  String longitude, @JsonKey(name: 'doc_status')  DocStatusModel docStatus, @JsonKey(name: 'copies_count')  int copiesCount, @JsonKey(name: 'reviewed_by')  String reviewedBy, @JsonKey(name: 'reviewed_at')  String reviewedAt, @JsonKey(name: 'admin_notes')  String adminNotes, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocModel() when $default != null:
return $default(_that.id,_that.unitId,_that.files,_that.latitude,_that.longitude,_that.docStatus,_that.copiesCount,_that.reviewedBy,_that.reviewedAt,_that.adminNotes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'unit_id')  int unitId, @JsonKey(name: 'media')  List<DocMediaModel> files, @JsonKey(name: 'latitude')  String latitude, @JsonKey(name: 'longitude')  String longitude, @JsonKey(name: 'doc_status')  DocStatusModel docStatus, @JsonKey(name: 'copies_count')  int copiesCount, @JsonKey(name: 'reviewed_by')  String reviewedBy, @JsonKey(name: 'reviewed_at')  String reviewedAt, @JsonKey(name: 'admin_notes')  String adminNotes, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DocModel():
return $default(_that.id,_that.unitId,_that.files,_that.latitude,_that.longitude,_that.docStatus,_that.copiesCount,_that.reviewedBy,_that.reviewedAt,_that.adminNotes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'unit_id')  int unitId, @JsonKey(name: 'media')  List<DocMediaModel> files, @JsonKey(name: 'latitude')  String latitude, @JsonKey(name: 'longitude')  String longitude, @JsonKey(name: 'doc_status')  DocStatusModel docStatus, @JsonKey(name: 'copies_count')  int copiesCount, @JsonKey(name: 'reviewed_by')  String reviewedBy, @JsonKey(name: 'reviewed_at')  String reviewedAt, @JsonKey(name: 'admin_notes')  String adminNotes, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DocModel() when $default != null:
return $default(_that.id,_that.unitId,_that.files,_that.latitude,_that.longitude,_that.docStatus,_that.copiesCount,_that.reviewedBy,_that.reviewedAt,_that.adminNotes,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocModel implements DocModel {
  const _DocModel({@JsonKey(name: 'id') this.id = -1, @JsonKey(name: 'unit_id') this.unitId = -1, @JsonKey(name: 'media') final  List<DocMediaModel> files = const [], @JsonKey(name: 'latitude') this.latitude = '', @JsonKey(name: 'longitude') this.longitude = '', @JsonKey(name: 'doc_status') this.docStatus = const DocStatusModel(), @JsonKey(name: 'copies_count') this.copiesCount = 0, @JsonKey(name: 'reviewed_by') this.reviewedBy = '', @JsonKey(name: 'reviewed_at') this.reviewedAt = '', @JsonKey(name: 'admin_notes') this.adminNotes = '', @JsonKey(name: 'created_at') this.createdAt = '', @JsonKey(name: 'updated_at') this.updatedAt = ''}): _files = files;
  factory _DocModel.fromJson(Map<String, dynamic> json) => _$DocModelFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'unit_id') final  int unitId;
 final  List<DocMediaModel> _files;
@override@JsonKey(name: 'media') List<DocMediaModel> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}

@override@JsonKey(name: 'latitude') final  String latitude;
@override@JsonKey(name: 'longitude') final  String longitude;
@override@JsonKey(name: 'doc_status') final  DocStatusModel docStatus;
@override@JsonKey(name: 'copies_count') final  int copiesCount;
@override@JsonKey(name: 'reviewed_by') final  String reviewedBy;
@override@JsonKey(name: 'reviewed_at') final  String reviewedAt;
@override@JsonKey(name: 'admin_notes') final  String adminNotes;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocModel&&(identical(other.id, id) || other.id == id)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.docStatus, docStatus) || other.docStatus == docStatus)&&(identical(other.copiesCount, copiesCount) || other.copiesCount == copiesCount)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unitId,const DeepCollectionEquality().hash(_files),latitude,longitude,docStatus,copiesCount,reviewedBy,reviewedAt,adminNotes,createdAt,updatedAt);

@override
String toString() {
  return 'DocModel(id: $id, unitId: $unitId, files: $files, latitude: $latitude, longitude: $longitude, docStatus: $docStatus, copiesCount: $copiesCount, reviewedBy: $reviewedBy, reviewedAt: $reviewedAt, adminNotes: $adminNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DocModelCopyWith<$Res> implements $DocModelCopyWith<$Res> {
  factory _$DocModelCopyWith(_DocModel value, $Res Function(_DocModel) _then) = __$DocModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'unit_id') int unitId,@JsonKey(name: 'media') List<DocMediaModel> files,@JsonKey(name: 'latitude') String latitude,@JsonKey(name: 'longitude') String longitude,@JsonKey(name: 'doc_status') DocStatusModel docStatus,@JsonKey(name: 'copies_count') int copiesCount,@JsonKey(name: 'reviewed_by') String reviewedBy,@JsonKey(name: 'reviewed_at') String reviewedAt,@JsonKey(name: 'admin_notes') String adminNotes,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});


@override $DocStatusModelCopyWith<$Res> get docStatus;

}
/// @nodoc
class __$DocModelCopyWithImpl<$Res>
    implements _$DocModelCopyWith<$Res> {
  __$DocModelCopyWithImpl(this._self, this._then);

  final _DocModel _self;
  final $Res Function(_DocModel) _then;

/// Create a copy of DocModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? unitId = null,Object? files = null,Object? latitude = null,Object? longitude = null,Object? docStatus = null,Object? copiesCount = null,Object? reviewedBy = null,Object? reviewedAt = null,Object? adminNotes = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_DocModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int,files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<DocMediaModel>,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,docStatus: null == docStatus ? _self.docStatus : docStatus // ignore: cast_nullable_to_non_nullable
as DocStatusModel,copiesCount: null == copiesCount ? _self.copiesCount : copiesCount // ignore: cast_nullable_to_non_nullable
as int,reviewedBy: null == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as String,reviewedAt: null == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String,adminNotes: null == adminNotes ? _self.adminNotes : adminNotes // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of DocModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocStatusModelCopyWith<$Res> get docStatus {
  
  return $DocStatusModelCopyWith<$Res>(_self.docStatus, (value) {
    return _then(_self.copyWith(docStatus: value));
  });
}
}


/// @nodoc
mixin _$DocStatusModel {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'text_color') String get textColor;@JsonKey(name: 'background_color') String get backgroundColor;@JsonKey(name: 'icon_color') String get iconColor;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
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
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'text_color') String textColor,@JsonKey(name: 'background_color') String backgroundColor,@JsonKey(name: 'icon_color') String iconColor,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? textColor = null,Object? backgroundColor = null,Object? iconColor = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,textColor: null == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as String,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,iconColor: null == iconColor ? _self.iconColor : iconColor // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'text_color')  String textColor, @JsonKey(name: 'background_color')  String backgroundColor, @JsonKey(name: 'icon_color')  String iconColor, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'text_color')  String textColor, @JsonKey(name: 'background_color')  String backgroundColor, @JsonKey(name: 'icon_color')  String iconColor, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'text_color')  String textColor, @JsonKey(name: 'background_color')  String backgroundColor, @JsonKey(name: 'icon_color')  String iconColor, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
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
  const _DocStatusModel({@JsonKey(name: 'id') this.id = 0, @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'text_color') this.textColor = '', @JsonKey(name: 'background_color') this.backgroundColor = '', @JsonKey(name: 'icon_color') this.iconColor = '', @JsonKey(name: 'created_at') this.createdAt = '', @JsonKey(name: 'updated_at') this.updatedAt = ''});
  factory _DocStatusModel.fromJson(Map<String, dynamic> json) => _$DocStatusModelFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'text_color') final  String textColor;
@override@JsonKey(name: 'background_color') final  String backgroundColor;
@override@JsonKey(name: 'icon_color') final  String iconColor;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

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
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'text_color') String textColor,@JsonKey(name: 'background_color') String backgroundColor,@JsonKey(name: 'icon_color') String iconColor,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? textColor = null,Object? backgroundColor = null,Object? iconColor = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_DocStatusModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,textColor: null == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as String,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,iconColor: null == iconColor ? _self.iconColor : iconColor // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DocMediaModel {

 int get id;@JsonKey(name: 'documentation_id') int get documentationId;@JsonKey(name: 'file_path') String get filePath; String get thumbnail;@JsonKey(name: 'file_type') String get fileType; int get sequence;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of DocMediaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocMediaModelCopyWith<DocMediaModel> get copyWith => _$DocMediaModelCopyWithImpl<DocMediaModel>(this as DocMediaModel, _$identity);

  /// Serializes this DocMediaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocMediaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.documentationId, documentationId) || other.documentationId == documentationId)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.fileType, fileType) || other.fileType == fileType)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,documentationId,filePath,thumbnail,fileType,sequence,createdAt,updatedAt);

@override
String toString() {
  return 'DocMediaModel(id: $id, documentationId: $documentationId, filePath: $filePath, thumbnail: $thumbnail, fileType: $fileType, sequence: $sequence, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DocMediaModelCopyWith<$Res>  {
  factory $DocMediaModelCopyWith(DocMediaModel value, $Res Function(DocMediaModel) _then) = _$DocMediaModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'documentation_id') int documentationId,@JsonKey(name: 'file_path') String filePath, String thumbnail,@JsonKey(name: 'file_type') String fileType, int sequence,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$DocMediaModelCopyWithImpl<$Res>
    implements $DocMediaModelCopyWith<$Res> {
  _$DocMediaModelCopyWithImpl(this._self, this._then);

  final DocMediaModel _self;
  final $Res Function(DocMediaModel) _then;

/// Create a copy of DocMediaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? documentationId = null,Object? filePath = null,Object? thumbnail = null,Object? fileType = null,Object? sequence = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,documentationId: null == documentationId ? _self.documentationId : documentationId // ignore: cast_nullable_to_non_nullable
as int,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DocMediaModel].
extension DocMediaModelPatterns on DocMediaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocMediaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocMediaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocMediaModel value)  $default,){
final _that = this;
switch (_that) {
case _DocMediaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocMediaModel value)?  $default,){
final _that = this;
switch (_that) {
case _DocMediaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'documentation_id')  int documentationId, @JsonKey(name: 'file_path')  String filePath,  String thumbnail, @JsonKey(name: 'file_type')  String fileType,  int sequence, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocMediaModel() when $default != null:
return $default(_that.id,_that.documentationId,_that.filePath,_that.thumbnail,_that.fileType,_that.sequence,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'documentation_id')  int documentationId, @JsonKey(name: 'file_path')  String filePath,  String thumbnail, @JsonKey(name: 'file_type')  String fileType,  int sequence, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DocMediaModel():
return $default(_that.id,_that.documentationId,_that.filePath,_that.thumbnail,_that.fileType,_that.sequence,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'documentation_id')  int documentationId, @JsonKey(name: 'file_path')  String filePath,  String thumbnail, @JsonKey(name: 'file_type')  String fileType,  int sequence, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DocMediaModel() when $default != null:
return $default(_that.id,_that.documentationId,_that.filePath,_that.thumbnail,_that.fileType,_that.sequence,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocMediaModel implements DocMediaModel {
  const _DocMediaModel({this.id = 0, @JsonKey(name: 'documentation_id') this.documentationId = 0, @JsonKey(name: 'file_path') this.filePath = '', this.thumbnail = '', @JsonKey(name: 'file_type') this.fileType = '', this.sequence = 0, @JsonKey(name: 'created_at') this.createdAt = '', @JsonKey(name: 'updated_at') this.updatedAt = ''});
  factory _DocMediaModel.fromJson(Map<String, dynamic> json) => _$DocMediaModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey(name: 'documentation_id') final  int documentationId;
@override@JsonKey(name: 'file_path') final  String filePath;
@override@JsonKey() final  String thumbnail;
@override@JsonKey(name: 'file_type') final  String fileType;
@override@JsonKey() final  int sequence;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of DocMediaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocMediaModelCopyWith<_DocMediaModel> get copyWith => __$DocMediaModelCopyWithImpl<_DocMediaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocMediaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocMediaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.documentationId, documentationId) || other.documentationId == documentationId)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.fileType, fileType) || other.fileType == fileType)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,documentationId,filePath,thumbnail,fileType,sequence,createdAt,updatedAt);

@override
String toString() {
  return 'DocMediaModel(id: $id, documentationId: $documentationId, filePath: $filePath, thumbnail: $thumbnail, fileType: $fileType, sequence: $sequence, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DocMediaModelCopyWith<$Res> implements $DocMediaModelCopyWith<$Res> {
  factory _$DocMediaModelCopyWith(_DocMediaModel value, $Res Function(_DocMediaModel) _then) = __$DocMediaModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'documentation_id') int documentationId,@JsonKey(name: 'file_path') String filePath, String thumbnail,@JsonKey(name: 'file_type') String fileType, int sequence,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$DocMediaModelCopyWithImpl<$Res>
    implements _$DocMediaModelCopyWith<$Res> {
  __$DocMediaModelCopyWithImpl(this._self, this._then);

  final _DocMediaModel _self;
  final $Res Function(_DocMediaModel) _then;

/// Create a copy of DocMediaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? documentationId = null,Object? filePath = null,Object? thumbnail = null,Object? fileType = null,Object? sequence = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_DocMediaModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,documentationId: null == documentationId ? _self.documentationId : documentationId // ignore: cast_nullable_to_non_nullable
as int,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
