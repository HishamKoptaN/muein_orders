// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_items_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SallaOrderItemsResModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'data') List<SallaOrderItemModel> get sallaOrderItems;@JsonKey(name: 'meta') MetaModel get meta;
/// Create a copy of SallaOrderItemsResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SallaOrderItemsResModelCopyWith<SallaOrderItemsResModel> get copyWith => _$SallaOrderItemsResModelCopyWithImpl<SallaOrderItemsResModel>(this as SallaOrderItemsResModel, _$identity);

  /// Serializes this SallaOrderItemsResModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SallaOrderItemsResModel'))
    ..add(DiagnosticsProperty('sallaOrderItems', sallaOrderItems))..add(DiagnosticsProperty('meta', meta));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SallaOrderItemsResModel&&const DeepCollectionEquality().equals(other.sallaOrderItems, sallaOrderItems)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sallaOrderItems),meta);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SallaOrderItemsResModel(sallaOrderItems: $sallaOrderItems, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $SallaOrderItemsResModelCopyWith<$Res>  {
  factory $SallaOrderItemsResModelCopyWith(SallaOrderItemsResModel value, $Res Function(SallaOrderItemsResModel) _then) = _$SallaOrderItemsResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<SallaOrderItemModel> sallaOrderItems,@JsonKey(name: 'meta') MetaModel meta
});


$MetaModelCopyWith<$Res> get meta;

}
/// @nodoc
class _$SallaOrderItemsResModelCopyWithImpl<$Res>
    implements $SallaOrderItemsResModelCopyWith<$Res> {
  _$SallaOrderItemsResModelCopyWithImpl(this._self, this._then);

  final SallaOrderItemsResModel _self;
  final $Res Function(SallaOrderItemsResModel) _then;

/// Create a copy of SallaOrderItemsResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sallaOrderItems = null,Object? meta = null,}) {
  return _then(_self.copyWith(
sallaOrderItems: null == sallaOrderItems ? _self.sallaOrderItems : sallaOrderItems // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel,
  ));
}
/// Create a copy of SallaOrderItemsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res> get meta {
  
  return $MetaModelCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [SallaOrderItemsResModel].
extension SallaOrderItemsResModelPatterns on SallaOrderItemsResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SallaOrderItemsResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SallaOrderItemsResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SallaOrderItemsResModel value)  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemsResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SallaOrderItemsResModel value)?  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemsResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<SallaOrderItemModel> sallaOrderItems, @JsonKey(name: 'meta')  MetaModel meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SallaOrderItemsResModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<SallaOrderItemModel> sallaOrderItems, @JsonKey(name: 'meta')  MetaModel meta)  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemsResModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<SallaOrderItemModel> sallaOrderItems, @JsonKey(name: 'meta')  MetaModel meta)?  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemsResModel() when $default != null:
return $default(_that.sallaOrderItems,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SallaOrderItemsResModel with DiagnosticableTreeMixin implements SallaOrderItemsResModel {
  const _SallaOrderItemsResModel({@JsonKey(name: 'data') final  List<SallaOrderItemModel> sallaOrderItems = const [], @JsonKey(name: 'meta') this.meta = const MetaModel()}): _sallaOrderItems = sallaOrderItems;
  factory _SallaOrderItemsResModel.fromJson(Map<String, dynamic> json) => _$SallaOrderItemsResModelFromJson(json);

 final  List<SallaOrderItemModel> _sallaOrderItems;
@override@JsonKey(name: 'data') List<SallaOrderItemModel> get sallaOrderItems {
  if (_sallaOrderItems is EqualUnmodifiableListView) return _sallaOrderItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sallaOrderItems);
}

@override@JsonKey(name: 'meta') final  MetaModel meta;

/// Create a copy of SallaOrderItemsResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SallaOrderItemsResModelCopyWith<_SallaOrderItemsResModel> get copyWith => __$SallaOrderItemsResModelCopyWithImpl<_SallaOrderItemsResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SallaOrderItemsResModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SallaOrderItemsResModel'))
    ..add(DiagnosticsProperty('sallaOrderItems', sallaOrderItems))..add(DiagnosticsProperty('meta', meta));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SallaOrderItemsResModel&&const DeepCollectionEquality().equals(other._sallaOrderItems, _sallaOrderItems)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sallaOrderItems),meta);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SallaOrderItemsResModel(sallaOrderItems: $sallaOrderItems, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$SallaOrderItemsResModelCopyWith<$Res> implements $SallaOrderItemsResModelCopyWith<$Res> {
  factory _$SallaOrderItemsResModelCopyWith(_SallaOrderItemsResModel value, $Res Function(_SallaOrderItemsResModel) _then) = __$SallaOrderItemsResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<SallaOrderItemModel> sallaOrderItems,@JsonKey(name: 'meta') MetaModel meta
});


