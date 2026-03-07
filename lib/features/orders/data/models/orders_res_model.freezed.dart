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




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrdersResModel'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersResModel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrdersResModel()';
}


}

/// @nodoc
class $OrdersResModelCopyWith<$Res>  {
$OrdersResModelCopyWith(OrdersResModel _, $Res Function(OrdersResModel) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OrdersResponse value)?  orders,TResult Function( IndividualDocsResponse value)?  individualDocs,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OrdersResponse() when orders != null:
return orders(_that);case IndividualDocsResponse() when individualDocs != null:
return individualDocs(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OrdersResponse value)  orders,required TResult Function( IndividualDocsResponse value)  individualDocs,}){
final _that = this;
switch (_that) {
case OrdersResponse():
return orders(_that);case IndividualDocsResponse():
return individualDocs(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OrdersResponse value)?  orders,TResult? Function( IndividualDocsResponse value)?  individualDocs,}){
final _that = this;
switch (_that) {
case OrdersResponse() when orders != null:
return orders(_that);case IndividualDocsResponse() when individualDocs != null:
return individualDocs(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@JsonKey(name: 'orders')  List<OrderModel>? orders, @JsonKey(name: 'meta')  MetaModel? meta)?  orders,TResult Function( List<DocModel> docs)?  individualDocs,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OrdersResponse() when orders != null:
return orders(_that.orders,_that.meta);case IndividualDocsResponse() when individualDocs != null:
return individualDocs(_that.docs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@JsonKey(name: 'orders')  List<OrderModel>? orders, @JsonKey(name: 'meta')  MetaModel? meta)  orders,required TResult Function( List<DocModel> docs)  individualDocs,}) {final _that = this;
switch (_that) {
case OrdersResponse():
return orders(_that.orders,_that.meta);case IndividualDocsResponse():
return individualDocs(_that.docs);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@JsonKey(name: 'orders')  List<OrderModel>? orders, @JsonKey(name: 'meta')  MetaModel? meta)?  orders,TResult? Function( List<DocModel> docs)?  individualDocs,}) {final _that = this;
switch (_that) {
case OrdersResponse() when orders != null:
return orders(_that.orders,_that.meta);case IndividualDocsResponse() when individualDocs != null:
return individualDocs(_that.docs);case _:
  return null;

}
}

}

/// @nodoc


class OrdersResponse extends OrdersResModel with DiagnosticableTreeMixin {
  const OrdersResponse({@JsonKey(name: 'orders') final  List<OrderModel>? orders, @JsonKey(name: 'meta') this.meta}): _orders = orders,super._();
  

 final  List<OrderModel>? _orders;
@JsonKey(name: 'orders') List<OrderModel>? get orders {
  final value = _orders;
  if (value == null) return null;
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@JsonKey(name: 'meta') final  MetaModel? meta;

/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersResponseCopyWith<OrdersResponse> get copyWith => _$OrdersResponseCopyWithImpl<OrdersResponse>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrdersResModel.orders'))
    ..add(DiagnosticsProperty('orders', orders))..add(DiagnosticsProperty('meta', meta));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersResponse&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders),meta);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrdersResModel.orders(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $OrdersResponseCopyWith<$Res> implements $OrdersResModelCopyWith<$Res> {
  factory $OrdersResponseCopyWith(OrdersResponse value, $Res Function(OrdersResponse) _then) = _$OrdersResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'orders') List<OrderModel>? orders,@JsonKey(name: 'meta') MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$OrdersResponseCopyWithImpl<$Res>
    implements $OrdersResponseCopyWith<$Res> {
  _$OrdersResponseCopyWithImpl(this._self, this._then);

  final OrdersResponse _self;
  final $Res Function(OrdersResponse) _then;

/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orders = freezed,Object? meta = freezed,}) {
  return _then(OrdersResponse(
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


class IndividualDocsResponse extends OrdersResModel with DiagnosticableTreeMixin {
  const IndividualDocsResponse({required final  List<DocModel> docs}): _docs = docs,super._();
  

 final  List<DocModel> _docs;
 List<DocModel> get docs {
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_docs);
}


/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndividualDocsResponseCopyWith<IndividualDocsResponse> get copyWith => _$IndividualDocsResponseCopyWithImpl<IndividualDocsResponse>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrdersResModel.individualDocs'))
    ..add(DiagnosticsProperty('docs', docs));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndividualDocsResponse&&const DeepCollectionEquality().equals(other._docs, _docs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_docs));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrdersResModel.individualDocs(docs: $docs)';
}


}

/// @nodoc
abstract mixin class $IndividualDocsResponseCopyWith<$Res> implements $OrdersResModelCopyWith<$Res> {
  factory $IndividualDocsResponseCopyWith(IndividualDocsResponse value, $Res Function(IndividualDocsResponse) _then) = _$IndividualDocsResponseCopyWithImpl;
@useResult
$Res call({
 List<DocModel> docs
});




}
/// @nodoc
class _$IndividualDocsResponseCopyWithImpl<$Res>
    implements $IndividualDocsResponseCopyWith<$Res> {
  _$IndividualDocsResponseCopyWithImpl(this._self, this._then);

  final IndividualDocsResponse _self;
  final $Res Function(IndividualDocsResponse) _then;

/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? docs = null,}) {
  return _then(IndividualDocsResponse(
docs: null == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocModel>,
  ));
}


}


