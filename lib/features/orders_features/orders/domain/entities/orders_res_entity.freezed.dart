// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrdersResEntity {

 List<OrderEntity> get orders; MetaEntity get meta;
/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersResEntityCopyWith<OrdersResEntity> get copyWith => _$OrdersResEntityCopyWithImpl<OrdersResEntity>(this as OrdersResEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersResEntity&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(orders),meta);

@override
String toString() {
  return 'OrdersResEntity(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $OrdersResEntityCopyWith<$Res>  {
  factory $OrdersResEntityCopyWith(OrdersResEntity value, $Res Function(OrdersResEntity) _then) = _$OrdersResEntityCopyWithImpl;
@useResult
$Res call({
 List<OrderEntity> orders, MetaEntity meta
});


$MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class _$OrdersResEntityCopyWithImpl<$Res>
    implements $OrdersResEntityCopyWith<$Res> {
  _$OrdersResEntityCopyWithImpl(this._self, this._then);

  final OrdersResEntity _self;
  final $Res Function(OrdersResEntity) _then;

/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orders = null,Object? meta = null,}) {
  return _then(_self.copyWith(
orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}
/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res> get meta {
  
  return $MetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrdersResEntity].
extension OrdersResEntityPatterns on OrdersResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrdersEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OrderEntity> orders,  MetaEntity meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersEntity() when $default != null:
return $default(_that.orders,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OrderEntity> orders,  MetaEntity meta)  $default,) {final _that = this;
switch (_that) {
case _OrdersEntity():
return $default(_that.orders,_that.meta);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OrderEntity> orders,  MetaEntity meta)?  $default,) {final _that = this;
switch (_that) {
case _OrdersEntity() when $default != null:
return $default(_that.orders,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _OrdersEntity extends OrdersResEntity {
  const _OrdersEntity({required final  List<OrderEntity> orders, required this.meta}): _orders = orders,super._();
  

 final  List<OrderEntity> _orders;
@override List<OrderEntity> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}

@override final  MetaEntity meta;

/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersEntityCopyWith<_OrdersEntity> get copyWith => __$OrdersEntityCopyWithImpl<_OrdersEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersEntity&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders),meta);

@override
String toString() {
  return 'OrdersResEntity(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$OrdersEntityCopyWith<$Res> implements $OrdersResEntityCopyWith<$Res> {
  factory _$OrdersEntityCopyWith(_OrdersEntity value, $Res Function(_OrdersEntity) _then) = __$OrdersEntityCopyWithImpl;
@override @useResult
$Res call({
 List<OrderEntity> orders, MetaEntity meta
});


@override $MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class __$OrdersEntityCopyWithImpl<$Res>
    implements _$OrdersEntityCopyWith<$Res> {
  __$OrdersEntityCopyWithImpl(this._self, this._then);

  final _OrdersEntity _self;
  final $Res Function(_OrdersEntity) _then;

/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orders = null,Object? meta = null,}) {
  return _then(_OrdersEntity(
orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}

/// Create a copy of OrdersResEntity
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
mixin _$OrderEntity {

 int get id; int get sallaOrderId; List<SallaOrderItemEntity> get sallaOrderItemUnits;
/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<OrderEntity> get copyWith => _$OrderEntityCopyWithImpl<OrderEntity>(this as OrderEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.sallaOrderId, sallaOrderId) || other.sallaOrderId == sallaOrderId)&&const DeepCollectionEquality().equals(other.sallaOrderItemUnits, sallaOrderItemUnits));
}


@override
int get hashCode => Object.hash(runtimeType,id,sallaOrderId,const DeepCollectionEquality().hash(sallaOrderItemUnits));

@override
String toString() {
  return 'OrderEntity(id: $id, sallaOrderId: $sallaOrderId, sallaOrderItemUnits: $sallaOrderItemUnits)';
}


}

/// @nodoc
abstract mixin class $OrderEntityCopyWith<$Res>  {
  factory $OrderEntityCopyWith(OrderEntity value, $Res Function(OrderEntity) _then) = _$OrderEntityCopyWithImpl;
@useResult
$Res call({
 int id, int sallaOrderId, List<SallaOrderItemEntity> sallaOrderItemUnits
});




}
/// @nodoc
class _$OrderEntityCopyWithImpl<$Res>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._self, this._then);

  final OrderEntity _self;
  final $Res Function(OrderEntity) _then;