@override $MetaModelCopyWith<$Res> get meta;

}
/// @nodoc
class __$SallaOrderItemsResModelCopyWithImpl<$Res>
    implements _$SallaOrderItemsResModelCopyWith<$Res> {
  __$SallaOrderItemsResModelCopyWithImpl(this._self, this._then);

  final _SallaOrderItemsResModel _self;
  final $Res Function(_SallaOrderItemsResModel) _then;

/// Create a copy of SallaOrderItemsResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sallaOrderItems = null,Object? meta = null,}) {
  return _then(_SallaOrderItemsResModel(
sallaOrderItems: null == sallaOrderItems ? _self._sallaOrderItems : sallaOrderItems // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel,
  ));
}

/// Create a copy of SallaOrderItemsResModel
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
mixin _$SallaOrderItemModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'printed_name') String get printedName;@JsonKey(name: 'salla_order_item_units') List<SallaOrderItemUnitModel> get sallaOrderItemUnits;@JsonKey(name: 'salla_order_item_status') SallaOrderItemStatusModel get sallaOrderItemStatus;@JsonKey(name: 'created_at') String get created_at;@JsonKey(name: 'updated_at') String get updated_at;
/// Create a copy of SallaOrderItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SallaOrderItemModelCopyWith<SallaOrderItemModel> get copyWith => _$SallaOrderItemModelCopyWithImpl<SallaOrderItemModel>(this as SallaOrderItemModel, _$identity);

  /// Serializes this SallaOrderItemModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SallaOrderItemModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('printedName', printedName))..add(DiagnosticsProperty('sallaOrderItemUnits', sallaOrderItemUnits))..add(DiagnosticsProperty('sallaOrderItemStatus', sallaOrderItemStatus))..add(DiagnosticsProperty('created_at', created_at))..add(DiagnosticsProperty('updated_at', updated_at));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SallaOrderItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&const DeepCollectionEquality().equals(other.sallaOrderItemUnits, sallaOrderItemUnits)&&(identical(other.sallaOrderItemStatus, sallaOrderItemStatus) || other.sallaOrderItemStatus == sallaOrderItemStatus)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,printedName,const DeepCollectionEquality().hash(sallaOrderItemUnits),sallaOrderItemStatus,created_at,updated_at);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SallaOrderItemModel(id: $id, printedName: $printedName, sallaOrderItemUnits: $sallaOrderItemUnits, sallaOrderItemStatus: $sallaOrderItemStatus, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class $SallaOrderItemModelCopyWith<$Res>  {
  factory $SallaOrderItemModelCopyWith(SallaOrderItemModel value, $Res Function(SallaOrderItemModel) _then) = _$SallaOrderItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'printed_name') String printedName,@JsonKey(name: 'salla_order_item_units') List<SallaOrderItemUnitModel> sallaOrderItemUnits,@JsonKey(name: 'salla_order_item_status') SallaOrderItemStatusModel sallaOrderItemStatus,@JsonKey(name: 'created_at') String created_at,@JsonKey(name: 'updated_at') String updated_at
});


