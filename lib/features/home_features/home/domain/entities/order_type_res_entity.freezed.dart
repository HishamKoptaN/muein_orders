// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_type_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StatEntity {

 int get id; int get docsCount; SubCategoryEntity? get subCategory; SallaOrderItemUnitEntity? get doc;
/// Create a copy of StatEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatEntityCopyWith<StatEntity> get copyWith => _$StatEntityCopyWithImpl<StatEntity>(this as StatEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.docsCount, docsCount) || other.docsCount == docsCount)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.doc, doc) || other.doc == doc));
}


@override
int get hashCode => Object.hash(runtimeType,id,docsCount,subCategory,doc);

@override
String toString() {
  return 'StatEntity(id: $id, docsCount: $docsCount, subCategory: $subCategory, doc: $doc)';
}


}

/// @nodoc
abstract mixin class $StatEntityCopyWith<$Res>  {
  factory $StatEntityCopyWith(StatEntity value, $Res Function(StatEntity) _then) = _$StatEntityCopyWithImpl;
@useResult
$Res call({
 int id, int docsCount, SubCategoryEntity? subCategory, SallaOrderItemUnitEntity? doc
});


$SubCategoryEntityCopyWith<$Res>? get subCategory;$SallaOrderItemUnitEntityCopyWith<$Res>? get doc;

}
/// @nodoc
class _$StatEntityCopyWithImpl<$Res>
    implements $StatEntityCopyWith<$Res> {
  _$StatEntityCopyWithImpl(this._self, this._then);

  final StatEntity _self;
  final $Res Function(StatEntity) _then;

/// Create a copy of StatEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? docsCount = null,Object? subCategory = freezed,Object? doc = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,docsCount: null == docsCount ? _self.docsCount : docsCount // ignore: cast_nullable_to_non_nullable
as int,subCategory: freezed == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as SubCategoryEntity?,doc: freezed == doc ? _self.doc : doc // ignore: cast_nullable_to_non_nullable
as SallaOrderItemUnitEntity?,
  ));
}
/// Create a copy of StatEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubCategoryEntityCopyWith<$Res>? get subCategory {
    if (_self.subCategory == null) {
    return null;
  }

  return $SubCategoryEntityCopyWith<$Res>(_self.subCategory!, (value) {
    return _then(_self.copyWith(subCategory: value));
  });
}/// Create a copy of StatEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SallaOrderItemUnitEntityCopyWith<$Res>? get doc {
    if (_self.doc == null) {
    return null;
  }

  return $SallaOrderItemUnitEntityCopyWith<$Res>(_self.doc!, (value) {
    return _then(_self.copyWith(doc: value));
  });
}
}


/// Adds pattern-matching-related methods to [StatEntity].
extension StatEntityPatterns on StatEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatEntity value)  $default,){
final _that = this;
switch (_that) {
case _StatEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatEntity value)?  $default,){
final _that = this;
switch (_that) {
case _StatEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int docsCount,  SubCategoryEntity? subCategory,  SallaOrderItemUnitEntity? doc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatEntity() when $default != null:
return $default(_that.id,_that.docsCount,_that.subCategory,_that.doc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int docsCount,  SubCategoryEntity? subCategory,  SallaOrderItemUnitEntity? doc)  $default,) {final _that = this;
switch (_that) {
case _StatEntity():
return $default(_that.id,_that.docsCount,_that.subCategory,_that.doc);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int docsCount,  SubCategoryEntity? subCategory,  SallaOrderItemUnitEntity? doc)?  $default,) {final _that = this;
switch (_that) {
case _StatEntity() when $default != null:
return $default(_that.id,_that.docsCount,_that.subCategory,_that.doc);case _:
  return null;

}
}

}

/// @nodoc


class _StatEntity implements StatEntity {
  const _StatEntity({this.id = 0, this.docsCount = 0, this.subCategory, this.doc});
  

@override@JsonKey() final  int id;
@override@JsonKey() final  int docsCount;
@override final  SubCategoryEntity? subCategory;
@override final  SallaOrderItemUnitEntity? doc;

/// Create a copy of StatEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatEntityCopyWith<_StatEntity> get copyWith => __$StatEntityCopyWithImpl<_StatEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.docsCount, docsCount) || other.docsCount == docsCount)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.doc, doc) || other.doc == doc));
}


@override
int get hashCode => Object.hash(runtimeType,id,docsCount,subCategory,doc);

