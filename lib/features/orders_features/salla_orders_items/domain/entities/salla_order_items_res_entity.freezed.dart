// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salla_order_items_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SallaOrderItemsResEntity {

 List<SallaOrderItemEntity> get sallaOrderItems; MetaEntity get meta;
/// Create a copy of SallaOrderItemsResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SallaOrderItemsResEntityCopyWith<SallaOrderItemsResEntity> get copyWith => _$SallaOrderItemsResEntityCopyWithImpl<SallaOrderItemsResEntity>(this as SallaOrderItemsResEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SallaOrderItemsResEntity&&const DeepCollectionEquality().equals(other.sallaOrderItems, sallaOrderItems)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sallaOrderItems),meta);

@override
String toString() {
  return 'SallaOrderItemsResEntity(sallaOrderItems: $sallaOrderItems, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $SallaOrderItemsResEntityCopyWith<$Res>  {
  factory $SallaOrderItemsResEntityCopyWith(SallaOrderItemsResEntity value, $Res Function(SallaOrderItemsResEntity) _then) = _$SallaOrderItemsResEntityCopyWithImpl;
@useResult
$Res call({
 List<SallaOrderItemEntity> sallaOrderItems, MetaEntity meta
});


$MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class _$SallaOrderItemsResEntityCopyWithImpl<$Res>
    implements $SallaOrderItemsResEntityCopyWith<$Res> {
  _$SallaOrderItemsResEntityCopyWithImpl(this._self, this._then);

  final SallaOrderItemsResEntity _self;
  final $Res Function(SallaOrderItemsResEntity) _then;

/// Create a copy of SallaOrderItemsResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sallaOrderItems = null,Object? meta = null,}) {
  return _then(_self.copyWith(
sallaOrderItems: null == sallaOrderItems ? _self.sallaOrderItems : sallaOrderItems // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}
/// Create a copy of SallaOrderItemsResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res> get meta {
  
  return $MetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [SallaOrderItemsResEntity].
extension SallaOrderItemsResEntityPatterns on SallaOrderItemsResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SallaOrderItemsResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SallaOrderItemsResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SallaOrderItemsResEntity value)  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemsResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SallaOrderItemsResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemsResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SallaOrderItemEntity> sallaOrderItems,  MetaEntity meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SallaOrderItemsResEntity() when $default != null:
return $default(_that.sallaOrderItems,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SallaOrderItemEntity> sallaOrderItems,  MetaEntity meta)  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemsResEntity():
return $default(_that.sallaOrderItems,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SallaOrderItemEntity> sallaOrderItems,  MetaEntity meta)?  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemsResEntity() when $default != null:
return $default(_that.sallaOrderItems,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _SallaOrderItemsResEntity implements SallaOrderItemsResEntity {
  const _SallaOrderItemsResEntity({final  List<SallaOrderItemEntity> sallaOrderItems = const [], this.meta = const MetaEntity()}): _sallaOrderItems = sallaOrderItems;
  

 final  List<SallaOrderItemEntity> _sallaOrderItems;
@override@JsonKey() List<SallaOrderItemEntity> get sallaOrderItems {
  if (_sallaOrderItems is EqualUnmodifiableListView) return _sallaOrderItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sallaOrderItems);
}

@override@JsonKey() final  MetaEntity meta;

/// Create a copy of SallaOrderItemsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SallaOrderItemsResEntityCopyWith<_SallaOrderItemsResEntity> get copyWith => __$SallaOrderItemsResEntityCopyWithImpl<_SallaOrderItemsResEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SallaOrderItemsResEntity&&const DeepCollectionEquality().equals(other._sallaOrderItems, _sallaOrderItems)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sallaOrderItems),meta);

@override
String toString() {
  return 'SallaOrderItemsResEntity(sallaOrderItems: $sallaOrderItems, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$SallaOrderItemsResEntityCopyWith<$Res> implements $SallaOrderItemsResEntityCopyWith<$Res> {
  factory _$SallaOrderItemsResEntityCopyWith(_SallaOrderItemsResEntity value, $Res Function(_SallaOrderItemsResEntity) _then) = __$SallaOrderItemsResEntityCopyWithImpl;
@override @useResult
$Res call({
 List<SallaOrderItemEntity> sallaOrderItems, MetaEntity meta
});


@override $MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class __$SallaOrderItemsResEntityCopyWithImpl<$Res>
    implements _$SallaOrderItemsResEntityCopyWith<$Res> {
  __$SallaOrderItemsResEntityCopyWithImpl(this._self, this._then);

  final _SallaOrderItemsResEntity _self;
  final $Res Function(_SallaOrderItemsResEntity) _then;

/// Create a copy of SallaOrderItemsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sallaOrderItems = null,Object? meta = null,}) {
  return _then(_SallaOrderItemsResEntity(
sallaOrderItems: null == sallaOrderItems ? _self._sallaOrderItems : sallaOrderItems // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}

/// Create a copy of SallaOrderItemsResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res> get meta {
  
  return $MetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

/// @nodoc
mixin _$SallaOrderItemEntity {

 int get id; String get printedName; List<SallaOrderItemUnitEntity> get sallaOrderItemUnits; SallaOrderItemStatusEntity get sallaOrderItemStatus;
/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SallaOrderItemEntityCopyWith<SallaOrderItemEntity> get copyWith => _$SallaOrderItemEntityCopyWithImpl<SallaOrderItemEntity>(this as SallaOrderItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SallaOrderItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&const DeepCollectionEquality().equals(other.sallaOrderItemUnits, sallaOrderItemUnits)&&(identical(other.sallaOrderItemStatus, sallaOrderItemStatus) || other.sallaOrderItemStatus == sallaOrderItemStatus));
}


@override
int get hashCode => Object.hash(runtimeType,id,printedName,const DeepCollectionEquality().hash(sallaOrderItemUnits),sallaOrderItemStatus);

@override
String toString() {
  return 'SallaOrderItemEntity(id: $id, printedName: $printedName, sallaOrderItemUnits: $sallaOrderItemUnits, sallaOrderItemStatus: $sallaOrderItemStatus)';
}


}

/// @nodoc
abstract mixin class $SallaOrderItemEntityCopyWith<$Res>  {
  factory $SallaOrderItemEntityCopyWith(SallaOrderItemEntity value, $Res Function(SallaOrderItemEntity) _then) = _$SallaOrderItemEntityCopyWithImpl;
@useResult
$Res call({
 int id, String printedName, List<SallaOrderItemUnitEntity> sallaOrderItemUnits, SallaOrderItemStatusEntity sallaOrderItemStatus
});


$SallaOrderItemStatusEntityCopyWith<$Res> get sallaOrderItemStatus;

}
/// @nodoc
class _$SallaOrderItemEntityCopyWithImpl<$Res>
    implements $SallaOrderItemEntityCopyWith<$Res> {
  _$SallaOrderItemEntityCopyWithImpl(this._self, this._then);

  final SallaOrderItemEntity _self;
  final $Res Function(SallaOrderItemEntity) _then;

/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? printedName = null,Object? sallaOrderItemUnits = null,Object? sallaOrderItemStatus = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,printedName: null == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String,sallaOrderItemUnits: null == sallaOrderItemUnits ? _self.sallaOrderItemUnits : sallaOrderItemUnits // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemUnitEntity>,sallaOrderItemStatus: null == sallaOrderItemStatus ? _self.sallaOrderItemStatus : sallaOrderItemStatus // ignore: cast_nullable_to_non_nullable
as SallaOrderItemStatusEntity,
  ));
}
/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SallaOrderItemStatusEntityCopyWith<$Res> get sallaOrderItemStatus {
  
  return $SallaOrderItemStatusEntityCopyWith<$Res>(_self.sallaOrderItemStatus, (value) {
    return _then(_self.copyWith(sallaOrderItemStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [SallaOrderItemEntity].
extension SallaOrderItemEntityPatterns on SallaOrderItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SallaOrderItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SallaOrderItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SallaOrderItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SallaOrderItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String printedName,  List<SallaOrderItemUnitEntity> sallaOrderItemUnits,  SallaOrderItemStatusEntity sallaOrderItemStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SallaOrderItemEntity() when $default != null:
return $default(_that.id,_that.printedName,_that.sallaOrderItemUnits,_that.sallaOrderItemStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String printedName,  List<SallaOrderItemUnitEntity> sallaOrderItemUnits,  SallaOrderItemStatusEntity sallaOrderItemStatus)  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemEntity():
return $default(_that.id,_that.printedName,_that.sallaOrderItemUnits,_that.sallaOrderItemStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String printedName,  List<SallaOrderItemUnitEntity> sallaOrderItemUnits,  SallaOrderItemStatusEntity sallaOrderItemStatus)?  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemEntity() when $default != null:
return $default(_that.id,_that.printedName,_that.sallaOrderItemUnits,_that.sallaOrderItemStatus);case _:
  return null;

}
}

}

/// @nodoc


class _SallaOrderItemEntity implements SallaOrderItemEntity {
  const _SallaOrderItemEntity({this.id = 0, this.printedName = '', final  List<SallaOrderItemUnitEntity> sallaOrderItemUnits = const [], this.sallaOrderItemStatus = const SallaOrderItemStatusEntity()}): _sallaOrderItemUnits = sallaOrderItemUnits;
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String printedName;
 final  List<SallaOrderItemUnitEntity> _sallaOrderItemUnits;
@override@JsonKey() List<SallaOrderItemUnitEntity> get sallaOrderItemUnits {
  if (_sallaOrderItemUnits is EqualUnmodifiableListView) return _sallaOrderItemUnits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sallaOrderItemUnits);
}

@override@JsonKey() final  SallaOrderItemStatusEntity sallaOrderItemStatus;

/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SallaOrderItemEntityCopyWith<_SallaOrderItemEntity> get copyWith => __$SallaOrderItemEntityCopyWithImpl<_SallaOrderItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SallaOrderItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&const DeepCollectionEquality().equals(other._sallaOrderItemUnits, _sallaOrderItemUnits)&&(identical(other.sallaOrderItemStatus, sallaOrderItemStatus) || other.sallaOrderItemStatus == sallaOrderItemStatus));
}


@override
int get hashCode => Object.hash(runtimeType,id,printedName,const DeepCollectionEquality().hash(_sallaOrderItemUnits),sallaOrderItemStatus);

@override
String toString() {
  return 'SallaOrderItemEntity(id: $id, printedName: $printedName, sallaOrderItemUnits: $sallaOrderItemUnits, sallaOrderItemStatus: $sallaOrderItemStatus)';
}


}

/// @nodoc
abstract mixin class _$SallaOrderItemEntityCopyWith<$Res> implements $SallaOrderItemEntityCopyWith<$Res> {
  factory _$SallaOrderItemEntityCopyWith(_SallaOrderItemEntity value, $Res Function(_SallaOrderItemEntity) _then) = __$SallaOrderItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String printedName, List<SallaOrderItemUnitEntity> sallaOrderItemUnits, SallaOrderItemStatusEntity sallaOrderItemStatus
});


@override $SallaOrderItemStatusEntityCopyWith<$Res> get sallaOrderItemStatus;

}
/// @nodoc
class __$SallaOrderItemEntityCopyWithImpl<$Res>
    implements _$SallaOrderItemEntityCopyWith<$Res> {
  __$SallaOrderItemEntityCopyWithImpl(this._self, this._then);

  final _SallaOrderItemEntity _self;
  final $Res Function(_SallaOrderItemEntity) _then;

/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? printedName = null,Object? sallaOrderItemUnits = null,Object? sallaOrderItemStatus = null,}) {
  return _then(_SallaOrderItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,printedName: null == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String,sallaOrderItemUnits: null == sallaOrderItemUnits ? _self._sallaOrderItemUnits : sallaOrderItemUnits // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemUnitEntity>,sallaOrderItemStatus: null == sallaOrderItemStatus ? _self.sallaOrderItemStatus : sallaOrderItemStatus // ignore: cast_nullable_to_non_nullable
as SallaOrderItemStatusEntity,
  ));
}

