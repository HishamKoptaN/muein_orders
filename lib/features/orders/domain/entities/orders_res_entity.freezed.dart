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

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'printed_name') String? get printedName;@JsonKey(name: 'phone') String? get phone;@JsonKey(name: 'status') int? get status;@JsonKey(name: 'sticker_prepared') bool? get stickerPrepared;@JsonKey(name: 'videos_uploaded') bool? get videosUploaded;@JsonKey(name: 'final_estimate_ready') bool? get finalEstimateReady;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'execution_num') String? get executionNum;@JsonKey(name: 'order_num') String? get orderNum;@JsonKey(name: 'carton_count') int? get cartonCount;@JsonKey(name: 'orders_count') int? get ordersCount;@JsonKey(name: 'total_amount') String? get totalAmount;@JsonKey(name: 'date') DateTime? get date;@JsonKey(name: 'is_quran_printed') bool? get isQuranPrinted;@JsonKey(name: 'is_quran_photographed') bool? get isQuranPhotographed;@JsonKey(name: 'is_distribution_photographed') bool? get isDistributionPhotographed;@JsonKey(name: 'is_location_received') bool? get isLocationReceived;@JsonKey(name: 'location_link') dynamic get locationLink;@JsonKey(name: 'is_final_report_ready') bool? get isFinalReportReady;@JsonKey(name: 'is_report_sent') bool? get isReportSent;@JsonKey(name: 'origin_country_id') int? get originCountryId;@JsonKey(name: 'distribution_country_id') int? get distributionCountryId;@JsonKey(name: 'package_id') int? get packageId;@JsonKey(name: 'quran_copies_count') int? get quranCopiesCount;
/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<OrderEntity> get copyWith => _$OrderEntityCopyWithImpl<OrderEntity>(this as OrderEntity, _$identity);

  /// Serializes this OrderEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.status, status) || other.status == status)&&(identical(other.stickerPrepared, stickerPrepared) || other.stickerPrepared == stickerPrepared)&&(identical(other.videosUploaded, videosUploaded) || other.videosUploaded == videosUploaded)&&(identical(other.finalEstimateReady, finalEstimateReady) || other.finalEstimateReady == finalEstimateReady)&&(identical(other.email, email) || other.email == email)&&(identical(other.executionNum, executionNum) || other.executionNum == executionNum)&&(identical(other.orderNum, orderNum) || other.orderNum == orderNum)&&(identical(other.cartonCount, cartonCount) || other.cartonCount == cartonCount)&&(identical(other.ordersCount, ordersCount) || other.ordersCount == ordersCount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.date, date) || other.date == date)&&(identical(other.isQuranPrinted, isQuranPrinted) || other.isQuranPrinted == isQuranPrinted)&&(identical(other.isQuranPhotographed, isQuranPhotographed) || other.isQuranPhotographed == isQuranPhotographed)&&(identical(other.isDistributionPhotographed, isDistributionPhotographed) || other.isDistributionPhotographed == isDistributionPhotographed)&&(identical(other.isLocationReceived, isLocationReceived) || other.isLocationReceived == isLocationReceived)&&const DeepCollectionEquality().equals(other.locationLink, locationLink)&&(identical(other.isFinalReportReady, isFinalReportReady) || other.isFinalReportReady == isFinalReportReady)&&(identical(other.isReportSent, isReportSent) || other.isReportSent == isReportSent)&&(identical(other.originCountryId, originCountryId) || other.originCountryId == originCountryId)&&(identical(other.distributionCountryId, distributionCountryId) || other.distributionCountryId == distributionCountryId)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.quranCopiesCount, quranCopiesCount) || other.quranCopiesCount == quranCopiesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,name,printedName,phone,status,stickerPrepared,videosUploaded,finalEstimateReady,email,executionNum,orderNum,cartonCount,ordersCount,totalAmount,date,isQuranPrinted,isQuranPhotographed,isDistributionPhotographed,isLocationReceived,const DeepCollectionEquality().hash(locationLink),isFinalReportReady,isReportSent,originCountryId,distributionCountryId,packageId,quranCopiesCount]);

