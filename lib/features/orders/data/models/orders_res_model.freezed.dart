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
mixin _$OrdersResModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'orders') List<OrderModel>? get orders;@JsonKey(name: 'meta') MetaModel? get meta;
/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersResModelCopyWith<OrdersResModel> get copyWith => _$OrdersResModelCopyWithImpl<OrdersResModel>(this as OrdersResModel, _$identity);

  /// Serializes this OrdersResModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrdersResModel'))
    ..add(DiagnosticsProperty('orders', orders))..add(DiagnosticsProperty('meta', meta));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersResModel&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(orders),meta);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrdersResModel(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $OrdersResModelCopyWith<$Res>  {
  factory $OrdersResModelCopyWith(OrdersResModel value, $Res Function(OrdersResModel) _then) = _$OrdersResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'orders') List<OrderModel>? orders,@JsonKey(name: 'meta') MetaModel? meta
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
as List<OrderModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'orders')  List<OrderModel>? orders, @JsonKey(name: 'meta')  MetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'orders')  List<OrderModel>? orders, @JsonKey(name: 'meta')  MetaModel? meta)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'orders')  List<OrderModel>? orders, @JsonKey(name: 'meta')  MetaModel? meta)?  $default,) {final _that = this;
switch (_that) {
case _OrdersResModel() when $default != null:
return $default(_that.orders,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrdersResModel with DiagnosticableTreeMixin implements OrdersResModel {
  const _OrdersResModel({@JsonKey(name: 'orders') final  List<OrderModel>? orders, @JsonKey(name: 'meta') this.meta}): _orders = orders;
  factory _OrdersResModel.fromJson(Map<String, dynamic> json) => _$OrdersResModelFromJson(json);

 final  List<OrderModel>? _orders;
@override@JsonKey(name: 'orders') List<OrderModel>? get orders {
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
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrdersResModel'))
    ..add(DiagnosticsProperty('orders', orders))..add(DiagnosticsProperty('meta', meta));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersResModel&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders),meta);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrdersResModel(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$OrdersResModelCopyWith<$Res> implements $OrdersResModelCopyWith<$Res> {
  factory _$OrdersResModelCopyWith(_OrdersResModel value, $Res Function(_OrdersResModel) _then) = __$OrdersResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'orders') List<OrderModel>? orders,@JsonKey(name: 'meta') MetaModel? meta
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
as List<OrderModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
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
mixin _$OrderModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'salla_order_id') int? get sallaOrderId;@JsonKey(name: 'salla_product_id') int? get sallaProductId;@JsonKey(name: 'printed_name') String? get printedName;@JsonKey(name: 'docs') List<DocModel>? get docs;
/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderModelCopyWith<OrderModel> get copyWith => _$OrderModelCopyWithImpl<OrderModel>(this as OrderModel, _$identity);

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('sallaOrderId', sallaOrderId))..add(DiagnosticsProperty('sallaProductId', sallaProductId))..add(DiagnosticsProperty('printedName', printedName))..add(DiagnosticsProperty('docs', docs));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sallaOrderId, sallaOrderId) || other.sallaOrderId == sallaOrderId)&&(identical(other.sallaProductId, sallaProductId) || other.sallaProductId == sallaProductId)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&const DeepCollectionEquality().equals(other.docs, docs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sallaOrderId,sallaProductId,printedName,const DeepCollectionEquality().hash(docs));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderModel(id: $id, sallaOrderId: $sallaOrderId, sallaProductId: $sallaProductId, printedName: $printedName, docs: $docs)';
}


}