/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sallaOrderId = null,Object? sallaOrderItemUnits = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sallaOrderId: null == sallaOrderId ? _self.sallaOrderId : sallaOrderId // ignore: cast_nullable_to_non_nullable
as int,sallaOrderItemUnits: null == sallaOrderItemUnits ? _self.sallaOrderItemUnits : sallaOrderItemUnits // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderEntity].
extension OrderEntityPatterns on OrderEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrderEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int sallaOrderId,  List<SallaOrderItemEntity> sallaOrderItemUnits)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.sallaOrderId,_that.sallaOrderItemUnits);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int sallaOrderId,  List<SallaOrderItemEntity> sallaOrderItemUnits)  $default,) {final _that = this;
switch (_that) {
case _OrderEntity():
return $default(_that.id,_that.sallaOrderId,_that.sallaOrderItemUnits);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int sallaOrderId,  List<SallaOrderItemEntity> sallaOrderItemUnits)?  $default,) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.sallaOrderId,_that.sallaOrderItemUnits);case _:
  return null;

}
}

}

/// @nodoc


class _OrderEntity extends OrderEntity {
  const _OrderEntity({required this.id, required this.sallaOrderId, required final  List<SallaOrderItemEntity> sallaOrderItemUnits}): _sallaOrderItemUnits = sallaOrderItemUnits,super._();
  

@override final  int id;
@override final  int sallaOrderId;
 final  List<SallaOrderItemEntity> _sallaOrderItemUnits;
@override List<SallaOrderItemEntity> get sallaOrderItemUnits {
  if (_sallaOrderItemUnits is EqualUnmodifiableListView) return _sallaOrderItemUnits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sallaOrderItemUnits);
}


/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderEntityCopyWith<_OrderEntity> get copyWith => __$OrderEntityCopyWithImpl<_OrderEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.sallaOrderId, sallaOrderId) || other.sallaOrderId == sallaOrderId)&&const DeepCollectionEquality().equals(other._sallaOrderItemUnits, _sallaOrderItemUnits));
}


@override
int get hashCode => Object.hash(runtimeType,id,sallaOrderId,const DeepCollectionEquality().hash(_sallaOrderItemUnits));

@override
String toString() {
  return 'OrderEntity(id: $id, sallaOrderId: $sallaOrderId, sallaOrderItemUnits: $sallaOrderItemUnits)';
}


}

/// @nodoc
abstract mixin class _$OrderEntityCopyWith<$Res> implements $OrderEntityCopyWith<$Res> {
  factory _$OrderEntityCopyWith(_OrderEntity value, $Res Function(_OrderEntity) _then) = __$OrderEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int sallaOrderId, List<SallaOrderItemEntity> sallaOrderItemUnits
});




}
/// @nodoc
class __$OrderEntityCopyWithImpl<$Res>
    implements _$OrderEntityCopyWith<$Res> {
  __$OrderEntityCopyWithImpl(this._self, this._then);

  final _OrderEntity _self;
  final $Res Function(_OrderEntity) _then;

/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sallaOrderId = null,Object? sallaOrderItemUnits = null,}) {
  return _then(_OrderEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sallaOrderId: null == sallaOrderId ? _self.sallaOrderId : sallaOrderId // ignore: cast_nullable_to_non_nullable
as int,sallaOrderItemUnits: null == sallaOrderItemUnits ? _self._sallaOrderItemUnits : sallaOrderItemUnits // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemEntity>,
  ));
}


}

// dart format on