$SallaOrderItemStatusModelCopyWith<$Res> get sallaOrderItemStatus;

}
/// @nodoc
class _$SallaOrderItemModelCopyWithImpl<$Res>
    implements $SallaOrderItemModelCopyWith<$Res> {
  _$SallaOrderItemModelCopyWithImpl(this._self, this._then);

  final SallaOrderItemModel _self;
  final $Res Function(SallaOrderItemModel) _then;

/// Create a copy of SallaOrderItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? printedName = null,Object? sallaOrderItemUnits = null,Object? sallaOrderItemStatus = null,Object? created_at = null,Object? updated_at = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,printedName: null == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String,sallaOrderItemUnits: null == sallaOrderItemUnits ? _self.sallaOrderItemUnits : sallaOrderItemUnits // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemUnitModel>,sallaOrderItemStatus: null == sallaOrderItemStatus ? _self.sallaOrderItemStatus : sallaOrderItemStatus // ignore: cast_nullable_to_non_nullable
as SallaOrderItemStatusModel,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String,updated_at: null == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of SallaOrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SallaOrderItemStatusModelCopyWith<$Res> get sallaOrderItemStatus {
  
  return $SallaOrderItemStatusModelCopyWith<$Res>(_self.sallaOrderItemStatus, (value) {
    return _then(_self.copyWith(sallaOrderItemStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [SallaOrderItemModel].
extension SallaOrderItemModelPatterns on SallaOrderItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SallaOrderItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SallaOrderItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SallaOrderItemModel value)  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SallaOrderItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'printed_name')  String printedName, @JsonKey(name: 'salla_order_item_units')  List<SallaOrderItemUnitModel> sallaOrderItemUnits, @JsonKey(name: 'salla_order_item_status')  SallaOrderItemStatusModel sallaOrderItemStatus, @JsonKey(name: 'created_at')  String created_at, @JsonKey(name: 'updated_at')  String updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SallaOrderItemModel() when $default != null:
return $default(_that.id,_that.printedName,_that.sallaOrderItemUnits,_that.sallaOrderItemStatus,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'printed_name')  String printedName, @JsonKey(name: 'salla_order_item_units')  List<SallaOrderItemUnitModel> sallaOrderItemUnits, @JsonKey(name: 'salla_order_item_status')  SallaOrderItemStatusModel sallaOrderItemStatus, @JsonKey(name: 'created_at')  String created_at, @JsonKey(name: 'updated_at')  String updated_at)  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemModel():
return $default(_that.id,_that.printedName,_that.sallaOrderItemUnits,_that.sallaOrderItemStatus,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'printed_name')  String printedName, @JsonKey(name: 'salla_order_item_units')  List<SallaOrderItemUnitModel> sallaOrderItemUnits, @JsonKey(name: 'salla_order_item_status')  SallaOrderItemStatusModel sallaOrderItemStatus, @JsonKey(name: 'created_at')  String created_at, @JsonKey(name: 'updated_at')  String updated_at)?  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemModel() when $default != null:
return $default(_that.id,_that.printedName,_that.sallaOrderItemUnits,_that.sallaOrderItemStatus,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SallaOrderItemModel with DiagnosticableTreeMixin implements SallaOrderItemModel {
  const _SallaOrderItemModel({@JsonKey(name: 'id') this.id = 0, @JsonKey(name: 'printed_name') this.printedName = '', @JsonKey(name: 'salla_order_item_units') final  List<SallaOrderItemUnitModel> sallaOrderItemUnits = const [], @JsonKey(name: 'salla_order_item_status') this.sallaOrderItemStatus = const SallaOrderItemStatusModel(), @JsonKey(name: 'created_at') this.created_at = '', @JsonKey(name: 'updated_at') this.updated_at = ''}): _sallaOrderItemUnits = sallaOrderItemUnits;
  factory _SallaOrderItemModel.fromJson(Map<String, dynamic> json) => _$SallaOrderItemModelFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'printed_name') final  String printedName;
 final  List<SallaOrderItemUnitModel> _sallaOrderItemUnits;
@override@JsonKey(name: 'salla_order_item_units') List<SallaOrderItemUnitModel> get sallaOrderItemUnits {
  if (_sallaOrderItemUnits is EqualUnmodifiableListView) return _sallaOrderItemUnits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sallaOrderItemUnits);
}

@override@JsonKey(name: 'salla_order_item_status') final  SallaOrderItemStatusModel sallaOrderItemStatus;
@override@JsonKey(name: 'created_at') final  String created_at;
@override@JsonKey(name: 'updated_at') final  String updated_at;

/// Create a copy of SallaOrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SallaOrderItemModelCopyWith<_SallaOrderItemModel> get copyWith => __$SallaOrderItemModelCopyWithImpl<_SallaOrderItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SallaOrderItemModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SallaOrderItemModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('printedName', printedName))..add(DiagnosticsProperty('sallaOrderItemUnits', sallaOrderItemUnits))..add(DiagnosticsProperty('sallaOrderItemStatus', sallaOrderItemStatus))..add(DiagnosticsProperty('created_at', created_at))..add(DiagnosticsProperty('updated_at', updated_at));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SallaOrderItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&const DeepCollectionEquality().equals(other._sallaOrderItemUnits, _sallaOrderItemUnits)&&(identical(other.sallaOrderItemStatus, sallaOrderItemStatus) || other.sallaOrderItemStatus == sallaOrderItemStatus)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,printedName,const DeepCollectionEquality().hash(_sallaOrderItemUnits),sallaOrderItemStatus,created_at,updated_at);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SallaOrderItemModel(id: $id, printedName: $printedName, sallaOrderItemUnits: $sallaOrderItemUnits, sallaOrderItemStatus: $sallaOrderItemStatus, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$SallaOrderItemModelCopyWith<$Res> implements $SallaOrderItemModelCopyWith<$Res> {
  factory _$SallaOrderItemModelCopyWith(_SallaOrderItemModel value, $Res Function(_SallaOrderItemModel) _then) = __$SallaOrderItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'printed_name') String printedName,@JsonKey(name: 'salla_order_item_units') List<SallaOrderItemUnitModel> sallaOrderItemUnits,@JsonKey(name: 'salla_order_item_status') SallaOrderItemStatusModel sallaOrderItemStatus,@JsonKey(name: 'created_at') String created_at,@JsonKey(name: 'updated_at') String updated_at
});


