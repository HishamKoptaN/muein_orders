// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrdersResModel {

@JsonKey(name: 'orders') List<Order>? get orders;@JsonKey(name: 'meta') MetaModel? get meta;
/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersResModelCopyWith<OrdersResModel> get copyWith => _$OrdersResModelCopyWithImpl<OrdersResModel>(this as OrdersResModel, _$identity);

  /// Serializes this OrdersResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersResModel&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(orders),meta);

@override
String toString() {
  return 'OrdersResModel(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $OrdersResModelCopyWith<$Res>  {
  factory $OrdersResModelCopyWith(OrdersResModel value, $Res Function(OrdersResModel) _then) = _$OrdersResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'orders') List<Order>? orders,@JsonKey(name: 'meta') MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$OrdersResModelCopyWithImpl<$Res>
    implements $OrdersResModelCopyWith<$Res> {
  _$OrdersResModelCopyWithImpl(this._self, this._then);

  final OrdersResModel _self;
  final $Res Function(OrdersResModel) _then;

/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orders = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
orders: freezed == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<Order>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}
/// Create a copy of OrdersResModel
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


/// Adds pattern-matching-related methods to [OrdersResModel].
extension OrdersResModelPatterns on OrdersResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersResModel value)  $default,){
final _that = this;
switch (_that) {
case _OrdersResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersResModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'orders')  List<Order>? orders, @JsonKey(name: 'meta')  MetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersResModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'orders')  List<Order>? orders, @JsonKey(name: 'meta')  MetaModel? meta)  $default,) {final _that = this;
switch (_that) {
case _OrdersResModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'orders')  List<Order>? orders, @JsonKey(name: 'meta')  MetaModel? meta)?  $default,) {final _that = this;
switch (_that) {
case _OrdersResModel() when $default != null:
return $default(_that.orders,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrdersResModel implements OrdersResModel {
  const _OrdersResModel({@JsonKey(name: 'orders') final  List<Order>? orders, @JsonKey(name: 'meta') this.meta}): _orders = orders;
  factory _OrdersResModel.fromJson(Map<String, dynamic> json) => _$OrdersResModelFromJson(json);

 final  List<Order>? _orders;
@override@JsonKey(name: 'orders') List<Order>? get orders {
  final value = _orders;
  if (value == null) return null;
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'meta') final  MetaModel? meta;

/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersResModelCopyWith<_OrdersResModel> get copyWith => __$OrdersResModelCopyWithImpl<_OrdersResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrdersResModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersResModel&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders),meta);

@override
String toString() {
  return 'OrdersResModel(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$OrdersResModelCopyWith<$Res> implements $OrdersResModelCopyWith<$Res> {
  factory _$OrdersResModelCopyWith(_OrdersResModel value, $Res Function(_OrdersResModel) _then) = __$OrdersResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'orders') List<Order>? orders,@JsonKey(name: 'meta') MetaModel? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$OrdersResModelCopyWithImpl<$Res>
    implements _$OrdersResModelCopyWith<$Res> {
  __$OrdersResModelCopyWithImpl(this._self, this._then);

  final _OrdersResModel _self;
  final $Res Function(_OrdersResModel) _then;

/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orders = freezed,Object? meta = freezed,}) {
  return _then(_OrdersResModel(
orders: freezed == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<Order>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

/// Create a copy of OrdersResModel
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
mixin _$Order {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'printed_name') String? get printedName;@JsonKey(name: 'docs') List<dynamic>? get docs;@JsonKey(name: 'distribution_country') DistributionCountry? get distributionCountry;@JsonKey(name: 'date') DateTime? get date;@JsonKey(name: 'days') int? get days;@JsonKey(name: 'is_quran_photographed') bool? get isQuranPhotographed;@JsonKey(name: 'is_distribution_photographed') bool? get isDistributionPhotographed;@JsonKey(name: 'sticker_prepared') bool? get stickerPrepared;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, id) || other.id == id)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&const DeepCollectionEquality().equals(other.docs, docs)&&(identical(other.distributionCountry, distributionCountry) || other.distributionCountry == distributionCountry)&&(identical(other.date, date) || other.date == date)&&(identical(other.days, days) || other.days == days)&&(identical(other.isQuranPhotographed, isQuranPhotographed) || other.isQuranPhotographed == isQuranPhotographed)&&(identical(other.isDistributionPhotographed, isDistributionPhotographed) || other.isDistributionPhotographed == isDistributionPhotographed)&&(identical(other.stickerPrepared, stickerPrepared) || other.stickerPrepared == stickerPrepared)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,printedName,const DeepCollectionEquality().hash(docs),distributionCountry,date,days,isQuranPhotographed,isDistributionPhotographed,stickerPrepared,createdAt);

@override
String toString() {
  return 'Order(id: $id, printedName: $printedName, docs: $docs, distributionCountry: $distributionCountry, date: $date, days: $days, isQuranPhotographed: $isQuranPhotographed, isDistributionPhotographed: $isDistributionPhotographed, stickerPrepared: $stickerPrepared, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'printed_name') String? printedName,@JsonKey(name: 'docs') List<dynamic>? docs,@JsonKey(name: 'distribution_country') DistributionCountry? distributionCountry,@JsonKey(name: 'date') DateTime? date,@JsonKey(name: 'days') int? days,@JsonKey(name: 'is_quran_photographed') bool? isQuranPhotographed,@JsonKey(name: 'is_distribution_photographed') bool? isDistributionPhotographed,@JsonKey(name: 'sticker_prepared') bool? stickerPrepared,@JsonKey(name: 'created_at') String? createdAt
});