@override
String toString() {
  return 'StatEntity(id: $id, docsCount: $docsCount, subCategory: $subCategory, doc: $doc)';
}


}

/// @nodoc
abstract mixin class _$StatEntityCopyWith<$Res> implements $StatEntityCopyWith<$Res> {
  factory _$StatEntityCopyWith(_StatEntity value, $Res Function(_StatEntity) _then) = __$StatEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int docsCount, SubCategoryEntity? subCategory, SallaOrderItemUnitEntity? doc
});


@override $SubCategoryEntityCopyWith<$Res>? get subCategory;@override $SallaOrderItemUnitEntityCopyWith<$Res>? get doc;

}
/// @nodoc
class __$StatEntityCopyWithImpl<$Res>
    implements _$StatEntityCopyWith<$Res> {
  __$StatEntityCopyWithImpl(this._self, this._then);

  final _StatEntity _self;
  final $Res Function(_StatEntity) _then;

/// Create a copy of StatEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? docsCount = null,Object? subCategory = freezed,Object? doc = freezed,}) {
  return _then(_StatEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,docsCount: null == docsCount ? _self.docsCount : docsCount // ignore: cast_nullable_to_non_nullable
as int,subCategory: freezed == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as SubCategoryEntity?,doc: freezed == doc ? _self.doc : doc // ignore: cast_nullable_to_non_nullable
as SallaOrderItemUnitEntity?,
  ));
}

/// Create a copy of StatEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubCategoryEntityCopyWith<$Res>? get subCategory {
    if (_self.subCategory == null) {
    return null;
  }

  return $SubCategoryEntityCopyWith<$Res>(_self.subCategory!, (value) {
    return _then(_self.copyWith(subCategory: value));
  });
}/// Create a copy of StatEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SallaOrderItemUnitEntityCopyWith<$Res>? get doc {
    if (_self.doc == null) {
    return null;
  }

  return $SallaOrderItemUnitEntityCopyWith<$Res>(_self.doc!, (value) {
    return _then(_self.copyWith(doc: value));
  });
}
}

/// @nodoc
mixin _$SubCategoryEntity {

 int get id; String get name; String get image;
/// Create a copy of SubCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryEntityCopyWith<SubCategoryEntity> get copyWith => _$SubCategoryEntityCopyWithImpl<SubCategoryEntity>(this as SubCategoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'SubCategoryEntity(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class $SubCategoryEntityCopyWith<$Res>  {
  factory $SubCategoryEntityCopyWith(SubCategoryEntity value, $Res Function(SubCategoryEntity) _then) = _$SubCategoryEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image
});




}
/// @nodoc
class _$SubCategoryEntityCopyWithImpl<$Res>
    implements $SubCategoryEntityCopyWith<$Res> {
  _$SubCategoryEntityCopyWithImpl(this._self, this._then);

  final SubCategoryEntity _self;
  final $Res Function(SubCategoryEntity) _then;

/// Create a copy of SubCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubCategoryEntity].
extension SubCategoryEntityPatterns on SubCategoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubCategoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubCategoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubCategoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _SubCategoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubCategoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SubCategoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubCategoryEntity() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String image)  $default,) {final _that = this;
switch (_that) {
case _SubCategoryEntity():
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String image)?  $default,) {final _that = this;
switch (_that) {
case _SubCategoryEntity() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _SubCategoryEntity implements SubCategoryEntity {
  const _SubCategoryEntity({this.id = 0, this.name = '', this.image = ''});
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String image;

/// Create a copy of SubCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubCategoryEntityCopyWith<_SubCategoryEntity> get copyWith => __$SubCategoryEntityCopyWithImpl<_SubCategoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'SubCategoryEntity(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$SubCategoryEntityCopyWith<$Res> implements $SubCategoryEntityCopyWith<$Res> {
  factory _$SubCategoryEntityCopyWith(_SubCategoryEntity value, $Res Function(_SubCategoryEntity) _then) = __$SubCategoryEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image
});




}
/// @nodoc
class __$SubCategoryEntityCopyWithImpl<$Res>
    implements _$SubCategoryEntityCopyWith<$Res> {
  __$SubCategoryEntityCopyWithImpl(this._self, this._then);

  final _SubCategoryEntity _self;
  final $Res Function(_SubCategoryEntity) _then;

/// Create a copy of SubCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,}) {
  return _then(_SubCategoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