/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SallaOrderItemStatusEntityCopyWith<$Res> get sallaOrderItemStatus {
  
  return $SallaOrderItemStatusEntityCopyWith<$Res>(_self.sallaOrderItemStatus, (value) {
    return _then(_self.copyWith(sallaOrderItemStatus: value));
  });
}
}

/// @nodoc
mixin _$SallaOrderItemStatusEntity {

 String get name;
/// Create a copy of SallaOrderItemStatusEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SallaOrderItemStatusEntityCopyWith<SallaOrderItemStatusEntity> get copyWith => _$SallaOrderItemStatusEntityCopyWithImpl<SallaOrderItemStatusEntity>(this as SallaOrderItemStatusEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SallaOrderItemStatusEntity&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'SallaOrderItemStatusEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class $SallaOrderItemStatusEntityCopyWith<$Res>  {
  factory $SallaOrderItemStatusEntityCopyWith(SallaOrderItemStatusEntity value, $Res Function(SallaOrderItemStatusEntity) _then) = _$SallaOrderItemStatusEntityCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$SallaOrderItemStatusEntityCopyWithImpl<$Res>
    implements $SallaOrderItemStatusEntityCopyWith<$Res> {
  _$SallaOrderItemStatusEntityCopyWithImpl(this._self, this._then);

  final SallaOrderItemStatusEntity _self;
  final $Res Function(SallaOrderItemStatusEntity) _then;

/// Create a copy of SallaOrderItemStatusEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SallaOrderItemStatusEntity].
extension SallaOrderItemStatusEntityPatterns on SallaOrderItemStatusEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SallaOrderItemStatusEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SallaOrderItemStatusEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SallaOrderItemStatusEntity value)  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemStatusEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SallaOrderItemStatusEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemStatusEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SallaOrderItemStatusEntity() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemStatusEntity():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemStatusEntity() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _SallaOrderItemStatusEntity implements SallaOrderItemStatusEntity {
  const _SallaOrderItemStatusEntity({this.name = ''});
  

@override@JsonKey() final  String name;

/// Create a copy of SallaOrderItemStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SallaOrderItemStatusEntityCopyWith<_SallaOrderItemStatusEntity> get copyWith => __$SallaOrderItemStatusEntityCopyWithImpl<_SallaOrderItemStatusEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SallaOrderItemStatusEntity&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'SallaOrderItemStatusEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class _$SallaOrderItemStatusEntityCopyWith<$Res> implements $SallaOrderItemStatusEntityCopyWith<$Res> {
  factory _$SallaOrderItemStatusEntityCopyWith(_SallaOrderItemStatusEntity value, $Res Function(_SallaOrderItemStatusEntity) _then) = __$SallaOrderItemStatusEntityCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$SallaOrderItemStatusEntityCopyWithImpl<$Res>
    implements _$SallaOrderItemStatusEntityCopyWith<$Res> {
  __$SallaOrderItemStatusEntityCopyWithImpl(this._self, this._then);

  final _SallaOrderItemStatusEntity _self;
  final $Res Function(_SallaOrderItemStatusEntity) _then;

/// Create a copy of SallaOrderItemStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_SallaOrderItemStatusEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SallaOrderItemUnitEntity {

 int get id; String get executionNumber; int get unitNumber; List<DocEntity> get docs; String get createdAt; String get updatedAt;
/// Create a copy of SallaOrderItemUnitEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SallaOrderItemUnitEntityCopyWith<SallaOrderItemUnitEntity> get copyWith => _$SallaOrderItemUnitEntityCopyWithImpl<SallaOrderItemUnitEntity>(this as SallaOrderItemUnitEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SallaOrderItemUnitEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&(identical(other.unitNumber, unitNumber) || other.unitNumber == unitNumber)&&const DeepCollectionEquality().equals(other.docs, docs)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,executionNumber,unitNumber,const DeepCollectionEquality().hash(docs),createdAt,updatedAt);

@override
String toString() {
  return 'SallaOrderItemUnitEntity(id: $id, executionNumber: $executionNumber, unitNumber: $unitNumber, docs: $docs, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SallaOrderItemUnitEntityCopyWith<$Res>  {
  factory $SallaOrderItemUnitEntityCopyWith(SallaOrderItemUnitEntity value, $Res Function(SallaOrderItemUnitEntity) _then) = _$SallaOrderItemUnitEntityCopyWithImpl;
@useResult
$Res call({
 int id, String executionNumber, int unitNumber, List<DocEntity> docs, String createdAt, String updatedAt
});




}
/// @nodoc
class _$SallaOrderItemUnitEntityCopyWithImpl<$Res>
    implements $SallaOrderItemUnitEntityCopyWith<$Res> {
  _$SallaOrderItemUnitEntityCopyWithImpl(this._self, this._then);

  final SallaOrderItemUnitEntity _self;
  final $Res Function(SallaOrderItemUnitEntity) _then;

/// Create a copy of SallaOrderItemUnitEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? executionNumber = null,Object? unitNumber = null,Object? docs = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,executionNumber: null == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
as String,unitNumber: null == unitNumber ? _self.unitNumber : unitNumber // ignore: cast_nullable_to_non_nullable
as int,docs: null == docs ? _self.docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocEntity>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SallaOrderItemUnitEntity].
extension SallaOrderItemUnitEntityPatterns on SallaOrderItemUnitEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SallaOrderItemUnitEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SallaOrderItemUnitEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SallaOrderItemUnitEntity value)  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemUnitEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SallaOrderItemUnitEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemUnitEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String executionNumber,  int unitNumber,  List<DocEntity> docs,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SallaOrderItemUnitEntity() when $default != null:
return $default(_that.id,_that.executionNumber,_that.unitNumber,_that.docs,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String executionNumber,  int unitNumber,  List<DocEntity> docs,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemUnitEntity():
return $default(_that.id,_that.executionNumber,_that.unitNumber,_that.docs,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String executionNumber,  int unitNumber,  List<DocEntity> docs,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemUnitEntity() when $default != null:
return $default(_that.id,_that.executionNumber,_that.unitNumber,_that.docs,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _SallaOrderItemUnitEntity implements SallaOrderItemUnitEntity {
  const _SallaOrderItemUnitEntity({this.id = 0, this.executionNumber = '', this.unitNumber = 0, final  List<DocEntity> docs = const [], this.createdAt = '', this.updatedAt = ''}): _docs = docs;
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String executionNumber;
@override@JsonKey() final  int unitNumber;
 final  List<DocEntity> _docs;
@override@JsonKey() List<DocEntity> get docs {
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_docs);
}

@override@JsonKey() final  String createdAt;
@override@JsonKey() final  String updatedAt;

/// Create a copy of SallaOrderItemUnitEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SallaOrderItemUnitEntityCopyWith<_SallaOrderItemUnitEntity> get copyWith => __$SallaOrderItemUnitEntityCopyWithImpl<_SallaOrderItemUnitEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SallaOrderItemUnitEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&(identical(other.unitNumber, unitNumber) || other.unitNumber == unitNumber)&&const DeepCollectionEquality().equals(other._docs, _docs)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,executionNumber,unitNumber,const DeepCollectionEquality().hash(_docs),createdAt,updatedAt);

@override
String toString() {
  return 'SallaOrderItemUnitEntity(id: $id, executionNumber: $executionNumber, unitNumber: $unitNumber, docs: $docs, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SallaOrderItemUnitEntityCopyWith<$Res> implements $SallaOrderItemUnitEntityCopyWith<$Res> {
  factory _$SallaOrderItemUnitEntityCopyWith(_SallaOrderItemUnitEntity value, $Res Function(_SallaOrderItemUnitEntity) _then) = __$SallaOrderItemUnitEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String executionNumber, int unitNumber, List<DocEntity> docs, String createdAt, String updatedAt
});




}
/// @nodoc
class __$SallaOrderItemUnitEntityCopyWithImpl<$Res>
    implements _$SallaOrderItemUnitEntityCopyWith<$Res> {
  __$SallaOrderItemUnitEntityCopyWithImpl(this._self, this._then);

  final _SallaOrderItemUnitEntity _self;
  final $Res Function(_SallaOrderItemUnitEntity) _then;

/// Create a copy of SallaOrderItemUnitEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? executionNumber = null,Object? unitNumber = null,Object? docs = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_SallaOrderItemUnitEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,executionNumber: null == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
as String,unitNumber: null == unitNumber ? _self.unitNumber : unitNumber // ignore: cast_nullable_to_non_nullable
as int,docs: null == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocEntity>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