$DistributionCountryCopyWith<$Res>? get distributionCountry;

}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? printedName = freezed,Object? docs = freezed,Object? distributionCountry = freezed,Object? date = freezed,Object? days = freezed,Object? isQuranPhotographed = freezed,Object? isDistributionPhotographed = freezed,Object? stickerPrepared = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,docs: freezed == docs ? _self.docs : docs // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,distributionCountry: freezed == distributionCountry ? _self.distributionCountry : distributionCountry // ignore: cast_nullable_to_non_nullable
as DistributionCountry?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int?,isQuranPhotographed: freezed == isQuranPhotographed ? _self.isQuranPhotographed : isQuranPhotographed // ignore: cast_nullable_to_non_nullable
as bool?,isDistributionPhotographed: freezed == isDistributionPhotographed ? _self.isDistributionPhotographed : isDistributionPhotographed // ignore: cast_nullable_to_non_nullable
as bool?,stickerPrepared: freezed == stickerPrepared ? _self.stickerPrepared : stickerPrepared // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistributionCountryCopyWith<$Res>? get distributionCountry {
    if (_self.distributionCountry == null) {
    return null;
  }

  return $DistributionCountryCopyWith<$Res>(_self.distributionCountry!, (value) {
    return _then(_self.copyWith(distributionCountry: value));
  });
}
}


