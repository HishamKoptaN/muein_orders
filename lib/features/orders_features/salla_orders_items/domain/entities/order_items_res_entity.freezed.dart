// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_items_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderItemsResEntity {

 List<SallaOrderItemEntity> get items; MetaEntity get meta;
/// Create a copy of OrderItemsResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemsResEntityCopyWith<OrderItemsResEntity> get copyWith => _$OrderItemsResEntityCopyWithImpl<OrderItemsResEntity>(this as OrderItemsResEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemsResEntity&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),meta);

@override
String toString() {
  return 'OrderItemsResEntity(items: $items, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $OrderItemsResEntityCopyWith<$Res>  {
  factory $OrderItemsResEntityCopyWith(OrderItemsResEntity value, $Res Function(OrderItemsResEntity) _then) = _$OrderItemsResEntityCopyWithImpl;
@useResult
$Res call({
 List<SallaOrderItemEntity> items, MetaEntity meta
});


$MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class _$OrderItemsResEntityCopyWithImpl<$Res>
    implements $OrderItemsResEntityCopyWith<$Res> {
  _$OrderItemsResEntityCopyWithImpl(this._self, this._then);

  final OrderItemsResEntity _self;
  final $Res Function(OrderItemsResEntity) _then;

/// Create a copy of OrderItemsResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? meta = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}
/// Create a copy of OrderItemsResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res> get meta {
  
  return $MetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderItemsResEntity].
extension OrderItemsResEntityPatterns on OrderItemsResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemsResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemsResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemsResEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemsResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemsResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemsResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SallaOrderItemEntity> items,  MetaEntity meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItemsResEntity() when $default != null:
return $default(_that.items,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SallaOrderItemEntity> items,  MetaEntity meta)  $default,) {final _that = this;
switch (_that) {
case _OrderItemsResEntity():
return $default(_that.items,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SallaOrderItemEntity> items,  MetaEntity meta)?  $default,) {final _that = this;
switch (_that) {
case _OrderItemsResEntity() when $default != null:
return $default(_that.items,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _OrderItemsResEntity extends OrderItemsResEntity {
  const _OrderItemsResEntity({required final  List<SallaOrderItemEntity> items, required this.meta}): _items = items,super._();
  

 final  List<SallaOrderItemEntity> _items;
@override List<SallaOrderItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  MetaEntity meta;

/// Create a copy of OrderItemsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemsResEntityCopyWith<_OrderItemsResEntity> get copyWith => __$OrderItemsResEntityCopyWithImpl<_OrderItemsResEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemsResEntity&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),meta);

@override
String toString() {
  return 'OrderItemsResEntity(items: $items, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$OrderItemsResEntityCopyWith<$Res> implements $OrderItemsResEntityCopyWith<$Res> {
  factory _$OrderItemsResEntityCopyWith(_OrderItemsResEntity value, $Res Function(_OrderItemsResEntity) _then) = __$OrderItemsResEntityCopyWithImpl;
@override @useResult
$Res call({
 List<SallaOrderItemEntity> items, MetaEntity meta
});


@override $MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class __$OrderItemsResEntityCopyWithImpl<$Res>
    implements _$OrderItemsResEntityCopyWith<$Res> {
  __$OrderItemsResEntityCopyWithImpl(this._self, this._then);

  final _OrderItemsResEntity _self;
  final $Res Function(_OrderItemsResEntity) _then;

/// Create a copy of OrderItemsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? meta = null,}) {
  return _then(_OrderItemsResEntity(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}

/// Create a copy of OrderItemsResEntity
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

 int get id; String get printedName; List<SallaOrderItemUnitEntity> get sallaOrderItemUnits;
/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SallaOrderItemEntityCopyWith<SallaOrderItemEntity> get copyWith => _$SallaOrderItemEntityCopyWithImpl<SallaOrderItemEntity>(this as SallaOrderItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SallaOrderItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&const DeepCollectionEquality().equals(other.sallaOrderItemUnits, sallaOrderItemUnits));
}


@override
int get hashCode => Object.hash(runtimeType,id,printedName,const DeepCollectionEquality().hash(sallaOrderItemUnits));

@override
String toString() {
  return 'SallaOrderItemEntity(id: $id, printedName: $printedName, sallaOrderItemUnits: $sallaOrderItemUnits)';
}


}

/// @nodoc
abstract mixin class $SallaOrderItemEntityCopyWith<$Res>  {
  factory $SallaOrderItemEntityCopyWith(SallaOrderItemEntity value, $Res Function(SallaOrderItemEntity) _then) = _$SallaOrderItemEntityCopyWithImpl;
@useResult
$Res call({
 int id, String printedName, List<SallaOrderItemUnitEntity> sallaOrderItemUnits
});




}
/// @nodoc
class _$SallaOrderItemEntityCopyWithImpl<$Res>
    implements $SallaOrderItemEntityCopyWith<$Res> {
  _$SallaOrderItemEntityCopyWithImpl(this._self, this._then);

  final SallaOrderItemEntity _self;
  final $Res Function(SallaOrderItemEntity) _then;

/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? printedName = null,Object? sallaOrderItemUnits = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,printedName: null == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String,sallaOrderItemUnits: null == sallaOrderItemUnits ? _self.sallaOrderItemUnits : sallaOrderItemUnits // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemUnitEntity>,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String printedName,  List<SallaOrderItemUnitEntity> sallaOrderItemUnits)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SallaOrderItemEntity() when $default != null:
return $default(_that.id,_that.printedName,_that.sallaOrderItemUnits);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String printedName,  List<SallaOrderItemUnitEntity> sallaOrderItemUnits)  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemEntity():
return $default(_that.id,_that.printedName,_that.sallaOrderItemUnits);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String printedName,  List<SallaOrderItemUnitEntity> sallaOrderItemUnits)?  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemEntity() when $default != null:
return $default(_that.id,_that.printedName,_that.sallaOrderItemUnits);case _:
  return null;

}
}

}

/// @nodoc


class _SallaOrderItemEntity implements SallaOrderItemEntity {
  const _SallaOrderItemEntity({required this.id, required this.printedName, required final  List<SallaOrderItemUnitEntity> sallaOrderItemUnits}): _sallaOrderItemUnits = sallaOrderItemUnits;
  

@override final  int id;
@override final  String printedName;
 final  List<SallaOrderItemUnitEntity> _sallaOrderItemUnits;
@override List<SallaOrderItemUnitEntity> get sallaOrderItemUnits {
  if (_sallaOrderItemUnits is EqualUnmodifiableListView) return _sallaOrderItemUnits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sallaOrderItemUnits);
}


/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SallaOrderItemEntityCopyWith<_SallaOrderItemEntity> get copyWith => __$SallaOrderItemEntityCopyWithImpl<_SallaOrderItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SallaOrderItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&const DeepCollectionEquality().equals(other._sallaOrderItemUnits, _sallaOrderItemUnits));
}