@override
String toString() {
  return 'OrderEntity(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, printedName: $printedName, phone: $phone, status: $status, stickerPrepared: $stickerPrepared, videosUploaded: $videosUploaded, finalEstimateReady: $finalEstimateReady, email: $email, executionNum: $executionNum, orderNum: $orderNum, cartonCount: $cartonCount, ordersCount: $ordersCount, totalAmount: $totalAmount, date: $date, isQuranPrinted: $isQuranPrinted, isQuranPhotographed: $isQuranPhotographed, isDistributionPhotographed: $isDistributionPhotographed, isLocationReceived: $isLocationReceived, locationLink: $locationLink, isFinalReportReady: $isFinalReportReady, isReportSent: $isReportSent, originCountryId: $originCountryId, distributionCountryId: $distributionCountryId, packageId: $packageId, quranCopiesCount: $quranCopiesCount)';
}


}

/// @nodoc
abstract mixin class $OrderEntityCopyWith<$Res>  {
  factory $OrderEntityCopyWith(OrderEntity value, $Res Function(OrderEntity) _then) = _$OrderEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'name') String? name,@JsonKey(name: 'printed_name') String? printedName,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'status') int? status,@JsonKey(name: 'sticker_prepared') bool? stickerPrepared,@JsonKey(name: 'videos_uploaded') bool? videosUploaded,@JsonKey(name: 'final_estimate_ready') bool? finalEstimateReady,@JsonKey(name: 'email') String? email,@JsonKey(name: 'execution_num') String? executionNum,@JsonKey(name: 'order_num') String? orderNum,@JsonKey(name: 'carton_count') int? cartonCount,@JsonKey(name: 'orders_count') int? ordersCount,@JsonKey(name: 'total_amount') String? totalAmount,@JsonKey(name: 'date') DateTime? date,@JsonKey(name: 'is_quran_printed') bool? isQuranPrinted,@JsonKey(name: 'is_quran_photographed') bool? isQuranPhotographed,@JsonKey(name: 'is_distribution_photographed') bool? isDistributionPhotographed,@JsonKey(name: 'is_location_received') bool? isLocationReceived,@JsonKey(name: 'location_link') dynamic locationLink,@JsonKey(name: 'is_final_report_ready') bool? isFinalReportReady,@JsonKey(name: 'is_report_sent') bool? isReportSent,@JsonKey(name: 'origin_country_id') int? originCountryId,@JsonKey(name: 'distribution_country_id') int? distributionCountryId,@JsonKey(name: 'package_id') int? packageId,@JsonKey(name: 'quran_copies_count') int? quranCopiesCount
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? name = freezed,Object? printedName = freezed,Object? phone = freezed,Object? status = freezed,Object? stickerPrepared = freezed,Object? videosUploaded = freezed,Object? finalEstimateReady = freezed,Object? email = freezed,Object? executionNum = freezed,Object? orderNum = freezed,Object? cartonCount = freezed,Object? ordersCount = freezed,Object? totalAmount = freezed,Object? date = freezed,Object? isQuranPrinted = freezed,Object? isQuranPhotographed = freezed,Object? isDistributionPhotographed = freezed,Object? isLocationReceived = freezed,Object? locationLink = freezed,Object? isFinalReportReady = freezed,Object? isReportSent = freezed,Object? originCountryId = freezed,Object? distributionCountryId = freezed,Object? packageId = freezed,Object? quranCopiesCount = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,stickerPrepared: freezed == stickerPrepared ? _self.stickerPrepared : stickerPrepared // ignore: cast_nullable_to_non_nullable
as bool?,videosUploaded: freezed == videosUploaded ? _self.videosUploaded : videosUploaded // ignore: cast_nullable_to_non_nullable
as bool?,finalEstimateReady: freezed == finalEstimateReady ? _self.finalEstimateReady : finalEstimateReady // ignore: cast_nullable_to_non_nullable
as bool?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,executionNum: freezed == executionNum ? _self.executionNum : executionNum // ignore: cast_nullable_to_non_nullable
as String?,orderNum: freezed == orderNum ? _self.orderNum : orderNum // ignore: cast_nullable_to_non_nullable
as String?,cartonCount: freezed == cartonCount ? _self.cartonCount : cartonCount // ignore: cast_nullable_to_non_nullable
as int?,ordersCount: freezed == ordersCount ? _self.ordersCount : ordersCount // ignore: cast_nullable_to_non_nullable
as int?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,isQuranPrinted: freezed == isQuranPrinted ? _self.isQuranPrinted : isQuranPrinted // ignore: cast_nullable_to_non_nullable
as bool?,isQuranPhotographed: freezed == isQuranPhotographed ? _self.isQuranPhotographed : isQuranPhotographed // ignore: cast_nullable_to_non_nullable
as bool?,isDistributionPhotographed: freezed == isDistributionPhotographed ? _self.isDistributionPhotographed : isDistributionPhotographed // ignore: cast_nullable_to_non_nullable
as bool?,isLocationReceived: freezed == isLocationReceived ? _self.isLocationReceived : isLocationReceived // ignore: cast_nullable_to_non_nullable
as bool?,locationLink: freezed == locationLink ? _self.locationLink : locationLink // ignore: cast_nullable_to_non_nullable
as dynamic,isFinalReportReady: freezed == isFinalReportReady ? _self.isFinalReportReady : isFinalReportReady // ignore: cast_nullable_to_non_nullable
as bool?,isReportSent: freezed == isReportSent ? _self.isReportSent : isReportSent // ignore: cast_nullable_to_non_nullable
as bool?,originCountryId: freezed == originCountryId ? _self.originCountryId : originCountryId // ignore: cast_nullable_to_non_nullable
as int?,distributionCountryId: freezed == distributionCountryId ? _self.distributionCountryId : distributionCountryId // ignore: cast_nullable_to_non_nullable
as int?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as int?,quranCopiesCount: freezed == quranCopiesCount ? _self.quranCopiesCount : quranCopiesCount // ignore: cast_nullable_to_non_nullable
as int?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'status')  int? status, @JsonKey(name: 'sticker_prepared')  bool? stickerPrepared, @JsonKey(name: 'videos_uploaded')  bool? videosUploaded, @JsonKey(name: 'final_estimate_ready')  bool? finalEstimateReady, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'execution_num')  String? executionNum, @JsonKey(name: 'order_num')  String? orderNum, @JsonKey(name: 'carton_count')  int? cartonCount, @JsonKey(name: 'orders_count')  int? ordersCount, @JsonKey(name: 'total_amount')  String? totalAmount, @JsonKey(name: 'date')  DateTime? date, @JsonKey(name: 'is_quran_printed')  bool? isQuranPrinted, @JsonKey(name: 'is_quran_photographed')  bool? isQuranPhotographed, @JsonKey(name: 'is_distribution_photographed')  bool? isDistributionPhotographed, @JsonKey(name: 'is_location_received')  bool? isLocationReceived, @JsonKey(name: 'location_link')  dynamic locationLink, @JsonKey(name: 'is_final_report_ready')  bool? isFinalReportReady, @JsonKey(name: 'is_report_sent')  bool? isReportSent, @JsonKey(name: 'origin_country_id')  int? originCountryId, @JsonKey(name: 'distribution_country_id')  int? distributionCountryId, @JsonKey(name: 'package_id')  int? packageId, @JsonKey(name: 'quran_copies_count')  int? quranCopiesCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.printedName,_that.phone,_that.status,_that.stickerPrepared,_that.videosUploaded,_that.finalEstimateReady,_that.email,_that.executionNum,_that.orderNum,_that.cartonCount,_that.ordersCount,_that.totalAmount,_that.date,_that.isQuranPrinted,_that.isQuranPhotographed,_that.isDistributionPhotographed,_that.isLocationReceived,_that.locationLink,_that.isFinalReportReady,_that.isReportSent,_that.originCountryId,_that.distributionCountryId,_that.packageId,_that.quranCopiesCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'status')  int? status, @JsonKey(name: 'sticker_prepared')  bool? stickerPrepared, @JsonKey(name: 'videos_uploaded')  bool? videosUploaded, @JsonKey(name: 'final_estimate_ready')  bool? finalEstimateReady, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'execution_num')  String? executionNum, @JsonKey(name: 'order_num')  String? orderNum, @JsonKey(name: 'carton_count')  int? cartonCount, @JsonKey(name: 'orders_count')  int? ordersCount, @JsonKey(name: 'total_amount')  String? totalAmount, @JsonKey(name: 'date')  DateTime? date, @JsonKey(name: 'is_quran_printed')  bool? isQuranPrinted, @JsonKey(name: 'is_quran_photographed')  bool? isQuranPhotographed, @JsonKey(name: 'is_distribution_photographed')  bool? isDistributionPhotographed, @JsonKey(name: 'is_location_received')  bool? isLocationReceived, @JsonKey(name: 'location_link')  dynamic locationLink, @JsonKey(name: 'is_final_report_ready')  bool? isFinalReportReady, @JsonKey(name: 'is_report_sent')  bool? isReportSent, @JsonKey(name: 'origin_country_id')  int? originCountryId, @JsonKey(name: 'distribution_country_id')  int? distributionCountryId, @JsonKey(name: 'package_id')  int? packageId, @JsonKey(name: 'quran_copies_count')  int? quranCopiesCount)  $default,) {final _that = this;
switch (_that) {
case _OrderEntity():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.printedName,_that.phone,_that.status,_that.stickerPrepared,_that.videosUploaded,_that.finalEstimateReady,_that.email,_that.executionNum,_that.orderNum,_that.cartonCount,_that.ordersCount,_that.totalAmount,_that.date,_that.isQuranPrinted,_that.isQuranPhotographed,_that.isDistributionPhotographed,_that.isLocationReceived,_that.locationLink,_that.isFinalReportReady,_that.isReportSent,_that.originCountryId,_that.distributionCountryId,_that.packageId,_that.quranCopiesCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'printed_name')  String? printedName, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'status')  int? status, @JsonKey(name: 'sticker_prepared')  bool? stickerPrepared, @JsonKey(name: 'videos_uploaded')  bool? videosUploaded, @JsonKey(name: 'final_estimate_ready')  bool? finalEstimateReady, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'execution_num')  String? executionNum, @JsonKey(name: 'order_num')  String? orderNum, @JsonKey(name: 'carton_count')  int? cartonCount, @JsonKey(name: 'orders_count')  int? ordersCount, @JsonKey(name: 'total_amount')  String? totalAmount, @JsonKey(name: 'date')  DateTime? date, @JsonKey(name: 'is_quran_printed')  bool? isQuranPrinted, @JsonKey(name: 'is_quran_photographed')  bool? isQuranPhotographed, @JsonKey(name: 'is_distribution_photographed')  bool? isDistributionPhotographed, @JsonKey(name: 'is_location_received')  bool? isLocationReceived, @JsonKey(name: 'location_link')  dynamic locationLink, @JsonKey(name: 'is_final_report_ready')  bool? isFinalReportReady, @JsonKey(name: 'is_report_sent')  bool? isReportSent, @JsonKey(name: 'origin_country_id')  int? originCountryId, @JsonKey(name: 'distribution_country_id')  int? distributionCountryId, @JsonKey(name: 'package_id')  int? packageId, @JsonKey(name: 'quran_copies_count')  int? quranCopiesCount)?  $default,) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.printedName,_that.phone,_that.status,_that.stickerPrepared,_that.videosUploaded,_that.finalEstimateReady,_that.email,_that.executionNum,_that.orderNum,_that.cartonCount,_that.ordersCount,_that.totalAmount,_that.date,_that.isQuranPrinted,_that.isQuranPhotographed,_that.isDistributionPhotographed,_that.isLocationReceived,_that.locationLink,_that.isFinalReportReady,_that.isReportSent,_that.originCountryId,_that.distributionCountryId,_that.packageId,_that.quranCopiesCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderEntity implements OrderEntity {
  const _OrderEntity({@JsonKey(name: 'id') this.id, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'name') this.name, @JsonKey(name: 'printed_name') this.printedName, @JsonKey(name: 'phone') this.phone, @JsonKey(name: 'status') this.status, @JsonKey(name: 'sticker_prepared') this.stickerPrepared, @JsonKey(name: 'videos_uploaded') this.videosUploaded, @JsonKey(name: 'final_estimate_ready') this.finalEstimateReady, @JsonKey(name: 'email') this.email, @JsonKey(name: 'execution_num') this.executionNum, @JsonKey(name: 'order_num') this.orderNum, @JsonKey(name: 'carton_count') this.cartonCount, @JsonKey(name: 'orders_count') this.ordersCount, @JsonKey(name: 'total_amount') this.totalAmount, @JsonKey(name: 'date') this.date, @JsonKey(name: 'is_quran_printed') this.isQuranPrinted, @JsonKey(name: 'is_quran_photographed') this.isQuranPhotographed, @JsonKey(name: 'is_distribution_photographed') this.isDistributionPhotographed, @JsonKey(name: 'is_location_received') this.isLocationReceived, @JsonKey(name: 'location_link') this.locationLink, @JsonKey(name: 'is_final_report_ready') this.isFinalReportReady, @JsonKey(name: 'is_report_sent') this.isReportSent, @JsonKey(name: 'origin_country_id') this.originCountryId, @JsonKey(name: 'distribution_country_id') this.distributionCountryId, @JsonKey(name: 'package_id') this.packageId, @JsonKey(name: 'quran_copies_count') this.quranCopiesCount});
  factory _OrderEntity.fromJson(Map<String, dynamic> json) => _$OrderEntityFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'printed_name') final  String? printedName;