/// @nodoc
abstract mixin class $OrderModelCopyWith<$Res>  {
  factory $OrderModelCopyWith(OrderModel value, $Res Function(OrderModel) _then) = _$OrderModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'salla_order_id') int? sallaOrderId,@JsonKey(name: 'salla_product_id') int? sallaProductId,@JsonKey(name: 'printed_name') String? printedName,@JsonKey(name: 'docs') List<DocModel>? docs
});




}
/// @nodoc
class _$OrderModelCopyWithImpl<$Res>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._self, this._then);

  final OrderModel _self;
  final $Res Function(OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? sallaOrderId = freezed,Object? sallaProductId = freezed,Object? printedName = freezed,Object? docs = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,sallaOrderId: freezed == sallaOrderId ? _self.sallaOrderId : sallaOrderId // ignore: cast_nullable_to_non_nullable
as int?,sallaProductId: freezed == sallaProductId ? _self.sallaProductId : sallaProductId // ignore: cast_nullable_to_non_nullable
as int?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,docs: freezed == docs ? _self.docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderModel].
extension OrderModelPatterns on OrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'salla_order_id')  int? sallaOrderId, @JsonKey(name: 'salla_product_id')  int? sallaProductId, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'docs')  List<DocModel>? docs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.sallaOrderId,_that.sallaProductId,_that.printedName,_that.docs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'salla_order_id')  int? sallaOrderId, @JsonKey(name: 'salla_product_id')  int? sallaProductId, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'docs')  List<DocModel>? docs)  $default,) {final _that = this;
switch (_that) {
case _OrderModel():
return $default(_that.id,_that.sallaOrderId,_that.sallaProductId,_that.printedName,_that.docs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'salla_order_id')  int? sallaOrderId, @JsonKey(name: 'salla_product_id')  int? sallaProductId, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'docs')  List<DocModel>? docs)?  $default,) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.sallaOrderId,_that.sallaProductId,_that.printedName,_that.docs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderModel with DiagnosticableTreeMixin implements OrderModel {
  const _OrderModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'salla_order_id') this.sallaOrderId, @JsonKey(name: 'salla_product_id') this.sallaProductId, @JsonKey(name: 'printed_name') this.printedName, @JsonKey(name: 'docs') final  List<DocModel>? docs}): _docs = docs;
  factory _OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'salla_order_id') final  int? sallaOrderId;
@override@JsonKey(name: 'salla_product_id') final  int? sallaProductId;
@override@JsonKey(name: 'printed_name') final  String? printedName;
 final  List<DocModel>? _docs;
@override@JsonKey(name: 'docs') List<DocModel>? get docs {
  final value = _docs;
  if (value == null) return null;
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderModelCopyWith<_OrderModel> get copyWith => __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('sallaOrderId', sallaOrderId))..add(DiagnosticsProperty('sallaProductId', sallaProductId))..add(DiagnosticsProperty('printedName', printedName))..add(DiagnosticsProperty('docs', docs));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sallaOrderId, sallaOrderId) || other.sallaOrderId == sallaOrderId)&&(identical(other.sallaProductId, sallaProductId) || other.sallaProductId == sallaProductId)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&const DeepCollectionEquality().equals(other._docs, _docs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sallaOrderId,sallaProductId,printedName,const DeepCollectionEquality().hash(_docs));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderModel(id: $id, sallaOrderId: $sallaOrderId, sallaProductId: $sallaProductId, printedName: $printedName, docs: $docs)';
}


}

/// @nodoc
abstract mixin class _$OrderModelCopyWith<$Res> implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(_OrderModel value, $Res Function(_OrderModel) _then) = __$OrderModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'salla_order_id') int? sallaOrderId,@JsonKey(name: 'salla_product_id') int? sallaProductId,@JsonKey(name: 'printed_name') String? printedName,@JsonKey(name: 'docs') List<DocModel>? docs
});




}
/// @nodoc
class __$OrderModelCopyWithImpl<$Res>
    implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(this._self, this._then);

  final _OrderModel _self;
  final $Res Function(_OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? sallaOrderId = freezed,Object? sallaProductId = freezed,Object? printedName = freezed,Object? docs = freezed,}) {
  return _then(_OrderModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,sallaOrderId: freezed == sallaOrderId ? _self.sallaOrderId : sallaOrderId // ignore: cast_nullable_to_non_nullable
as int?,sallaProductId: freezed == sallaProductId ? _self.sallaProductId : sallaProductId // ignore: cast_nullable_to_non_nullable
as int?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,docs: freezed == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocModel>?,
  ));
}


}

// dart format on