@override
int get hashCode => Object.hash(runtimeType,id,printedName,const DeepCollectionEquality().hash(_sallaOrderItemUnits));

@override
String toString() {
  return 'SallaOrderItemEntity(id: $id, printedName: $printedName, sallaOrderItemUnits: $sallaOrderItemUnits)';
}


}

/// @nodoc
abstract mixin class _$SallaOrderItemEntityCopyWith<$Res> implements $SallaOrderItemEntityCopyWith<$Res> {
  factory _$SallaOrderItemEntityCopyWith(_SallaOrderItemEntity value, $Res Function(_SallaOrderItemEntity) _then) = __$SallaOrderItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String printedName, List<SallaOrderItemUnitEntity> sallaOrderItemUnits
});




}
/// @nodoc
class __$SallaOrderItemEntityCopyWithImpl<$Res>
    implements _$SallaOrderItemEntityCopyWith<$Res> {
  __$SallaOrderItemEntityCopyWithImpl(this._self, this._then);

  final _SallaOrderItemEntity _self;
  final $Res Function(_SallaOrderItemEntity) _then;

/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? printedName = null,Object? sallaOrderItemUnits = null,}) {
  return _then(_SallaOrderItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,printedName: null == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String,sallaOrderItemUnits: null == sallaOrderItemUnits ? _self._sallaOrderItemUnits : sallaOrderItemUnits // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemUnitEntity>,
  ));
}


}