/// Adds pattern-matching-related methods to [Order].
extension OrderPatterns on Order {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Order value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Order value)  $default,){
final _that = this;
switch (_that) {
case _Order():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Order value)?  $default,){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'docs')  List<dynamic>? docs, @JsonKey(name: 'distribution_country')  DistributionCountry? distributionCountry, @JsonKey(name: 'date')  DateTime? date, @JsonKey(name: 'days')  int? days, @JsonKey(name: 'is_quran_photographed')  bool? isQuranPhotographed, @JsonKey(name: 'is_distribution_photographed')  bool? isDistributionPhotographed, @JsonKey(name: 'sticker_prepared')  bool? stickerPrepared, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.printedName,_that.docs,_that.distributionCountry,_that.date,_that.days,_that.isQuranPhotographed,_that.isDistributionPhotographed,_that.stickerPrepared,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'docs')  List<dynamic>? docs, @JsonKey(name: 'distribution_country')  DistributionCountry? distributionCountry, @JsonKey(name: 'date')  DateTime? date, @JsonKey(name: 'days')  int? days, @JsonKey(name: 'is_quran_photographed')  bool? isQuranPhotographed, @JsonKey(name: 'is_distribution_photographed')  bool? isDistributionPhotographed, @JsonKey(name: 'sticker_prepared')  bool? stickerPrepared, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Order():
return $default(_that.id,_that.printedName,_that.docs,_that.distributionCountry,_that.date,_that.days,_that.isQuranPhotographed,_that.isDistributionPhotographed,_that.stickerPrepared,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'docs')  List<dynamic>? docs, @JsonKey(name: 'distribution_country')  DistributionCountry? distributionCountry, @JsonKey(name: 'date')  DateTime? date, @JsonKey(name: 'days')  int? days, @JsonKey(name: 'is_quran_photographed')  bool? isQuranPhotographed, @JsonKey(name: 'is_distribution_photographed')  bool? isDistributionPhotographed, @JsonKey(name: 'sticker_prepared')  bool? stickerPrepared, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.printedName,_that.docs,_that.distributionCountry,_that.date,_that.days,_that.isQuranPhotographed,_that.isDistributionPhotographed,_that.stickerPrepared,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Order implements Order {
  const _Order({@JsonKey(name: 'id') this.id, @JsonKey(name: 'printed_name') this.printedName, @JsonKey(name: 'docs') final  List<dynamic>? docs, @JsonKey(name: 'distribution_country') this.distributionCountry, @JsonKey(name: 'date') this.date, @JsonKey(name: 'days') this.days, @JsonKey(name: 'is_quran_photographed') this.isQuranPhotographed, @JsonKey(name: 'is_distribution_photographed') this.isDistributionPhotographed, @JsonKey(name: 'sticker_prepared') this.stickerPrepared, @JsonKey(name: 'created_at') this.createdAt}): _docs = docs;
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'printed_name') final  String? printedName;
 final  List<dynamic>? _docs;
@override@JsonKey(name: 'docs') List<dynamic>? get docs {
  final value = _docs;
  if (value == null) return null;
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'distribution_country') final  DistributionCountry? distributionCountry;
@override@JsonKey(name: 'date') final  DateTime? date;
@override@JsonKey(name: 'days') final  int? days;
@override@JsonKey(name: 'is_quran_photographed') final  bool? isQuranPhotographed;
@override@JsonKey(name: 'is_distribution_photographed') final  bool? isDistributionPhotographed;
@override@JsonKey(name: 'sticker_prepared') final  bool? stickerPrepared;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.id, id) || other.id == id)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&const DeepCollectionEquality().equals(other._docs, _docs)&&(identical(other.distributionCountry, distributionCountry) || other.distributionCountry == distributionCountry)&&(identical(other.date, date) || other.date == date)&&(identical(other.days, days) || other.days == days)&&(identical(other.isQuranPhotographed, isQuranPhotographed) || other.isQuranPhotographed == isQuranPhotographed)&&(identical(other.isDistributionPhotographed, isDistributionPhotographed) || other.isDistributionPhotographed == isDistributionPhotographed)&&(identical(other.stickerPrepared, stickerPrepared) || other.stickerPrepared == stickerPrepared)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,printedName,const DeepCollectionEquality().hash(_docs),distributionCountry,date,days,isQuranPhotographed,isDistributionPhotographed,stickerPrepared,createdAt);