@override $SallaOrderItemStatusModelCopyWith<$Res> get sallaOrderItemStatus;

}
/// @nodoc
class __$SallaOrderItemModelCopyWithImpl<$Res>
    implements _$SallaOrderItemModelCopyWith<$Res> {
  __$SallaOrderItemModelCopyWithImpl(this._self, this._then);

  final _SallaOrderItemModel _self;
  final $Res Function(_SallaOrderItemModel) _then;

/// Create a copy of SallaOrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? printedName = null,Object? sallaOrderItemUnits = null,Object? sallaOrderItemStatus = null,Object? created_at = null,Object? updated_at = null,}) {
  return _then(_SallaOrderItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,printedName: null == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String,sallaOrderItemUnits: null == sallaOrderItemUnits ? _self._sallaOrderItemUnits : sallaOrderItemUnits // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemUnitModel>,sallaOrderItemStatus: null == sallaOrderItemStatus ? _self.sallaOrderItemStatus : sallaOrderItemStatus // ignore: cast_nullable_to_non_nullable
as SallaOrderItemStatusModel,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String,updated_at: null == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SallaOrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SallaOrderItemStatusModelCopyWith<$Res> get sallaOrderItemStatus {
  
  return $SallaOrderItemStatusModelCopyWith<$Res>(_self.sallaOrderItemStatus, (value) {
    return _then(_self.copyWith(sallaOrderItemStatus: value));
  });
}
}


/// @nodoc
mixin _$SallaOrderItemStatusModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'created_at') String get created_at;@JsonKey(name: 'updated_at') String get updated_at;
/// Create a copy of SallaOrderItemStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SallaOrderItemStatusModelCopyWith<SallaOrderItemStatusModel> get copyWith => _$SallaOrderItemStatusModelCopyWithImpl<SallaOrderItemStatusModel>(this as SallaOrderItemStatusModel, _$identity);

  /// Serializes this SallaOrderItemStatusModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SallaOrderItemStatusModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('created_at', created_at))..add(DiagnosticsProperty('updated_at', updated_at));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SallaOrderItemStatusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,created_at,updated_at);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SallaOrderItemStatusModel(id: $id, name: $name, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class $SallaOrderItemStatusModelCopyWith<$Res>  {
  factory $SallaOrderItemStatusModelCopyWith(SallaOrderItemStatusModel value, $Res Function(SallaOrderItemStatusModel) _then) = _$SallaOrderItemStatusModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'created_at') String created_at,@JsonKey(name: 'updated_at') String updated_at
});




}
/// @nodoc
class _$SallaOrderItemStatusModelCopyWithImpl<$Res>
    implements $SallaOrderItemStatusModelCopyWith<$Res> {
  _$SallaOrderItemStatusModelCopyWithImpl(this._self, this._then);

  final SallaOrderItemStatusModel _self;
  final $Res Function(SallaOrderItemStatusModel) _then;

/// Create a copy of SallaOrderItemStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? created_at = null,Object? updated_at = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String,updated_at: null == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SallaOrderItemStatusModel].
extension SallaOrderItemStatusModelPatterns on SallaOrderItemStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SallaOrderItemStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SallaOrderItemStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SallaOrderItemStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SallaOrderItemStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'created_at')  String created_at, @JsonKey(name: 'updated_at')  String updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SallaOrderItemStatusModel() when $default != null:
return $default(_that.id,_that.name,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'created_at')  String created_at, @JsonKey(name: 'updated_at')  String updated_at)  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemStatusModel():
return $default(_that.id,_that.name,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'created_at')  String created_at, @JsonKey(name: 'updated_at')  String updated_at)?  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemStatusModel() when $default != null:
return $default(_that.id,_that.name,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SallaOrderItemStatusModel with DiagnosticableTreeMixin implements SallaOrderItemStatusModel {
  const _SallaOrderItemStatusModel({@JsonKey(name: 'id') this.id = 0, @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'created_at') this.created_at = '', @JsonKey(name: 'updated_at') this.updated_at = ''});
  factory _SallaOrderItemStatusModel.fromJson(Map<String, dynamic> json) => _$SallaOrderItemStatusModelFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'created_at') final  String created_at;
