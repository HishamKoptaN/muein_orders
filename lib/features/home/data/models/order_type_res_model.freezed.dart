// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_type_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderTypeResModel {

@JsonKey(name: 'product_type') ProductTypeModel? get productType;@JsonKey(name: 'orders_count') int? get ordersCount;@JsonKey(name: 'total_quran_copies') int? get totalQuranCopies;
/// Create a copy of OrderTypeResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderTypeResModelCopyWith<OrderTypeResModel> get copyWith => _$OrderTypeResModelCopyWithImpl<OrderTypeResModel>(this as OrderTypeResModel, _$identity);

  /// Serializes this OrderTypeResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderTypeResModel&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.ordersCount, ordersCount) || other.ordersCount == ordersCount)&&(identical(other.totalQuranCopies, totalQuranCopies) || other.totalQuranCopies == totalQuranCopies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,ordersCount,totalQuranCopies);

@override
String toString() {
  return 'OrderTypeResModel(productType: $productType, ordersCount: $ordersCount, totalQuranCopies: $totalQuranCopies)';
}


}

/// @nodoc
abstract mixin class $OrderTypeResModelCopyWith<$Res>  {
  factory $OrderTypeResModelCopyWith(OrderTypeResModel value, $Res Function(OrderTypeResModel) _then) = _$OrderTypeResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_type') ProductTypeModel? productType,@JsonKey(name: 'orders_count') int? ordersCount,@JsonKey(name: 'total_quran_copies') int? totalQuranCopies
});


