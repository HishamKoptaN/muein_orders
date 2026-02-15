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

 List<OrderEntity>? get orders; MetaEntity? get meta;
/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersResEntityCopyWith<OrdersResEntity> get copyWith => _$OrdersResEntityCopyWithImpl<OrdersResEntity>(this as OrdersResEntity, _$identity);

  /// Serializes this OrdersResEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersResEntity&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
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
 List<OrderEntity>? orders, MetaEntity? meta
});


$MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class _$OrdersResEntityCopyWithImpl<$Res>
    implements $OrdersResEntityCopyWith<$Res> {
  _$OrdersResEntityCopyWithImpl(this._self, this._then);

  final OrdersResEntity _self;
  final $Res Function(OrdersResEntity) _then;

/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orders = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
orders: freezed == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}
/// Create a copy of OrdersResEntity
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersResEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrdersResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OrderEntity>? orders,  MetaEntity? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersResEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OrderEntity>? orders,  MetaEntity? meta)  $default,) {final _that = this;
switch (_that) {
case _OrdersResEntity():
return $default(_that.orders,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OrderEntity>? orders,  MetaEntity? meta)?  $default,) {final _that = this;
switch (_that) {
case _OrdersResEntity() when $default != null:
return $default(_that.orders,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrdersResEntity implements OrdersResEntity {
  const _OrdersResEntity({required final  List<OrderEntity>? orders, required this.meta}): _orders = orders;
  factory _OrdersResEntity.fromJson(Map<String, dynamic> json) => _$OrdersResEntityFromJson(json);

 final  List<OrderEntity>? _orders;
@override List<OrderEntity>? get orders {
  final value = _orders;
  if (value == null) return null;
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaEntity? meta;

/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersResEntityCopyWith<_OrdersResEntity> get copyWith => __$OrdersResEntityCopyWithImpl<_OrdersResEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrdersResEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersResEntity&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders),meta);

@override
String toString() {
  return 'OrdersResEntity(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$OrdersResEntityCopyWith<$Res> implements $OrdersResEntityCopyWith<$Res> {
  factory _$OrdersResEntityCopyWith(_OrdersResEntity value, $Res Function(_OrdersResEntity) _then) = __$OrdersResEntityCopyWithImpl;
@override @useResult
$Res call({
 List<OrderEntity>? orders, MetaEntity? meta
});


@override $MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class __$OrdersResEntityCopyWithImpl<$Res>
    implements _$OrdersResEntityCopyWith<$Res> {
  __$OrdersResEntityCopyWithImpl(this._self, this._then);

  final _OrdersResEntity _self;
  final $Res Function(_OrdersResEntity) _then;

/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orders = freezed,Object? meta = freezed,}) {
  return _then(_OrdersResEntity(
orders: freezed == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}

/// Create a copy of OrdersResEntity
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
mixin _$OrderEntity {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'printed_name') String? get printedName;@JsonKey(name: 'salla_order_id') String? get sallaOrderId;@JsonKey(name: 'is_quran_photographed') bool? get isQuranPhotographed;@JsonKey(name: 'is_distribution_photographed') bool? get isDistributionPhotographed;
/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<OrderEntity> get copyWith => _$OrderEntityCopyWithImpl<OrderEntity>(this as OrderEntity, _$identity);

  /// Serializes this OrderEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&(identical(other.sallaOrderId, sallaOrderId) || other.sallaOrderId == sallaOrderId)&&(identical(other.isQuranPhotographed, isQuranPhotographed) || other.isQuranPhotographed == isQuranPhotographed)&&(identical(other.isDistributionPhotographed, isDistributionPhotographed) || other.isDistributionPhotographed == isDistributionPhotographed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,printedName,sallaOrderId,isQuranPhotographed,isDistributionPhotographed);

@override
String toString() {
  return 'OrderEntity(id: $id, printedName: $printedName, sallaOrderId: $sallaOrderId, isQuranPhotographed: $isQuranPhotographed, isDistributionPhotographed: $isDistributionPhotographed)';
}


}

/// @nodoc
abstract mixin class $OrderEntityCopyWith<$Res>  {
  factory $OrderEntityCopyWith(OrderEntity value, $Res Function(OrderEntity) _then) = _$OrderEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'printed_name') String? printedName,@JsonKey(name: 'salla_order_id') String? sallaOrderId,@JsonKey(name: 'is_quran_photographed') bool? isQuranPhotographed,@JsonKey(name: 'is_distribution_photographed') bool? isDistributionPhotographed
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? printedName = freezed,Object? sallaOrderId = freezed,Object? isQuranPhotographed = freezed,Object? isDistributionPhotographed = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,sallaOrderId: freezed == sallaOrderId ? _self.sallaOrderId : sallaOrderId // ignore: cast_nullable_to_non_nullable
as String?,isQuranPhotographed: freezed == isQuranPhotographed ? _self.isQuranPhotographed : isQuranPhotographed // ignore: cast_nullable_to_non_nullable
as bool?,isDistributionPhotographed: freezed == isDistributionPhotographed ? _self.isDistributionPhotographed : isDistributionPhotographed // ignore: cast_nullable_to_non_nullable
as bool?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'salla_order_id')  String? sallaOrderId, @JsonKey(name: 'is_quran_photographed')  bool? isQuranPhotographed, @JsonKey(name: 'is_distribution_photographed')  bool? isDistributionPhotographed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.printedName,_that.sallaOrderId,_that.isQuranPhotographed,_that.isDistributionPhotographed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'salla_order_id')  String? sallaOrderId, @JsonKey(name: 'is_quran_photographed')  bool? isQuranPhotographed, @JsonKey(name: 'is_distribution_photographed')  bool? isDistributionPhotographed)  $default,) {final _that = this;
switch (_that) {
case _OrderEntity():
return $default(_that.id,_that.printedName,_that.sallaOrderId,_that.isQuranPhotographed,_that.isDistributionPhotographed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'salla_order_id')  String? sallaOrderId, @JsonKey(name: 'is_quran_photographed')  bool? isQuranPhotographed, @JsonKey(name: 'is_distribution_photographed')  bool? isDistributionPhotographed)?  $default,) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.printedName,_that.sallaOrderId,_that.isQuranPhotographed,_that.isDistributionPhotographed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderEntity implements OrderEntity {
  const _OrderEntity({@JsonKey(name: 'id') this.id, @JsonKey(name: 'printed_name') this.printedName, @JsonKey(name: 'salla_order_id') this.sallaOrderId, @JsonKey(name: 'is_quran_photographed') this.isQuranPhotographed, @JsonKey(name: 'is_distribution_photographed') this.isDistributionPhotographed});
  factory _OrderEntity.fromJson(Map<String, dynamic> json) => _$OrderEntityFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'printed_name') final  String? printedName;
@override@JsonKey(name: 'salla_order_id') final  String? sallaOrderId;
@override@JsonKey(name: 'is_quran_photographed') final  bool? isQuranPhotographed;
@override@JsonKey(name: 'is_distribution_photographed') final  bool? isDistributionPhotographed;

/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderEntityCopyWith<_OrderEntity> get copyWith => __$OrderEntityCopyWithImpl<_OrderEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&(identical(other.sallaOrderId, sallaOrderId) || other.sallaOrderId == sallaOrderId)&&(identical(other.isQuranPhotographed, isQuranPhotographed) || other.isQuranPhotographed == isQuranPhotographed)&&(identical(other.isDistributionPhotographed, isDistributionPhotographed) || other.isDistributionPhotographed == isDistributionPhotographed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,printedName,sallaOrderId,isQuranPhotographed,isDistributionPhotographed);

@override
String toString() {
  return 'OrderEntity(id: $id, printedName: $printedName, sallaOrderId: $sallaOrderId, isQuranPhotographed: $isQuranPhotographed, isDistributionPhotographed: $isDistributionPhotographed)';
}


}

/// @nodoc
abstract mixin class _$OrderEntityCopyWith<$Res> implements $OrderEntityCopyWith<$Res> {
  factory _$OrderEntityCopyWith(_OrderEntity value, $Res Function(_OrderEntity) _then) = __$OrderEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'printed_name') String? printedName,@JsonKey(name: 'salla_order_id') String? sallaOrderId,@JsonKey(name: 'is_quran_photographed') bool? isQuranPhotographed,@JsonKey(name: 'is_distribution_photographed') bool? isDistributionPhotographed
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? printedName = freezed,Object? sallaOrderId = freezed,Object? isQuranPhotographed = freezed,Object? isDistributionPhotographed = freezed,}) {
  return _then(_OrderEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,sallaOrderId: freezed == sallaOrderId ? _self.sallaOrderId : sallaOrderId // ignore: cast_nullable_to_non_nullable
as String?,isQuranPhotographed: freezed == isQuranPhotographed ? _self.isQuranPhotographed : isQuranPhotographed // ignore: cast_nullable_to_non_nullable
as bool?,isDistributionPhotographed: freezed == isDistributionPhotographed ? _self.isDistributionPhotographed : isDistributionPhotographed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