@override@JsonKey(name: 'updated_at') final  String updated_at;

/// Create a copy of SallaOrderItemStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SallaOrderItemStatusModelCopyWith<_SallaOrderItemStatusModel> get copyWith => __$SallaOrderItemStatusModelCopyWithImpl<_SallaOrderItemStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SallaOrderItemStatusModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SallaOrderItemStatusModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('created_at', created_at))..add(DiagnosticsProperty('updated_at', updated_at));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SallaOrderItemStatusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,created_at,updated_at);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SallaOrderItemStatusModel(id: $id, name: $name, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$SallaOrderItemStatusModelCopyWith<$Res> implements $SallaOrderItemStatusModelCopyWith<$Res> {
  factory _$SallaOrderItemStatusModelCopyWith(_SallaOrderItemStatusModel value, $Res Function(_SallaOrderItemStatusModel) _then) = __$SallaOrderItemStatusModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'created_at') String created_at,@JsonKey(name: 'updated_at') String updated_at
});




}
/// @nodoc
class __$SallaOrderItemStatusModelCopyWithImpl<$Res>
    implements _$SallaOrderItemStatusModelCopyWith<$Res> {
  __$SallaOrderItemStatusModelCopyWithImpl(this._self, this._then);

  final _SallaOrderItemStatusModel _self;
  final $Res Function(_SallaOrderItemStatusModel) _then;

/// Create a copy of SallaOrderItemStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? created_at = null,Object? updated_at = null,}) {
  return _then(_SallaOrderItemStatusModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String,updated_at: null == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SallaOrderItemUnitModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'unit_number') int get unitNumber;@JsonKey(name: 'execution_number') String get executionNumber;@JsonKey(name: 'documentations') List<DocModel> get docs;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of SallaOrderItemUnitModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SallaOrderItemUnitModelCopyWith<SallaOrderItemUnitModel> get copyWith => _$SallaOrderItemUnitModelCopyWithImpl<SallaOrderItemUnitModel>(this as SallaOrderItemUnitModel, _$identity);

  /// Serializes this SallaOrderItemUnitModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SallaOrderItemUnitModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('unitNumber', unitNumber))..add(DiagnosticsProperty('executionNumber', executionNumber))..add(DiagnosticsProperty('docs', docs))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SallaOrderItemUnitModel&&(identical(other.id, id) || other.id == id)&&(identical(other.unitNumber, unitNumber) || other.unitNumber == unitNumber)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&const DeepCollectionEquality().equals(other.docs, docs)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unitNumber,executionNumber,const DeepCollectionEquality().hash(docs),createdAt,updatedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SallaOrderItemUnitModel(id: $id, unitNumber: $unitNumber, executionNumber: $executionNumber, docs: $docs, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SallaOrderItemUnitModelCopyWith<$Res>  {
  factory $SallaOrderItemUnitModelCopyWith(SallaOrderItemUnitModel value, $Res Function(SallaOrderItemUnitModel) _then) = _$SallaOrderItemUnitModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'unit_number') int unitNumber,@JsonKey(name: 'execution_number') String executionNumber,@JsonKey(name: 'documentations') List<DocModel> docs,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$SallaOrderItemUnitModelCopyWithImpl<$Res>
    implements $SallaOrderItemUnitModelCopyWith<$Res> {
  _$SallaOrderItemUnitModelCopyWithImpl(this._self, this._then);

  final SallaOrderItemUnitModel _self;
  final $Res Function(SallaOrderItemUnitModel) _then;

/// Create a copy of SallaOrderItemUnitModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? unitNumber = null,Object? executionNumber = null,Object? docs = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,unitNumber: null == unitNumber ? _self.unitNumber : unitNumber // ignore: cast_nullable_to_non_nullable
as int,executionNumber: null == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
as String,docs: null == docs ? _self.docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocModel>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SallaOrderItemUnitModel].
extension SallaOrderItemUnitModelPatterns on SallaOrderItemUnitModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SallaOrderItemUnitModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SallaOrderItemUnitModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SallaOrderItemUnitModel value)  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemUnitModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SallaOrderItemUnitModel value)?  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemUnitModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'unit_number')  int unitNumber, @JsonKey(name: 'execution_number')  String executionNumber, @JsonKey(name: 'documentations')  List<DocModel> docs, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SallaOrderItemUnitModel() when $default != null:
return $default(_that.id,_that.unitNumber,_that.executionNumber,_that.docs,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'unit_number')  int unitNumber, @JsonKey(name: 'execution_number')  String executionNumber, @JsonKey(name: 'documentations')  List<DocModel> docs, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemUnitModel():
return $default(_that.id,_that.unitNumber,_that.executionNumber,_that.docs,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'unit_number')  int unitNumber, @JsonKey(name: 'execution_number')  String executionNumber, @JsonKey(name: 'documentations')  List<DocModel> docs, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemUnitModel() when $default != null:
return $default(_that.id,_that.unitNumber,_that.executionNumber,_that.docs,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SallaOrderItemUnitModel with DiagnosticableTreeMixin implements SallaOrderItemUnitModel {
  const _SallaOrderItemUnitModel({@JsonKey(name: 'id') this.id = 0, @JsonKey(name: 'unit_number') this.unitNumber = 0, @JsonKey(name: 'execution_number') this.executionNumber = '', @JsonKey(name: 'documentations') final  List<DocModel> docs = const [], @JsonKey(name: 'created_at') this.createdAt = '', @JsonKey(name: 'updated_at') this.updatedAt = ''}): _docs = docs;
  factory _SallaOrderItemUnitModel.fromJson(Map<String, dynamic> json) => _$SallaOrderItemUnitModelFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'unit_number') final  int unitNumber;
@override@JsonKey(name: 'execution_number') final  String executionNumber;
 final  List<DocModel> _docs;
@override@JsonKey(name: 'documentations') List<DocModel> get docs {
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_docs);
}