$ProductTypeModelCopyWith<$Res>? get productType;

}
/// @nodoc
class _$OrderTypeResModelCopyWithImpl<$Res>
    implements $OrderTypeResModelCopyWith<$Res> {
  _$OrderTypeResModelCopyWithImpl(this._self, this._then);

  final OrderTypeResModel _self;
  final $Res Function(OrderTypeResModel) _then;

/// Create a copy of OrderTypeResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? ordersCount = freezed,Object? totalQuranCopies = freezed,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as ProductTypeModel?,ordersCount: freezed == ordersCount ? _self.ordersCount : ordersCount // ignore: cast_nullable_to_non_nullable
as int?,totalQuranCopies: freezed == totalQuranCopies ? _self.totalQuranCopies : totalQuranCopies // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of OrderTypeResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductTypeModelCopyWith<$Res>? get productType {
    if (_self.productType == null) {
    return null;
  }

  return $ProductTypeModelCopyWith<$Res>(_self.productType!, (value) {
    return _then(_self.copyWith(productType: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderTypeResModel].
extension OrderTypeResModelPatterns on OrderTypeResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderTypeResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderTypeResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderTypeResModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderTypeResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderTypeResModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderTypeResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  ProductTypeModel? productType, @JsonKey(name: 'orders_count')  int? ordersCount, @JsonKey(name: 'total_quran_copies')  int? totalQuranCopies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderTypeResModel() when $default != null:
return $default(_that.productType,_that.ordersCount,_that.totalQuranCopies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  ProductTypeModel? productType, @JsonKey(name: 'orders_count')  int? ordersCount, @JsonKey(name: 'total_quran_copies')  int? totalQuranCopies)  $default,) {final _that = this;
switch (_that) {
case _OrderTypeResModel():
return $default(_that.productType,_that.ordersCount,_that.totalQuranCopies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_type')  ProductTypeModel? productType, @JsonKey(name: 'orders_count')  int? ordersCount, @JsonKey(name: 'total_quran_copies')  int? totalQuranCopies)?  $default,) {final _that = this;
switch (_that) {
case _OrderTypeResModel() when $default != null:
return $default(_that.productType,_that.ordersCount,_that.totalQuranCopies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderTypeResModel implements OrderTypeResModel {
  const _OrderTypeResModel({@JsonKey(name: 'product_type') this.productType, @JsonKey(name: 'orders_count') this.ordersCount, @JsonKey(name: 'total_quran_copies') this.totalQuranCopies});
  factory _OrderTypeResModel.fromJson(Map<String, dynamic> json) => _$OrderTypeResModelFromJson(json);

@override@JsonKey(name: 'product_type') final  ProductTypeModel? productType;
@override@JsonKey(name: 'orders_count') final  int? ordersCount;
@override@JsonKey(name: 'total_quran_copies') final  int? totalQuranCopies;

/// Create a copy of OrderTypeResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderTypeResModelCopyWith<_OrderTypeResModel> get copyWith => __$OrderTypeResModelCopyWithImpl<_OrderTypeResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderTypeResModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderTypeResModel&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.ordersCount, ordersCount) || other.ordersCount == ordersCount)&&(identical(other.totalQuranCopies, totalQuranCopies) || other.totalQuranCopies == totalQuranCopies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,ordersCount,totalQuranCopies);

@override
String toString() {
  return 'OrderTypeResModel(productType: $productType, ordersCount: $ordersCount, totalQuranCopies: $totalQuranCopies)';
}


}

/// @nodoc
abstract mixin class _$OrderTypeResModelCopyWith<$Res> implements $OrderTypeResModelCopyWith<$Res> {
  factory _$OrderTypeResModelCopyWith(_OrderTypeResModel value, $Res Function(_OrderTypeResModel) _then) = __$OrderTypeResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_type') ProductTypeModel? productType,@JsonKey(name: 'orders_count') int? ordersCount,@JsonKey(name: 'total_quran_copies') int? totalQuranCopies
});


@override $ProductTypeModelCopyWith<$Res>? get productType;

}
/// @nodoc
class __$OrderTypeResModelCopyWithImpl<$Res>
    implements _$OrderTypeResModelCopyWith<$Res> {
  __$OrderTypeResModelCopyWithImpl(this._self, this._then);

  final _OrderTypeResModel _self;
  final $Res Function(_OrderTypeResModel) _then;

/// Create a copy of OrderTypeResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? ordersCount = freezed,Object? totalQuranCopies = freezed,}) {
  return _then(_OrderTypeResModel(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as ProductTypeModel?,ordersCount: freezed == ordersCount ? _self.ordersCount : ordersCount // ignore: cast_nullable_to_non_nullable
as int?,totalQuranCopies: freezed == totalQuranCopies ? _self.totalQuranCopies : totalQuranCopies // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of OrderTypeResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductTypeModelCopyWith<$Res>? get productType {
    if (_self.productType == null) {
    return null;
  }

  return $ProductTypeModelCopyWith<$Res>(_self.productType!, (value) {
    return _then(_self.copyWith(productType: value));
  });
}
}


/// @nodoc
mixin _$ProductTypeModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'docs_count') int? get docsCount;
/// Create a copy of ProductTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductTypeModelCopyWith<ProductTypeModel> get copyWith => _$ProductTypeModelCopyWithImpl<ProductTypeModel>(this as ProductTypeModel, _$identity);

  /// Serializes this ProductTypeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.docsCount, docsCount) || other.docsCount == docsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,docsCount);

@override
String toString() {
  return 'ProductTypeModel(id: $id, name: $name, docsCount: $docsCount)';
}


}

/// @nodoc
abstract mixin class $ProductTypeModelCopyWith<$Res>  {
  factory $ProductTypeModelCopyWith(ProductTypeModel value, $Res Function(ProductTypeModel) _then) = _$ProductTypeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'docs_count') int? docsCount
});




}
/// @nodoc
class _$ProductTypeModelCopyWithImpl<$Res>
    implements $ProductTypeModelCopyWith<$Res> {
  _$ProductTypeModelCopyWithImpl(this._self, this._then);

  final ProductTypeModel _self;
  final $Res Function(ProductTypeModel) _then;

/// Create a copy of ProductTypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? docsCount = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,docsCount: freezed == docsCount ? _self.docsCount : docsCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductTypeModel].
extension ProductTypeModelPatterns on ProductTypeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductTypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductTypeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductTypeModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductTypeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductTypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductTypeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'docs_count')  int? docsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductTypeModel() when $default != null:
return $default(_that.id,_that.name,_that.docsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'docs_count')  int? docsCount)  $default,) {final _that = this;
switch (_that) {
case _ProductTypeModel():
return $default(_that.id,_that.name,_that.docsCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'docs_count')  int? docsCount)?  $default,) {final _that = this;
switch (_that) {
case _ProductTypeModel() when $default != null:
return $default(_that.id,_that.name,_that.docsCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductTypeModel implements ProductTypeModel {
  const _ProductTypeModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'docs_count') this.docsCount});
  factory _ProductTypeModel.fromJson(Map<String, dynamic> json) => _$ProductTypeModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'docs_count') final  int? docsCount;

/// Create a copy of ProductTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductTypeModelCopyWith<_ProductTypeModel> get copyWith => __$ProductTypeModelCopyWithImpl<_ProductTypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductTypeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.docsCount, docsCount) || other.docsCount == docsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,docsCount);

@override
String toString() {
  return 'ProductTypeModel(id: $id, name: $name, docsCount: $docsCount)';
}


}

/// @nodoc
abstract mixin class _$ProductTypeModelCopyWith<$Res> implements $ProductTypeModelCopyWith<$Res> {
  factory _$ProductTypeModelCopyWith(_ProductTypeModel value, $Res Function(_ProductTypeModel) _then) = __$ProductTypeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'docs_count') int? docsCount
});




}
/// @nodoc
class __$ProductTypeModelCopyWithImpl<$Res>
    implements _$ProductTypeModelCopyWith<$Res> {
  __$ProductTypeModelCopyWithImpl(this._self, this._then);

  final _ProductTypeModel _self;
  final $Res Function(_ProductTypeModel) _then;

/// Create a copy of ProductTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? docsCount = freezed,}) {
  return _then(_ProductTypeModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,docsCount: freezed == docsCount ? _self.docsCount : docsCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