@override@JsonKey(name: 'phone') final  String? phone;
@override@JsonKey(name: 'status') final  int? status;
@override@JsonKey(name: 'sticker_prepared') final  bool? stickerPrepared;
@override@JsonKey(name: 'videos_uploaded') final  bool? videosUploaded;
@override@JsonKey(name: 'final_estimate_ready') final  bool? finalEstimateReady;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'execution_num') final  String? executionNum;
@override@JsonKey(name: 'order_num') final  String? orderNum;
@override@JsonKey(name: 'carton_count') final  int? cartonCount;
@override@JsonKey(name: 'orders_count') final  int? ordersCount;
@override@JsonKey(name: 'total_amount') final  String? totalAmount;
@override@JsonKey(name: 'date') final  DateTime? date;
@override@JsonKey(name: 'is_quran_printed') final  bool? isQuranPrinted;
@override@JsonKey(name: 'is_quran_photographed') final  bool? isQuranPhotographed;
@override@JsonKey(name: 'is_distribution_photographed') final  bool? isDistributionPhotographed;
@override@JsonKey(name: 'is_location_received') final  bool? isLocationReceived;
@override@JsonKey(name: 'location_link') final  dynamic locationLink;
@override@JsonKey(name: 'is_final_report_ready') final  bool? isFinalReportReady;
@override@JsonKey(name: 'is_report_sent') final  bool? isReportSent;
@override@JsonKey(name: 'origin_country_id') final  int? originCountryId;
@override@JsonKey(name: 'distribution_country_id') final  int? distributionCountryId;
@override@JsonKey(name: 'package_id') final  int? packageId;
@override@JsonKey(name: 'quran_copies_count') final  int? quranCopiesCount;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.status, status) || other.status == status)&&(identical(other.stickerPrepared, stickerPrepared) || other.stickerPrepared == stickerPrepared)&&(identical(other.videosUploaded, videosUploaded) || other.videosUploaded == videosUploaded)&&(identical(other.finalEstimateReady, finalEstimateReady) || other.finalEstimateReady == finalEstimateReady)&&(identical(other.email, email) || other.email == email)&&(identical(other.executionNum, executionNum) || other.executionNum == executionNum)&&(identical(other.orderNum, orderNum) || other.orderNum == orderNum)&&(identical(other.cartonCount, cartonCount) || other.cartonCount == cartonCount)&&(identical(other.ordersCount, ordersCount) || other.ordersCount == ordersCount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.date, date) || other.date == date)&&(identical(other.isQuranPrinted, isQuranPrinted) || other.isQuranPrinted == isQuranPrinted)&&(identical(other.isQuranPhotographed, isQuranPhotographed) || other.isQuranPhotographed == isQuranPhotographed)&&(identical(other.isDistributionPhotographed, isDistributionPhotographed) || other.isDistributionPhotographed == isDistributionPhotographed)&&(identical(other.isLocationReceived, isLocationReceived) || other.isLocationReceived == isLocationReceived)&&const DeepCollectionEquality().equals(other.locationLink, locationLink)&&(identical(other.isFinalReportReady, isFinalReportReady) || other.isFinalReportReady == isFinalReportReady)&&(identical(other.isReportSent, isReportSent) || other.isReportSent == isReportSent)&&(identical(other.originCountryId, originCountryId) || other.originCountryId == originCountryId)&&(identical(other.distributionCountryId, distributionCountryId) || other.distributionCountryId == distributionCountryId)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.quranCopiesCount, quranCopiesCount) || other.quranCopiesCount == quranCopiesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,name,printedName,phone,status,stickerPrepared,videosUploaded,finalEstimateReady,email,executionNum,orderNum,cartonCount,ordersCount,totalAmount,date,isQuranPrinted,isQuranPhotographed,isDistributionPhotographed,isLocationReceived,const DeepCollectionEquality().hash(locationLink),isFinalReportReady,isReportSent,originCountryId,distributionCountryId,packageId,quranCopiesCount]);