/// @nodoc
mixin _$SallaOrderItemUnitEntity {

 int get id; String get executionNumber; List<DocEntity> get docs; String? get createdAt; String? get updatedAt;
/// Create a copy of SallaOrderItemUnitEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SallaOrderItemUnitEntityCopyWith<SallaOrderItemUnitEntity> get copyWith => _$SallaOrderItemUnitEntityCopyWithImpl<SallaOrderItemUnitEntity>(this as SallaOrderItemUnitEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SallaOrderItemUnitEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&const DeepCollectionEquality().equals(other.docs, docs)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,executionNumber,const DeepCollectionEquality().hash(docs),createdAt,updatedAt);

@override
String toString() {
  return 'SallaOrderItemUnitEntity(id: $id, executionNumber: $executionNumber, docs: $docs, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SallaOrderItemUnitEntityCopyWith<$Res>  {
  factory $SallaOrderItemUnitEntityCopyWith(SallaOrderItemUnitEntity value, $Res Function(SallaOrderItemUnitEntity) _then) = _$SallaOrderItemUnitEntityCopyWithImpl;
@useResult
$Res call({
 int id, String executionNumber, List<DocEntity> docs, String? createdAt, String? updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? executionNumber = null,Object? docs = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,executionNumber: null == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
as String,docs: null == docs ? _self.docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocEntity>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String executionNumber,  List<DocEntity> docs,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SallaOrderItemUnitEntity() when $default != null:
return $default(_that.id,_that.executionNumber,_that.docs,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String executionNumber,  List<DocEntity> docs,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemUnitEntity():
return $default(_that.id,_that.executionNumber,_that.docs,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String executionNumber,  List<DocEntity> docs,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemUnitEntity() when $default != null:
return $default(_that.id,_that.executionNumber,_that.docs,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _SallaOrderItemUnitEntity extends SallaOrderItemUnitEntity {
  const _SallaOrderItemUnitEntity({this.id = 0, this.executionNumber = '', final  List<DocEntity> docs = const [], this.createdAt, this.updatedAt}): _docs = docs,super._();
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String executionNumber;
 final  List<DocEntity> _docs;
@override@JsonKey() List<DocEntity> get docs {
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_docs);
}

@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of SallaOrderItemUnitEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SallaOrderItemUnitEntityCopyWith<_SallaOrderItemUnitEntity> get copyWith => __$SallaOrderItemUnitEntityCopyWithImpl<_SallaOrderItemUnitEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SallaOrderItemUnitEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&const DeepCollectionEquality().equals(other._docs, _docs)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,executionNumber,const DeepCollectionEquality().hash(_docs),createdAt,updatedAt);

@override
String toString() {
  return 'SallaOrderItemUnitEntity(id: $id, executionNumber: $executionNumber, docs: $docs, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SallaOrderItemUnitEntityCopyWith<$Res> implements $SallaOrderItemUnitEntityCopyWith<$Res> {
  factory _$SallaOrderItemUnitEntityCopyWith(_SallaOrderItemUnitEntity value, $Res Function(_SallaOrderItemUnitEntity) _then) = __$SallaOrderItemUnitEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String executionNumber, List<DocEntity> docs, String? createdAt, String? updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? executionNumber = null,Object? docs = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_SallaOrderItemUnitEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,executionNumber: null == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
as String,docs: null == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocEntity>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
