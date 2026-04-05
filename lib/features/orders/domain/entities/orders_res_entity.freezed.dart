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
OrdersResEntity _$OrdersResEntityFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'orders':
          return _OrdersEntity.fromJson(
            json
          );
                case 'individual_docs':
          return _IndividualDocsEntity.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'OrdersResEntity',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$OrdersResEntity {



  /// Serializes this OrdersResEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersResEntity);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersResEntity()';
}


}

/// @nodoc
class $OrdersResEntityCopyWith<$Res>  {
$OrdersResEntityCopyWith(OrdersResEntity _, $Res Function(OrdersResEntity) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _OrdersEntity value)?  orders,TResult Function( _IndividualDocsEntity value)?  individualDocs,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersEntity() when orders != null:
return orders(_that);case _IndividualDocsEntity() when individualDocs != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _OrdersEntity value)  orders,required TResult Function( _IndividualDocsEntity value)  individualDocs,}){
final _that = this;
switch (_that) {
case _OrdersEntity():
return orders(_that);case _IndividualDocsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _OrdersEntity value)?  orders,TResult? Function( _IndividualDocsEntity value)?  individualDocs,}){
final _that = this;
switch (_that) {
case _OrdersEntity() when orders != null:
return orders(_that);case _IndividualDocsEntity() when individualDocs != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<OrderEntity> orders,  MetaEntity meta)?  orders,TResult Function( List<DocEntity> docs)?  individualDocs,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersEntity() when orders != null:
return orders(_that.orders,_that.meta);case _IndividualDocsEntity() when individualDocs != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<OrderEntity> orders,  MetaEntity meta)  orders,required TResult Function( List<DocEntity> docs)  individualDocs,}) {final _that = this;
switch (_that) {
case _OrdersEntity():
return orders(_that.orders,_that.meta);case _IndividualDocsEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<OrderEntity> orders,  MetaEntity meta)?  orders,TResult? Function( List<DocEntity> docs)?  individualDocs,}) {final _that = this;
switch (_that) {
case _OrdersEntity() when orders != null:
return orders(_that.orders,_that.meta);case _IndividualDocsEntity() when individualDocs != null:
return individualDocs(_that.docs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrdersEntity extends OrdersResEntity {
  const _OrdersEntity({required final  List<OrderEntity> orders, required this.meta, final  String? $type}): _orders = orders,$type = $type ?? 'orders',super._();
  factory _OrdersEntity.fromJson(Map<String, dynamic> json) => _$OrdersEntityFromJson(json);

 final  List<OrderEntity> _orders;
 List<OrderEntity> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}

 final  MetaEntity meta;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersEntityCopyWith<_OrdersEntity> get copyWith => __$OrdersEntityCopyWithImpl<_OrdersEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrdersEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersEntity&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders),meta);

@override
String toString() {
  return 'OrdersResEntity.orders(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$OrdersEntityCopyWith<$Res> implements $OrdersResEntityCopyWith<$Res> {
  factory _$OrdersEntityCopyWith(_OrdersEntity value, $Res Function(_OrdersEntity) _then) = __$OrdersEntityCopyWithImpl;
@useResult
$Res call({
 List<OrderEntity> orders, MetaEntity meta
});


$MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class __$OrdersEntityCopyWithImpl<$Res>
    implements _$OrdersEntityCopyWith<$Res> {
  __$OrdersEntityCopyWithImpl(this._self, this._then);

  final _OrdersEntity _self;
  final $Res Function(_OrdersEntity) _then;

/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orders = null,Object? meta = null,}) {
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
@JsonSerializable()

class _IndividualDocsEntity extends OrdersResEntity {
  const _IndividualDocsEntity({required final  List<DocEntity> docs, final  String? $type}): _docs = docs,$type = $type ?? 'individual_docs',super._();
  factory _IndividualDocsEntity.fromJson(Map<String, dynamic> json) => _$IndividualDocsEntityFromJson(json);

 final  List<DocEntity> _docs;
 List<DocEntity> get docs {
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_docs);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IndividualDocsEntityCopyWith<_IndividualDocsEntity> get copyWith => __$IndividualDocsEntityCopyWithImpl<_IndividualDocsEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IndividualDocsEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IndividualDocsEntity&&const DeepCollectionEquality().equals(other._docs, _docs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_docs));

@override
String toString() {
  return 'OrdersResEntity.individualDocs(docs: $docs)';
}


}

/// @nodoc
abstract mixin class _$IndividualDocsEntityCopyWith<$Res> implements $OrdersResEntityCopyWith<$Res> {
  factory _$IndividualDocsEntityCopyWith(_IndividualDocsEntity value, $Res Function(_IndividualDocsEntity) _then) = __$IndividualDocsEntityCopyWithImpl;
@useResult
$Res call({
 List<DocEntity> docs
});




}
/// @nodoc
class __$IndividualDocsEntityCopyWithImpl<$Res>
    implements _$IndividualDocsEntityCopyWith<$Res> {
  __$IndividualDocsEntityCopyWithImpl(this._self, this._then);

  final _IndividualDocsEntity _self;
  final $Res Function(_IndividualDocsEntity) _then;

/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? docs = null,}) {
  return _then(_IndividualDocsEntity(
docs: null == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocEntity>,
  ));
}


}