@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of SallaOrderItemUnitModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SallaOrderItemUnitModelCopyWith<_SallaOrderItemUnitModel> get copyWith => __$SallaOrderItemUnitModelCopyWithImpl<_SallaOrderItemUnitModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SallaOrderItemUnitModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SallaOrderItemUnitModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('unitNumber', unitNumber))..add(DiagnosticsProperty('executionNumber', executionNumber))..add(DiagnosticsProperty('docs', docs))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SallaOrderItemUnitModel&&(identical(other.id, id) || other.id == id)&&(identical(other.unitNumber, unitNumber) || other.unitNumber == unitNumber)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&const DeepCollectionEquality().equals(other._docs, _docs)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unitNumber,executionNumber,const DeepCollectionEquality().hash(_docs),createdAt,updatedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SallaOrderItemUnitModel(id: $id, unitNumber: $unitNumber, executionNumber: $executionNumber, docs: $docs, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SallaOrderItemUnitModelCopyWith<$Res> implements $SallaOrderItemUnitModelCopyWith<$Res> {
  factory _$SallaOrderItemUnitModelCopyWith(_SallaOrderItemUnitModel value, $Res Function(_SallaOrderItemUnitModel) _then) = __$SallaOrderItemUnitModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'unit_number') int unitNumber,@JsonKey(name: 'execution_number') String executionNumber,@JsonKey(name: 'documentations') List<DocModel> docs,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$SallaOrderItemUnitModelCopyWithImpl<$Res>
    implements _$SallaOrderItemUnitModelCopyWith<$Res> {
  __$SallaOrderItemUnitModelCopyWithImpl(this._self, this._then);

  final _SallaOrderItemUnitModel _self;
  final $Res Function(_SallaOrderItemUnitModel) _then;

/// Create a copy of SallaOrderItemUnitModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? unitNumber = null,Object? executionNumber = null,Object? docs = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_SallaOrderItemUnitModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,unitNumber: null == unitNumber ? _self.unitNumber : unitNumber // ignore: cast_nullable_to_non_nullable
as int,executionNumber: null == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
as String,docs: null == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocModel>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