@override
String toString() {
  return 'Order(id: $id, printedName: $printedName, docs: $docs, distributionCountry: $distributionCountry, date: $date, days: $days, isQuranPhotographed: $isQuranPhotographed, isDistributionPhotographed: $isDistributionPhotographed, stickerPrepared: $stickerPrepared, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'printed_name') String? printedName,@JsonKey(name: 'docs') List<dynamic>? docs,@JsonKey(name: 'distribution_country') DistributionCountry? distributionCountry,@JsonKey(name: 'date') DateTime? date,@JsonKey(name: 'days') int? days,@JsonKey(name: 'is_quran_photographed') bool? isQuranPhotographed,@JsonKey(name: 'is_distribution_photographed') bool? isDistributionPhotographed,@JsonKey(name: 'sticker_prepared') bool? stickerPrepared,@JsonKey(name: 'created_at') String? createdAt
});


@override $DistributionCountryCopyWith<$Res>? get distributionCountry;

}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? printedName = freezed,Object? docs = freezed,Object? distributionCountry = freezed,Object? date = freezed,Object? days = freezed,Object? isQuranPhotographed = freezed,Object? isDistributionPhotographed = freezed,Object? stickerPrepared = freezed,Object? createdAt = freezed,}) {
  return _then(_Order(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,docs: freezed == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,distributionCountry: freezed == distributionCountry ? _self.distributionCountry : distributionCountry // ignore: cast_nullable_to_non_nullable
as DistributionCountry?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int?,isQuranPhotographed: freezed == isQuranPhotographed ? _self.isQuranPhotographed : isQuranPhotographed // ignore: cast_nullable_to_non_nullable
as bool?,isDistributionPhotographed: freezed == isDistributionPhotographed ? _self.isDistributionPhotographed : isDistributionPhotographed // ignore: cast_nullable_to_non_nullable
as bool?,stickerPrepared: freezed == stickerPrepared ? _self.stickerPrepared : stickerPrepared // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistributionCountryCopyWith<$Res>? get distributionCountry {
    if (_self.distributionCountry == null) {
    return null;
  }

  return $DistributionCountryCopyWith<$Res>(_self.distributionCountry!, (value) {
    return _then(_self.copyWith(distributionCountry: value));
  });
}
}


/// @nodoc
mixin _$DistributionCountry {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'code') String? get code;
/// Create a copy of DistributionCountry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DistributionCountryCopyWith<DistributionCountry> get copyWith => _$DistributionCountryCopyWithImpl<DistributionCountry>(this as DistributionCountry, _$identity);

  /// Serializes this DistributionCountry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DistributionCountry&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code);

@override
String toString() {
  return 'DistributionCountry(id: $id, code: $code)';
}


}