/// @nodoc
mixin _$OrderEntity {

 int get id; int get sallaOrderId; String get printedName; String get executionNumber; List<DocEntity> get docs;
/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<OrderEntity> get copyWith => _$OrderEntityCopyWithImpl<OrderEntity>(this as OrderEntity, _$identity);

  /// Serializes this OrderEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.sallaOrderId, sallaOrderId) || other.sallaOrderId == sallaOrderId)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&const DeepCollectionEquality().equals(other.docs, docs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sallaOrderId,printedName,executionNumber,const DeepCollectionEquality().hash(docs));

@override
String toString() {
  return 'OrderEntity(id: $id, sallaOrderId: $sallaOrderId, printedName: $printedName, executionNumber: $executionNumber, docs: $docs)';
}


}

/// @nodoc
abstract mixin class $OrderEntityCopyWith<$Res>  {
  factory $OrderEntityCopyWith(OrderEntity value, $Res Function(OrderEntity) _then) = _$OrderEntityCopyWithImpl;
@useResult
$Res call({
 int id, int sallaOrderId, String printedName, String executionNumber, List<DocEntity> docs
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sallaOrderId = null,Object? printedName = null,Object? executionNumber = null,Object? docs = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sallaOrderId: null == sallaOrderId ? _self.sallaOrderId : sallaOrderId // ignore: cast_nullable_to_non_nullable
as int,printedName: null == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String,executionNumber: null == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
as String,docs: null == docs ? _self.docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocEntity>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int sallaOrderId,  String printedName,  String executionNumber,  List<DocEntity> docs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.sallaOrderId,_that.printedName,_that.executionNumber,_that.docs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int sallaOrderId,  String printedName,  String executionNumber,  List<DocEntity> docs)  $default,) {final _that = this;
switch (_that) {
case _OrderEntity():
return $default(_that.id,_that.sallaOrderId,_that.printedName,_that.executionNumber,_that.docs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int sallaOrderId,  String printedName,  String executionNumber,  List<DocEntity> docs)?  $default,) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.sallaOrderId,_that.printedName,_that.executionNumber,_that.docs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderEntity extends OrderEntity {
  const _OrderEntity({required this.id, required this.sallaOrderId, required this.printedName, required this.executionNumber, required final  List<DocEntity> docs}): _docs = docs,super._();
  factory _OrderEntity.fromJson(Map<String, dynamic> json) => _$OrderEntityFromJson(json);

@override final  int id;
@override final  int sallaOrderId;
@override final  String printedName;
@override final  String executionNumber;
 final  List<DocEntity> _docs;
@override List<DocEntity> get docs {
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_docs);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.sallaOrderId, sallaOrderId) || other.sallaOrderId == sallaOrderId)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&const DeepCollectionEquality().equals(other._docs, _docs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sallaOrderId,printedName,executionNumber,const DeepCollectionEquality().hash(_docs));

@override
String toString() {
  return 'OrderEntity(id: $id, sallaOrderId: $sallaOrderId, printedName: $printedName, executionNumber: $executionNumber, docs: $docs)';
}


}

/// @nodoc
abstract mixin class _$OrderEntityCopyWith<$Res> implements $OrderEntityCopyWith<$Res> {
  factory _$OrderEntityCopyWith(_OrderEntity value, $Res Function(_OrderEntity) _then) = __$OrderEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int sallaOrderId, String printedName, String executionNumber, List<DocEntity> docs
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sallaOrderId = null,Object? printedName = null,Object? executionNumber = null,Object? docs = null,}) {
  return _then(_OrderEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sallaOrderId: null == sallaOrderId ? _self.sallaOrderId : sallaOrderId // ignore: cast_nullable_to_non_nullable
as int,printedName: null == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String,executionNumber: null == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
as String,docs: null == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocEntity>,
  ));
}


}