/// @nodoc
mixin _$OrderModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'salla_order_id') int? get sallaOrderId;@JsonKey(name: 'salla_product_id') int? get sallaProductId;@JsonKey(name: 'printed_name') String? get printedName;@JsonKey(name: 'execution_number') String? get executionNumber;@JsonKey(name: 'docs') List<DocModel>? get docs;
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
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('sallaOrderId', sallaOrderId))..add(DiagnosticsProperty('sallaProductId', sallaProductId))..add(DiagnosticsProperty('printedName', printedName))..add(DiagnosticsProperty('executionNumber', executionNumber))..add(DiagnosticsProperty('docs', docs));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sallaOrderId, sallaOrderId) || other.sallaOrderId == sallaOrderId)&&(identical(other.sallaProductId, sallaProductId) || other.sallaProductId == sallaProductId)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&const DeepCollectionEquality().equals(other.docs, docs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sallaOrderId,sallaProductId,printedName,executionNumber,const DeepCollectionEquality().hash(docs));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderModel(id: $id, sallaOrderId: $sallaOrderId, sallaProductId: $sallaProductId, printedName: $printedName, executionNumber: $executionNumber, docs: $docs)';
}


}

/// @nodoc
abstract mixin class $OrderModelCopyWith<$Res>  {
  factory $OrderModelCopyWith(OrderModel value, $Res Function(OrderModel) _then) = _$OrderModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'salla_order_id') int? sallaOrderId,@JsonKey(name: 'salla_product_id') int? sallaProductId,@JsonKey(name: 'printed_name') String? printedName,@JsonKey(name: 'execution_number') String? executionNumber,@JsonKey(name: 'docs') List<DocModel>? docs
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? sallaOrderId = freezed,Object? sallaProductId = freezed,Object? printedName = freezed,Object? executionNumber = freezed,Object? docs = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,sallaOrderId: freezed == sallaOrderId ? _self.sallaOrderId : sallaOrderId // ignore: cast_nullable_to_non_nullable
as int?,sallaProductId: freezed == sallaProductId ? _self.sallaProductId : sallaProductId // ignore: cast_nullable_to_non_nullable
as int?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,executionNumber: freezed == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'salla_order_id')  int? sallaOrderId, @JsonKey(name: 'salla_product_id')  int? sallaProductId, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'execution_number')  String? executionNumber, @JsonKey(name: 'docs')  List<DocModel>? docs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.sallaOrderId,_that.sallaProductId,_that.printedName,_that.executionNumber,_that.docs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'salla_order_id')  int? sallaOrderId, @JsonKey(name: 'salla_product_id')  int? sallaProductId, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'execution_number')  String? executionNumber, @JsonKey(name: 'docs')  List<DocModel>? docs)  $default,) {final _that = this;
switch (_that) {
case _OrderModel():
return $default(_that.id,_that.sallaOrderId,_that.sallaProductId,_that.printedName,_that.executionNumber,_that.docs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'salla_order_id')  int? sallaOrderId, @JsonKey(name: 'salla_product_id')  int? sallaProductId, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'execution_number')  String? executionNumber, @JsonKey(name: 'docs')  List<DocModel>? docs)?  $default,) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.sallaOrderId,_that.sallaProductId,_that.printedName,_that.executionNumber,_that.docs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderModel with DiagnosticableTreeMixin implements OrderModel {
  const _OrderModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'salla_order_id') this.sallaOrderId, @JsonKey(name: 'salla_product_id') this.sallaProductId, @JsonKey(name: 'printed_name') this.printedName, @JsonKey(name: 'execution_number') this.executionNumber, @JsonKey(name: 'docs') final  List<DocModel>? docs}): _docs = docs;
  factory _OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'salla_order_id') final  int? sallaOrderId;
@override@JsonKey(name: 'salla_product_id') final  int? sallaProductId;
@override@JsonKey(name: 'printed_name') final  String? printedName;
@override@JsonKey(name: 'execution_number') final  String? executionNumber;
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
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('sallaOrderId', sallaOrderId))..add(DiagnosticsProperty('sallaProductId', sallaProductId))..add(DiagnosticsProperty('printedName', printedName))..add(DiagnosticsProperty('executionNumber', executionNumber))..add(DiagnosticsProperty('docs', docs));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sallaOrderId, sallaOrderId) || other.sallaOrderId == sallaOrderId)&&(identical(other.sallaProductId, sallaProductId) || other.sallaProductId == sallaProductId)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&const DeepCollectionEquality().equals(other._docs, _docs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sallaOrderId,sallaProductId,printedName,executionNumber,const DeepCollectionEquality().hash(_docs));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderModel(id: $id, sallaOrderId: $sallaOrderId, sallaProductId: $sallaProductId, printedName: $printedName, executionNumber: $executionNumber, docs: $docs)';
}


}

/// @nodoc
abstract mixin class _$OrderModelCopyWith<$Res> implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(_OrderModel value, $Res Function(_OrderModel) _then) = __$OrderModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'salla_order_id') int? sallaOrderId,@JsonKey(name: 'salla_product_id') int? sallaProductId,@JsonKey(name: 'printed_name') String? printedName,@JsonKey(name: 'execution_number') String? executionNumber,@JsonKey(name: 'docs') List<DocModel>? docs
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? sallaOrderId = freezed,Object? sallaProductId = freezed,Object? printedName = freezed,Object? executionNumber = freezed,Object? docs = freezed,}) {
  return _then(_OrderModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,sallaOrderId: freezed == sallaOrderId ? _self.sallaOrderId : sallaOrderId // ignore: cast_nullable_to_non_nullable
as int?,sallaProductId: freezed == sallaProductId ? _self.sallaProductId : sallaProductId // ignore: cast_nullable_to_non_nullable
as int?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,executionNumber: freezed == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
as String?,docs: freezed == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocModel>?,
  ));
}


}

// dart format on