@override
String toString() {
  return 'OrderEntity(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, printedName: $printedName, phone: $phone, status: $status, stickerPrepared: $stickerPrepared, videosUploaded: $videosUploaded, finalEstimateReady: $finalEstimateReady, email: $email, executionNum: $executionNum, orderNum: $orderNum, cartonCount: $cartonCount, ordersCount: $ordersCount, totalAmount: $totalAmount, date: $date, isQuranPrinted: $isQuranPrinted, isQuranPhotographed: $isQuranPhotographed, isDistributionPhotographed: $isDistributionPhotographed, isLocationReceived: $isLocationReceived, locationLink: $locationLink, isFinalReportReady: $isFinalReportReady, isReportSent: $isReportSent, originCountryId: $originCountryId, distributionCountryId: $distributionCountryId, packageId: $packageId, quranCopiesCount: $quranCopiesCount)';
}


}

/// @nodoc
abstract mixin class _$OrderEntityCopyWith<$Res> implements $OrderEntityCopyWith<$Res> {
  factory _$OrderEntityCopyWith(_OrderEntity value, $Res Function(_OrderEntity) _then) = __$OrderEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'name') String? name,@JsonKey(name: 'printed_name') String? printedName,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'status') int? status,@JsonKey(name: 'sticker_prepared') bool? stickerPrepared,@JsonKey(name: 'videos_uploaded') bool? videosUploaded,@JsonKey(name: 'final_estimate_ready') bool? finalEstimateReady,@JsonKey(name: 'email') String? email,@JsonKey(name: 'execution_num') String? executionNum,@JsonKey(name: 'order_num') String? orderNum,@JsonKey(name: 'carton_count') int? cartonCount,@JsonKey(name: 'orders_count') int? ordersCount,@JsonKey(name: 'total_amount') String? totalAmount,@JsonKey(name: 'date') DateTime? date,@JsonKey(name: 'is_quran_printed') bool? isQuranPrinted,@JsonKey(name: 'is_quran_photographed') bool? isQuranPhotographed,@JsonKey(name: 'is_distribution_photographed') bool? isDistributionPhotographed,@JsonKey(name: 'is_location_received') bool? isLocationReceived,@JsonKey(name: 'location_link') dynamic locationLink,@JsonKey(name: 'is_final_report_ready') bool? isFinalReportReady,@JsonKey(name: 'is_report_sent') bool? isReportSent,@JsonKey(name: 'origin_country_id') int? originCountryId,@JsonKey(name: 'distribution_country_id') int? distributionCountryId,@JsonKey(name: 'package_id') int? packageId,@JsonKey(name: 'quran_copies_count') int? quranCopiesCount
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? name = freezed,Object? printedName = freezed,Object? phone = freezed,Object? status = freezed,Object? stickerPrepared = freezed,Object? videosUploaded = freezed,Object? finalEstimateReady = freezed,Object? email = freezed,Object? executionNum = freezed,Object? orderNum = freezed,Object? cartonCount = freezed,Object? ordersCount = freezed,Object? totalAmount = freezed,Object? date = freezed,Object? isQuranPrinted = freezed,Object? isQuranPhotographed = freezed,Object? isDistributionPhotographed = freezed,Object? isLocationReceived = freezed,Object? locationLink = freezed,Object? isFinalReportReady = freezed,Object? isReportSent = freezed,Object? originCountryId = freezed,Object? distributionCountryId = freezed,Object? packageId = freezed,Object? quranCopiesCount = freezed,}) {
  return _then(_OrderEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,stickerPrepared: freezed == stickerPrepared ? _self.stickerPrepared : stickerPrepared // ignore: cast_nullable_to_non_nullable
as bool?,videosUploaded: freezed == videosUploaded ? _self.videosUploaded : videosUploaded // ignore: cast_nullable_to_non_nullable
as bool?,finalEstimateReady: freezed == finalEstimateReady ? _self.finalEstimateReady : finalEstimateReady // ignore: cast_nullable_to_non_nullable
as bool?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,executionNum: freezed == executionNum ? _self.executionNum : executionNum // ignore: cast_nullable_to_non_nullable
as String?,orderNum: freezed == orderNum ? _self.orderNum : orderNum // ignore: cast_nullable_to_non_nullable
as String?,cartonCount: freezed == cartonCount ? _self.cartonCount : cartonCount // ignore: cast_nullable_to_non_nullable
as int?,ordersCount: freezed == ordersCount ? _self.ordersCount : ordersCount // ignore: cast_nullable_to_non_nullable
as int?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,isQuranPrinted: freezed == isQuranPrinted ? _self.isQuranPrinted : isQuranPrinted // ignore: cast_nullable_to_non_nullable
as bool?,isQuranPhotographed: freezed == isQuranPhotographed ? _self.isQuranPhotographed : isQuranPhotographed // ignore: cast_nullable_to_non_nullable
as bool?,isDistributionPhotographed: freezed == isDistributionPhotographed ? _self.isDistributionPhotographed : isDistributionPhotographed // ignore: cast_nullable_to_non_nullable
as bool?,isLocationReceived: freezed == isLocationReceived ? _self.isLocationReceived : isLocationReceived // ignore: cast_nullable_to_non_nullable
as bool?,locationLink: freezed == locationLink ? _self.locationLink : locationLink // ignore: cast_nullable_to_non_nullable
as dynamic,isFinalReportReady: freezed == isFinalReportReady ? _self.isFinalReportReady : isFinalReportReady // ignore: cast_nullable_to_non_nullable
as bool?,isReportSent: freezed == isReportSent ? _self.isReportSent : isReportSent // ignore: cast_nullable_to_non_nullable
as bool?,originCountryId: freezed == originCountryId ? _self.originCountryId : originCountryId // ignore: cast_nullable_to_non_nullable
as int?,distributionCountryId: freezed == distributionCountryId ? _self.distributionCountryId : distributionCountryId // ignore: cast_nullable_to_non_nullable
as int?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as int?,quranCopiesCount: freezed == quranCopiesCount ? _self.quranCopiesCount : quranCopiesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