/// @nodoc
mixin _$DocEntity {

 int get id; String? get imageOne; String? get imageTwo; String? get thumbnailUrlOne; String? get thumbnailUrlTwo; String? get videoOne; String? get videoTwo; String? get latitude; String? get longitude; DocStatusEntity? get docStatus; int? get copiesCount; String? get reviewedBy; String? get reviewedAt; String? get adminNotes; String? get createdAt; String? get updatedAt;
/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocEntityCopyWith<DocEntity> get copyWith => _$DocEntityCopyWithImpl<DocEntity>(this as DocEntity, _$identity);

  /// Serializes this DocEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.thumbnailUrlOne, thumbnailUrlOne) || other.thumbnailUrlOne == thumbnailUrlOne)&&(identical(other.thumbnailUrlTwo, thumbnailUrlTwo) || other.thumbnailUrlTwo == thumbnailUrlTwo)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.docStatus, docStatus) || other.docStatus == docStatus)&&(identical(other.copiesCount, copiesCount) || other.copiesCount == copiesCount)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageOne,imageTwo,thumbnailUrlOne,thumbnailUrlTwo,videoOne,videoTwo,latitude,longitude,docStatus,copiesCount,reviewedBy,reviewedAt,adminNotes,createdAt,updatedAt);

@override
String toString() {
  return 'DocEntity(id: $id, imageOne: $imageOne, imageTwo: $imageTwo, thumbnailUrlOne: $thumbnailUrlOne, thumbnailUrlTwo: $thumbnailUrlTwo, videoOne: $videoOne, videoTwo: $videoTwo, latitude: $latitude, longitude: $longitude, docStatus: $docStatus, copiesCount: $copiesCount, reviewedBy: $reviewedBy, reviewedAt: $reviewedAt, adminNotes: $adminNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DocEntityCopyWith<$Res>  {
  factory $DocEntityCopyWith(DocEntity value, $Res Function(DocEntity) _then) = _$DocEntityCopyWithImpl;
@useResult
$Res call({
 int id, String? imageOne, String? imageTwo, String? thumbnailUrlOne, String? thumbnailUrlTwo, String? videoOne, String? videoTwo, String? latitude, String? longitude, DocStatusEntity? docStatus, int? copiesCount, String? reviewedBy, String? reviewedAt, String? adminNotes, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$DocEntityCopyWithImpl<$Res>
    implements $DocEntityCopyWith<$Res> {
  _$DocEntityCopyWithImpl(this._self, this._then);

  final DocEntity _self;
  final $Res Function(DocEntity) _then;

/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageOne = freezed,Object? imageTwo = freezed,Object? thumbnailUrlOne = freezed,Object? thumbnailUrlTwo = freezed,Object? videoOne = freezed,Object? videoTwo = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? docStatus = freezed,Object? copiesCount = freezed,Object? reviewedBy = freezed,Object? reviewedAt = freezed,Object? adminNotes = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as String?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlOne: freezed == thumbnailUrlOne ? _self.thumbnailUrlOne : thumbnailUrlOne // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlTwo: freezed == thumbnailUrlTwo ? _self.thumbnailUrlTwo : thumbnailUrlTwo // ignore: cast_nullable_to_non_nullable
as String?,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as String?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,docStatus: freezed == docStatus ? _self.docStatus : docStatus // ignore: cast_nullable_to_non_nullable
as DocStatusEntity?,copiesCount: freezed == copiesCount ? _self.copiesCount : copiesCount // ignore: cast_nullable_to_non_nullable
as int?,reviewedBy: freezed == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,adminNotes: freezed == adminNotes ? _self.adminNotes : adminNotes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DocEntity].
extension DocEntityPatterns on DocEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocEntity value)  $default,){
final _that = this;
switch (_that) {
case _DocEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DocEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? imageOne,  String? imageTwo,  String? thumbnailUrlOne,  String? thumbnailUrlTwo,  String? videoOne,  String? videoTwo,  String? latitude,  String? longitude,  DocStatusEntity? docStatus,  int? copiesCount,  String? reviewedBy,  String? reviewedAt,  String? adminNotes,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocEntity() when $default != null:
return $default(_that.id,_that.imageOne,_that.imageTwo,_that.thumbnailUrlOne,_that.thumbnailUrlTwo,_that.videoOne,_that.videoTwo,_that.latitude,_that.longitude,_that.docStatus,_that.copiesCount,_that.reviewedBy,_that.reviewedAt,_that.adminNotes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? imageOne,  String? imageTwo,  String? thumbnailUrlOne,  String? thumbnailUrlTwo,  String? videoOne,  String? videoTwo,  String? latitude,  String? longitude,  DocStatusEntity? docStatus,  int? copiesCount,  String? reviewedBy,  String? reviewedAt,  String? adminNotes,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DocEntity():
return $default(_that.id,_that.imageOne,_that.imageTwo,_that.thumbnailUrlOne,_that.thumbnailUrlTwo,_that.videoOne,_that.videoTwo,_that.latitude,_that.longitude,_that.docStatus,_that.copiesCount,_that.reviewedBy,_that.reviewedAt,_that.adminNotes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? imageOne,  String? imageTwo,  String? thumbnailUrlOne,  String? thumbnailUrlTwo,  String? videoOne,  String? videoTwo,  String? latitude,  String? longitude,  DocStatusEntity? docStatus,  int? copiesCount,  String? reviewedBy,  String? reviewedAt,  String? adminNotes,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DocEntity() when $default != null:
return $default(_that.id,_that.imageOne,_that.imageTwo,_that.thumbnailUrlOne,_that.thumbnailUrlTwo,_that.videoOne,_that.videoTwo,_that.latitude,_that.longitude,_that.docStatus,_that.copiesCount,_that.reviewedBy,_that.reviewedAt,_that.adminNotes,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocEntity extends DocEntity {
  const _DocEntity({required this.id, this.imageOne, this.imageTwo, this.thumbnailUrlOne, this.thumbnailUrlTwo, this.videoOne, this.videoTwo, this.latitude, this.longitude, this.docStatus, this.copiesCount, this.reviewedBy, this.reviewedAt, this.adminNotes, this.createdAt, this.updatedAt}): super._();
  factory _DocEntity.fromJson(Map<String, dynamic> json) => _$DocEntityFromJson(json);

@override final  int id;
@override final  String? imageOne;
@override final  String? imageTwo;
@override final  String? thumbnailUrlOne;
@override final  String? thumbnailUrlTwo;
@override final  String? videoOne;
@override final  String? videoTwo;
@override final  String? latitude;
@override final  String? longitude;
@override final  DocStatusEntity? docStatus;
@override final  int? copiesCount;
@override final  String? reviewedBy;
@override final  String? reviewedAt;
@override final  String? adminNotes;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocEntityCopyWith<_DocEntity> get copyWith => __$DocEntityCopyWithImpl<_DocEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.thumbnailUrlOne, thumbnailUrlOne) || other.thumbnailUrlOne == thumbnailUrlOne)&&(identical(other.thumbnailUrlTwo, thumbnailUrlTwo) || other.thumbnailUrlTwo == thumbnailUrlTwo)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.docStatus, docStatus) || other.docStatus == docStatus)&&(identical(other.copiesCount, copiesCount) || other.copiesCount == copiesCount)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageOne,imageTwo,thumbnailUrlOne,thumbnailUrlTwo,videoOne,videoTwo,latitude,longitude,docStatus,copiesCount,reviewedBy,reviewedAt,adminNotes,createdAt,updatedAt);

@override
String toString() {
  return 'DocEntity(id: $id, imageOne: $imageOne, imageTwo: $imageTwo, thumbnailUrlOne: $thumbnailUrlOne, thumbnailUrlTwo: $thumbnailUrlTwo, videoOne: $videoOne, videoTwo: $videoTwo, latitude: $latitude, longitude: $longitude, docStatus: $docStatus, copiesCount: $copiesCount, reviewedBy: $reviewedBy, reviewedAt: $reviewedAt, adminNotes: $adminNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DocEntityCopyWith<$Res> implements $DocEntityCopyWith<$Res> {
  factory _$DocEntityCopyWith(_DocEntity value, $Res Function(_DocEntity) _then) = __$DocEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String? imageOne, String? imageTwo, String? thumbnailUrlOne, String? thumbnailUrlTwo, String? videoOne, String? videoTwo, String? latitude, String? longitude, DocStatusEntity? docStatus, int? copiesCount, String? reviewedBy, String? reviewedAt, String? adminNotes, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$DocEntityCopyWithImpl<$Res>
    implements _$DocEntityCopyWith<$Res> {
  __$DocEntityCopyWithImpl(this._self, this._then);

  final _DocEntity _self;
  final $Res Function(_DocEntity) _then;

/// Create a copy of DocEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageOne = freezed,Object? imageTwo = freezed,Object? thumbnailUrlOne = freezed,Object? thumbnailUrlTwo = freezed,Object? videoOne = freezed,Object? videoTwo = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? docStatus = freezed,Object? copiesCount = freezed,Object? reviewedBy = freezed,Object? reviewedAt = freezed,Object? adminNotes = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_DocEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as String?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlOne: freezed == thumbnailUrlOne ? _self.thumbnailUrlOne : thumbnailUrlOne // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrlTwo: freezed == thumbnailUrlTwo ? _self.thumbnailUrlTwo : thumbnailUrlTwo // ignore: cast_nullable_to_non_nullable
as String?,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as String?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,docStatus: freezed == docStatus ? _self.docStatus : docStatus // ignore: cast_nullable_to_non_nullable
as DocStatusEntity?,copiesCount: freezed == copiesCount ? _self.copiesCount : copiesCount // ignore: cast_nullable_to_non_nullable
as int?,reviewedBy: freezed == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,adminNotes: freezed == adminNotes ? _self.adminNotes : adminNotes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