/// @nodoc
abstract mixin class $DistributionCountryCopyWith<$Res>  {
  factory $DistributionCountryCopyWith(DistributionCountry value, $Res Function(DistributionCountry) _then) = _$DistributionCountryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'code') String? code
});




}
/// @nodoc
class _$DistributionCountryCopyWithImpl<$Res>
    implements $DistributionCountryCopyWith<$Res> {
  _$DistributionCountryCopyWithImpl(this._self, this._then);

  final DistributionCountry _self;
  final $Res Function(DistributionCountry) _then;

/// Create a copy of DistributionCountry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DistributionCountry].
extension DistributionCountryPatterns on DistributionCountry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DistributionCountry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DistributionCountry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DistributionCountry value)  $default,){
final _that = this;
switch (_that) {
case _DistributionCountry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DistributionCountry value)?  $default,){
final _that = this;
switch (_that) {
case _DistributionCountry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'code')  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DistributionCountry() when $default != null:
return $default(_that.id,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'code')  String? code)  $default,) {final _that = this;
switch (_that) {
case _DistributionCountry():
return $default(_that.id,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'code')  String? code)?  $default,) {final _that = this;
switch (_that) {
case _DistributionCountry() when $default != null:
return $default(_that.id,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DistributionCountry implements DistributionCountry {
  const _DistributionCountry({@JsonKey(name: 'id') this.id, @JsonKey(name: 'code') this.code});
  factory _DistributionCountry.fromJson(Map<String, dynamic> json) => _$DistributionCountryFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'code') final  String? code;

/// Create a copy of DistributionCountry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DistributionCountryCopyWith<_DistributionCountry> get copyWith => __$DistributionCountryCopyWithImpl<_DistributionCountry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DistributionCountryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DistributionCountry&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code);

@override
String toString() {
  return 'DistributionCountry(id: $id, code: $code)';
}


}

/// @nodoc
abstract mixin class _$DistributionCountryCopyWith<$Res> implements $DistributionCountryCopyWith<$Res> {
  factory _$DistributionCountryCopyWith(_DistributionCountry value, $Res Function(_DistributionCountry) _then) = __$DistributionCountryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'code') String? code
});




}
/// @nodoc
class __$DistributionCountryCopyWithImpl<$Res>
    implements _$DistributionCountryCopyWith<$Res> {
  __$DistributionCountryCopyWithImpl(this._self, this._then);

  final _DistributionCountry _self;
  final $Res Function(_DistributionCountry) _then;

/// Create a copy of DistributionCountry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? code = freezed,}) {
  return _then(_DistributionCountry(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Package {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'type') dynamic get type;@JsonKey(name: 'quantity') int? get quantity;
/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageCopyWith<Package> get copyWith => _$PackageCopyWithImpl<Package>(this as Package, _$identity);

  /// Serializes this Package to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Package&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.type, type)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(type),quantity);

@override
String toString() {
  return 'Package(id: $id, type: $type, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $PackageCopyWith<$Res>  {
  factory $PackageCopyWith(Package value, $Res Function(Package) _then) = _$PackageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'type') dynamic type,@JsonKey(name: 'quantity') int? quantity
});




}
/// @nodoc
class _$PackageCopyWithImpl<$Res>
    implements $PackageCopyWith<$Res> {
  _$PackageCopyWithImpl(this._self, this._then);

  final Package _self;
  final $Res Function(Package) _then;

/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? quantity = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as dynamic,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Package].
extension PackagePatterns on Package {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Package value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Package() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Package value)  $default,){
final _that = this;
switch (_that) {
case _Package():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Package value)?  $default,){
final _that = this;
switch (_that) {
case _Package() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'type')  dynamic type, @JsonKey(name: 'quantity')  int? quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Package() when $default != null:
return $default(_that.id,_that.type,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'type')  dynamic type, @JsonKey(name: 'quantity')  int? quantity)  $default,) {final _that = this;
switch (_that) {
case _Package():
return $default(_that.id,_that.type,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'type')  dynamic type, @JsonKey(name: 'quantity')  int? quantity)?  $default,) {final _that = this;
switch (_that) {
case _Package() when $default != null:
return $default(_that.id,_that.type,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Package implements Package {
  const _Package({@JsonKey(name: 'id') this.id, @JsonKey(name: 'type') this.type, @JsonKey(name: 'quantity') this.quantity});
  factory _Package.fromJson(Map<String, dynamic> json) => _$PackageFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'type') final  dynamic type;
@override@JsonKey(name: 'quantity') final  int? quantity;

/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageCopyWith<_Package> get copyWith => __$PackageCopyWithImpl<_Package>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Package&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.type, type)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(type),quantity);

@override
String toString() {
  return 'Package(id: $id, type: $type, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$PackageCopyWith<$Res> implements $PackageCopyWith<$Res> {
  factory _$PackageCopyWith(_Package value, $Res Function(_Package) _then) = __$PackageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'type') dynamic type,@JsonKey(name: 'quantity') int? quantity
});




}
/// @nodoc
class __$PackageCopyWithImpl<$Res>
    implements _$PackageCopyWith<$Res> {
  __$PackageCopyWithImpl(this._self, this._then);

  final _Package _self;
  final $Res Function(_Package) _then;

/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? quantity = freezed,}) {
  return _then(_Package(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as dynamic,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
