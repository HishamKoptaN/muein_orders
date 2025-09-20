// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrdersResModel _$OrdersResModelFromJson(Map<String, dynamic> json) {
  return _OrdersResModel.fromJson(json);
}

/// @nodoc
mixin _$OrdersResModel {
  @JsonKey(name: 'package')
  OrdersResModelPackage? get package => throw _privateConstructorUsedError;
  @JsonKey(name: 'orders')
  List<Order>? get orders => throw _privateConstructorUsedError;

  /// Serializes this OrdersResModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrdersResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersResModelCopyWith<OrdersResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersResModelCopyWith<$Res> {
  factory $OrdersResModelCopyWith(
          OrdersResModel value, $Res Function(OrdersResModel) then) =
      _$OrdersResModelCopyWithImpl<$Res, OrdersResModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'package') OrdersResModelPackage? package,
      @JsonKey(name: 'orders') List<Order>? orders});

  $OrdersResModelPackageCopyWith<$Res>? get package;
}

/// @nodoc
class _$OrdersResModelCopyWithImpl<$Res, $Val extends OrdersResModel>
    implements $OrdersResModelCopyWith<$Res> {
  _$OrdersResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = freezed,
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as OrdersResModelPackage?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ) as $Val);
  }

  /// Create a copy of OrdersResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrdersResModelPackageCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $OrdersResModelPackageCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrdersResModelImplCopyWith<$Res>
    implements $OrdersResModelCopyWith<$Res> {
  factory _$$OrdersResModelImplCopyWith(_$OrdersResModelImpl value,
          $Res Function(_$OrdersResModelImpl) then) =
      __$$OrdersResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'package') OrdersResModelPackage? package,
      @JsonKey(name: 'orders') List<Order>? orders});

  @override
  $OrdersResModelPackageCopyWith<$Res>? get package;
}

/// @nodoc
class __$$OrdersResModelImplCopyWithImpl<$Res>
    extends _$OrdersResModelCopyWithImpl<$Res, _$OrdersResModelImpl>
    implements _$$OrdersResModelImplCopyWith<$Res> {
  __$$OrdersResModelImplCopyWithImpl(
      _$OrdersResModelImpl _value, $Res Function(_$OrdersResModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = freezed,
    Object? orders = freezed,
  }) {
    return _then(_$OrdersResModelImpl(
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as OrdersResModelPackage?,
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersResModelImpl implements _OrdersResModel {
  const _$OrdersResModelImpl(
      {@JsonKey(name: 'package') this.package,
      @JsonKey(name: 'orders') final List<Order>? orders})
      : _orders = orders;

  factory _$OrdersResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersResModelImplFromJson(json);

  @override
  @JsonKey(name: 'package')
  final OrdersResModelPackage? package;
  final List<Order>? _orders;
  @override
  @JsonKey(name: 'orders')
  List<Order>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrdersResModel(package: $package, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersResModelImpl &&
            (identical(other.package, package) || other.package == package) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, package, const DeepCollectionEquality().hash(_orders));

  /// Create a copy of OrdersResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersResModelImplCopyWith<_$OrdersResModelImpl> get copyWith =>
      __$$OrdersResModelImplCopyWithImpl<_$OrdersResModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersResModelImplToJson(
      this,
    );
  }
}

abstract class _OrdersResModel implements OrdersResModel {
  const factory _OrdersResModel(
          {@JsonKey(name: 'package') final OrdersResModelPackage? package,
          @JsonKey(name: 'orders') final List<Order>? orders}) =
      _$OrdersResModelImpl;

  factory _OrdersResModel.fromJson(Map<String, dynamic> json) =
      _$OrdersResModelImpl.fromJson;

  @override
  @JsonKey(name: 'package')
  OrdersResModelPackage? get package;
  @override
  @JsonKey(name: 'orders')
  List<Order>? get orders;

  /// Create a copy of OrdersResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersResModelImplCopyWith<_$OrdersResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'printed_name')
  String? get printedName => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'execution_num')
  String? get executionNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_num')
  String? get orderNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'package')
  OrderPackage? get package => throw _privateConstructorUsedError;
  @JsonKey(name: 'carton_count')
  int? get cartonCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'orders_count')
  int? get ordersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  String? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'days')
  int? get days => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_quran_printed')
  bool? get isQuranPrinted => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_quran_photographed')
  bool? get isQuranPhotographed => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_distribution_photographed')
  bool? get isDistributionPhotographed => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_location_received')
  bool? get isLocationReceived => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_link')
  String? get locationLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_final_report_ready')
  bool? get isFinalReportReady => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_report_sent')
  bool? get isReportSent => throw _privateConstructorUsedError;
  @JsonKey(name: 'sticker_prepared')
  bool? get stickerPrepared => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos_uploaded')
  bool? get videosUploaded => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_estimate_ready')
  bool? get finalEstimateReady => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'printed_name') String? printedName,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'execution_num') String? executionNum,
      @JsonKey(name: 'order_num') String? orderNum,
      @JsonKey(name: 'package') OrderPackage? package,
      @JsonKey(name: 'carton_count') int? cartonCount,
      @JsonKey(name: 'orders_count') int? ordersCount,
      @JsonKey(name: 'total_amount') String? totalAmount,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'days') int? days,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'is_quran_printed') bool? isQuranPrinted,
      @JsonKey(name: 'is_quran_photographed') bool? isQuranPhotographed,
      @JsonKey(name: 'is_distribution_photographed')
      bool? isDistributionPhotographed,
      @JsonKey(name: 'is_location_received') bool? isLocationReceived,
      @JsonKey(name: 'location_link') String? locationLink,
      @JsonKey(name: 'is_final_report_ready') bool? isFinalReportReady,
      @JsonKey(name: 'is_report_sent') bool? isReportSent,
      @JsonKey(name: 'sticker_prepared') bool? stickerPrepared,
      @JsonKey(name: 'videos_uploaded') bool? videosUploaded,
      @JsonKey(name: 'final_estimate_ready') bool? finalEstimateReady});

  $OrderPackageCopyWith<$Res>? get package;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? printedName = freezed,
    Object? countryCode = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? executionNum = freezed,
    Object? orderNum = freezed,
    Object? package = freezed,
    Object? cartonCount = freezed,
    Object? ordersCount = freezed,
    Object? totalAmount = freezed,
    Object? date = freezed,
    Object? days = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? isQuranPrinted = freezed,
    Object? isQuranPhotographed = freezed,
    Object? isDistributionPhotographed = freezed,
    Object? isLocationReceived = freezed,
    Object? locationLink = freezed,
    Object? isFinalReportReady = freezed,
    Object? isReportSent = freezed,
    Object? stickerPrepared = freezed,
    Object? videosUploaded = freezed,
    Object? finalEstimateReady = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      printedName: freezed == printedName
          ? _value.printedName
          : printedName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      executionNum: freezed == executionNum
          ? _value.executionNum
          : executionNum // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNum: freezed == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as String?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as OrderPackage?,
      cartonCount: freezed == cartonCount
          ? _value.cartonCount
          : cartonCount // ignore: cast_nullable_to_non_nullable
              as int?,
      ordersCount: freezed == ordersCount
          ? _value.ordersCount
          : ordersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isQuranPrinted: freezed == isQuranPrinted
          ? _value.isQuranPrinted
          : isQuranPrinted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isQuranPhotographed: freezed == isQuranPhotographed
          ? _value.isQuranPhotographed
          : isQuranPhotographed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDistributionPhotographed: freezed == isDistributionPhotographed
          ? _value.isDistributionPhotographed
          : isDistributionPhotographed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLocationReceived: freezed == isLocationReceived
          ? _value.isLocationReceived
          : isLocationReceived // ignore: cast_nullable_to_non_nullable
              as bool?,
      locationLink: freezed == locationLink
          ? _value.locationLink
          : locationLink // ignore: cast_nullable_to_non_nullable
              as String?,
      isFinalReportReady: freezed == isFinalReportReady
          ? _value.isFinalReportReady
          : isFinalReportReady // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReportSent: freezed == isReportSent
          ? _value.isReportSent
          : isReportSent // ignore: cast_nullable_to_non_nullable
              as bool?,
      stickerPrepared: freezed == stickerPrepared
          ? _value.stickerPrepared
          : stickerPrepared // ignore: cast_nullable_to_non_nullable
              as bool?,
      videosUploaded: freezed == videosUploaded
          ? _value.videosUploaded
          : videosUploaded // ignore: cast_nullable_to_non_nullable
              as bool?,
      finalEstimateReady: freezed == finalEstimateReady
          ? _value.finalEstimateReady
          : finalEstimateReady // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderPackageCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $OrderPackageCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'printed_name') String? printedName,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'execution_num') String? executionNum,
      @JsonKey(name: 'order_num') String? orderNum,
      @JsonKey(name: 'package') OrderPackage? package,
      @JsonKey(name: 'carton_count') int? cartonCount,
      @JsonKey(name: 'orders_count') int? ordersCount,
      @JsonKey(name: 'total_amount') String? totalAmount,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'days') int? days,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'is_quran_printed') bool? isQuranPrinted,
      @JsonKey(name: 'is_quran_photographed') bool? isQuranPhotographed,
      @JsonKey(name: 'is_distribution_photographed')
      bool? isDistributionPhotographed,
      @JsonKey(name: 'is_location_received') bool? isLocationReceived,
      @JsonKey(name: 'location_link') String? locationLink,
      @JsonKey(name: 'is_final_report_ready') bool? isFinalReportReady,
      @JsonKey(name: 'is_report_sent') bool? isReportSent,
      @JsonKey(name: 'sticker_prepared') bool? stickerPrepared,
      @JsonKey(name: 'videos_uploaded') bool? videosUploaded,
      @JsonKey(name: 'final_estimate_ready') bool? finalEstimateReady});

  @override
  $OrderPackageCopyWith<$Res>? get package;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? printedName = freezed,
    Object? countryCode = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? executionNum = freezed,
    Object? orderNum = freezed,
    Object? package = freezed,
    Object? cartonCount = freezed,
    Object? ordersCount = freezed,
    Object? totalAmount = freezed,
    Object? date = freezed,
    Object? days = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? isQuranPrinted = freezed,
    Object? isQuranPhotographed = freezed,
    Object? isDistributionPhotographed = freezed,
    Object? isLocationReceived = freezed,
    Object? locationLink = freezed,
    Object? isFinalReportReady = freezed,
    Object? isReportSent = freezed,
    Object? stickerPrepared = freezed,
    Object? videosUploaded = freezed,
    Object? finalEstimateReady = freezed,
  }) {
    return _then(_$OrderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      printedName: freezed == printedName
          ? _value.printedName
          : printedName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      executionNum: freezed == executionNum
          ? _value.executionNum
          : executionNum // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNum: freezed == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as String?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as OrderPackage?,
      cartonCount: freezed == cartonCount
          ? _value.cartonCount
          : cartonCount // ignore: cast_nullable_to_non_nullable
              as int?,
      ordersCount: freezed == ordersCount
          ? _value.ordersCount
          : ordersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isQuranPrinted: freezed == isQuranPrinted
          ? _value.isQuranPrinted
          : isQuranPrinted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isQuranPhotographed: freezed == isQuranPhotographed
          ? _value.isQuranPhotographed
          : isQuranPhotographed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDistributionPhotographed: freezed == isDistributionPhotographed
          ? _value.isDistributionPhotographed
          : isDistributionPhotographed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLocationReceived: freezed == isLocationReceived
          ? _value.isLocationReceived
          : isLocationReceived // ignore: cast_nullable_to_non_nullable
              as bool?,
      locationLink: freezed == locationLink
          ? _value.locationLink
          : locationLink // ignore: cast_nullable_to_non_nullable
              as String?,
      isFinalReportReady: freezed == isFinalReportReady
          ? _value.isFinalReportReady
          : isFinalReportReady // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReportSent: freezed == isReportSent
          ? _value.isReportSent
          : isReportSent // ignore: cast_nullable_to_non_nullable
              as bool?,
      stickerPrepared: freezed == stickerPrepared
          ? _value.stickerPrepared
          : stickerPrepared // ignore: cast_nullable_to_non_nullable
              as bool?,
      videosUploaded: freezed == videosUploaded
          ? _value.videosUploaded
          : videosUploaded // ignore: cast_nullable_to_non_nullable
              as bool?,
      finalEstimateReady: freezed == finalEstimateReady
          ? _value.finalEstimateReady
          : finalEstimateReady // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  const _$OrderImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'printed_name') this.printedName,
      @JsonKey(name: 'country_code') this.countryCode,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'execution_num') this.executionNum,
      @JsonKey(name: 'order_num') this.orderNum,
      @JsonKey(name: 'package') this.package,
      @JsonKey(name: 'carton_count') this.cartonCount,
      @JsonKey(name: 'orders_count') this.ordersCount,
      @JsonKey(name: 'total_amount') this.totalAmount,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'days') this.days,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'is_quran_printed') this.isQuranPrinted,
      @JsonKey(name: 'is_quran_photographed') this.isQuranPhotographed,
      @JsonKey(name: 'is_distribution_photographed')
      this.isDistributionPhotographed,
      @JsonKey(name: 'is_location_received') this.isLocationReceived,
      @JsonKey(name: 'location_link') this.locationLink,
      @JsonKey(name: 'is_final_report_ready') this.isFinalReportReady,
      @JsonKey(name: 'is_report_sent') this.isReportSent,
      @JsonKey(name: 'sticker_prepared') this.stickerPrepared,
      @JsonKey(name: 'videos_uploaded') this.videosUploaded,
      @JsonKey(name: 'final_estimate_ready') this.finalEstimateReady});

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'printed_name')
  final String? printedName;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'execution_num')
  final String? executionNum;
  @override
  @JsonKey(name: 'order_num')
  final String? orderNum;
  @override
  @JsonKey(name: 'package')
  final OrderPackage? package;
  @override
  @JsonKey(name: 'carton_count')
  final int? cartonCount;
  @override
  @JsonKey(name: 'orders_count')
  final int? ordersCount;
  @override
  @JsonKey(name: 'total_amount')
  final String? totalAmount;
  @override
  @JsonKey(name: 'date')
  final DateTime? date;
  @override
  @JsonKey(name: 'days')
  final int? days;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'is_quran_printed')
  final bool? isQuranPrinted;
  @override
  @JsonKey(name: 'is_quran_photographed')
  final bool? isQuranPhotographed;
  @override
  @JsonKey(name: 'is_distribution_photographed')
  final bool? isDistributionPhotographed;
  @override
  @JsonKey(name: 'is_location_received')
  final bool? isLocationReceived;
  @override
  @JsonKey(name: 'location_link')
  final String? locationLink;
  @override
  @JsonKey(name: 'is_final_report_ready')
  final bool? isFinalReportReady;
  @override
  @JsonKey(name: 'is_report_sent')
  final bool? isReportSent;
  @override
  @JsonKey(name: 'sticker_prepared')
  final bool? stickerPrepared;
  @override
  @JsonKey(name: 'videos_uploaded')
  final bool? videosUploaded;
  @override
  @JsonKey(name: 'final_estimate_ready')
  final bool? finalEstimateReady;

  @override
  String toString() {
    return 'Order(id: $id, name: $name, printedName: $printedName, countryCode: $countryCode, status: $status, createdAt: $createdAt, executionNum: $executionNum, orderNum: $orderNum, package: $package, cartonCount: $cartonCount, ordersCount: $ordersCount, totalAmount: $totalAmount, date: $date, days: $days, email: $email, phone: $phone, isQuranPrinted: $isQuranPrinted, isQuranPhotographed: $isQuranPhotographed, isDistributionPhotographed: $isDistributionPhotographed, isLocationReceived: $isLocationReceived, locationLink: $locationLink, isFinalReportReady: $isFinalReportReady, isReportSent: $isReportSent, stickerPrepared: $stickerPrepared, videosUploaded: $videosUploaded, finalEstimateReady: $finalEstimateReady)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.printedName, printedName) ||
                other.printedName == printedName) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.executionNum, executionNum) ||
                other.executionNum == executionNum) &&
            (identical(other.orderNum, orderNum) ||
                other.orderNum == orderNum) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.cartonCount, cartonCount) ||
                other.cartonCount == cartonCount) &&
            (identical(other.ordersCount, ordersCount) ||
                other.ordersCount == ordersCount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isQuranPrinted, isQuranPrinted) ||
                other.isQuranPrinted == isQuranPrinted) &&
            (identical(other.isQuranPhotographed, isQuranPhotographed) ||
                other.isQuranPhotographed == isQuranPhotographed) &&
            (identical(other.isDistributionPhotographed,
                    isDistributionPhotographed) ||
                other.isDistributionPhotographed ==
                    isDistributionPhotographed) &&
            (identical(other.isLocationReceived, isLocationReceived) ||
                other.isLocationReceived == isLocationReceived) &&
            (identical(other.locationLink, locationLink) ||
                other.locationLink == locationLink) &&
            (identical(other.isFinalReportReady, isFinalReportReady) ||
                other.isFinalReportReady == isFinalReportReady) &&
            (identical(other.isReportSent, isReportSent) ||
                other.isReportSent == isReportSent) &&
            (identical(other.stickerPrepared, stickerPrepared) ||
                other.stickerPrepared == stickerPrepared) &&
            (identical(other.videosUploaded, videosUploaded) ||
                other.videosUploaded == videosUploaded) &&
            (identical(other.finalEstimateReady, finalEstimateReady) ||
                other.finalEstimateReady == finalEstimateReady));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        printedName,
        countryCode,
        status,
        createdAt,
        executionNum,
        orderNum,
        package,
        cartonCount,
        ordersCount,
        totalAmount,
        date,
        days,
        email,
        phone,
        isQuranPrinted,
        isQuranPhotographed,
        isDistributionPhotographed,
        isLocationReceived,
        locationLink,
        isFinalReportReady,
        isReportSent,
        stickerPrepared,
        videosUploaded,
        finalEstimateReady
      ]);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'printed_name') final String? printedName,
      @JsonKey(name: 'country_code') final String? countryCode,
      @JsonKey(name: 'status') final bool? status,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'execution_num') final String? executionNum,
      @JsonKey(name: 'order_num') final String? orderNum,
      @JsonKey(name: 'package') final OrderPackage? package,
      @JsonKey(name: 'carton_count') final int? cartonCount,
      @JsonKey(name: 'orders_count') final int? ordersCount,
      @JsonKey(name: 'total_amount') final String? totalAmount,
      @JsonKey(name: 'date') final DateTime? date,
      @JsonKey(name: 'days') final int? days,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'is_quran_printed') final bool? isQuranPrinted,
      @JsonKey(name: 'is_quran_photographed') final bool? isQuranPhotographed,
      @JsonKey(name: 'is_distribution_photographed')
      final bool? isDistributionPhotographed,
      @JsonKey(name: 'is_location_received') final bool? isLocationReceived,
      @JsonKey(name: 'location_link') final String? locationLink,
      @JsonKey(name: 'is_final_report_ready') final bool? isFinalReportReady,
      @JsonKey(name: 'is_report_sent') final bool? isReportSent,
      @JsonKey(name: 'sticker_prepared') final bool? stickerPrepared,
      @JsonKey(name: 'videos_uploaded') final bool? videosUploaded,
      @JsonKey(name: 'final_estimate_ready')
      final bool? finalEstimateReady}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'printed_name')
  String? get printedName;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode;
  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'execution_num')
  String? get executionNum;
  @override
  @JsonKey(name: 'order_num')
  String? get orderNum;
  @override
  @JsonKey(name: 'package')
  OrderPackage? get package;
  @override
  @JsonKey(name: 'carton_count')
  int? get cartonCount;
  @override
  @JsonKey(name: 'orders_count')
  int? get ordersCount;
  @override
  @JsonKey(name: 'total_amount')
  String? get totalAmount;
  @override
  @JsonKey(name: 'date')
  DateTime? get date;
  @override
  @JsonKey(name: 'days')
  int? get days;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'is_quran_printed')
  bool? get isQuranPrinted;
  @override
  @JsonKey(name: 'is_quran_photographed')
  bool? get isQuranPhotographed;
  @override
  @JsonKey(name: 'is_distribution_photographed')
  bool? get isDistributionPhotographed;
  @override
  @JsonKey(name: 'is_location_received')
  bool? get isLocationReceived;
  @override
  @JsonKey(name: 'location_link')
  String? get locationLink;
  @override
  @JsonKey(name: 'is_final_report_ready')
  bool? get isFinalReportReady;
  @override
  @JsonKey(name: 'is_report_sent')
  bool? get isReportSent;
  @override
  @JsonKey(name: 'sticker_prepared')
  bool? get stickerPrepared;
  @override
  @JsonKey(name: 'videos_uploaded')
  bool? get videosUploaded;
  @override
  @JsonKey(name: 'final_estimate_ready')
  bool? get finalEstimateReady;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderPackage _$OrderPackageFromJson(Map<String, dynamic> json) {
  return _OrderPackage.fromJson(json);
}

/// @nodoc
mixin _$OrderPackage {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this OrderPackage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderPackageCopyWith<OrderPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPackageCopyWith<$Res> {
  factory $OrderPackageCopyWith(
          OrderPackage value, $Res Function(OrderPackage) then) =
      _$OrderPackageCopyWithImpl<$Res, OrderPackage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$OrderPackageCopyWithImpl<$Res, $Val extends OrderPackage>
    implements $OrderPackageCopyWith<$Res> {
  _$OrderPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPackageImplCopyWith<$Res>
    implements $OrderPackageCopyWith<$Res> {
  factory _$$OrderPackageImplCopyWith(
          _$OrderPackageImpl value, $Res Function(_$OrderPackageImpl) then) =
      __$$OrderPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$OrderPackageImplCopyWithImpl<$Res>
    extends _$OrderPackageCopyWithImpl<$Res, _$OrderPackageImpl>
    implements _$$OrderPackageImplCopyWith<$Res> {
  __$$OrderPackageImplCopyWithImpl(
      _$OrderPackageImpl _value, $Res Function(_$OrderPackageImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrderPackageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPackageImpl implements _OrderPackage {
  const _$OrderPackageImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$OrderPackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPackageImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'price')
  final String? price;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'OrderPackage(id: $id, name: $name, description: $description, price: $price, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPackageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, price, image, createdAt, updatedAt);

  /// Create a copy of OrderPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPackageImplCopyWith<_$OrderPackageImpl> get copyWith =>
      __$$OrderPackageImplCopyWithImpl<_$OrderPackageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPackageImplToJson(
      this,
    );
  }
}

abstract class _OrderPackage implements OrderPackage {
  const factory _OrderPackage(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'price') final String? price,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$OrderPackageImpl;

  factory _OrderPackage.fromJson(Map<String, dynamic> json) =
      _$OrderPackageImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of OrderPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPackageImplCopyWith<_$OrderPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrdersResModelPackage _$OrdersResModelPackageFromJson(
    Map<String, dynamic> json) {
  return _OrdersResModelPackage.fromJson(json);
}

/// @nodoc
mixin _$OrdersResModelPackage {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'orders_count')
  int? get ordersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  String? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this OrdersResModelPackage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrdersResModelPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersResModelPackageCopyWith<OrdersResModelPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersResModelPackageCopyWith<$Res> {
  factory $OrdersResModelPackageCopyWith(OrdersResModelPackage value,
          $Res Function(OrdersResModelPackage) then) =
      _$OrdersResModelPackageCopyWithImpl<$Res, OrdersResModelPackage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'orders_count') int? ordersCount,
      @JsonKey(name: 'total_amount') String? totalAmount,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$OrdersResModelPackageCopyWithImpl<$Res,
        $Val extends OrdersResModelPackage>
    implements $OrdersResModelPackageCopyWith<$Res> {
  _$OrdersResModelPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersResModelPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? ordersCount = freezed,
    Object? totalAmount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      ordersCount: freezed == ordersCount
          ? _value.ordersCount
          : ordersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersResModelPackageImplCopyWith<$Res>
    implements $OrdersResModelPackageCopyWith<$Res> {
  factory _$$OrdersResModelPackageImplCopyWith(
          _$OrdersResModelPackageImpl value,
          $Res Function(_$OrdersResModelPackageImpl) then) =
      __$$OrdersResModelPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'orders_count') int? ordersCount,
      @JsonKey(name: 'total_amount') String? totalAmount,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$OrdersResModelPackageImplCopyWithImpl<$Res>
    extends _$OrdersResModelPackageCopyWithImpl<$Res,
        _$OrdersResModelPackageImpl>
    implements _$$OrdersResModelPackageImplCopyWith<$Res> {
  __$$OrdersResModelPackageImplCopyWithImpl(_$OrdersResModelPackageImpl _value,
      $Res Function(_$OrdersResModelPackageImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersResModelPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? ordersCount = freezed,
    Object? totalAmount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrdersResModelPackageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      ordersCount: freezed == ordersCount
          ? _value.ordersCount
          : ordersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersResModelPackageImpl implements _OrdersResModelPackage {
  const _$OrdersResModelPackageImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'orders_count') this.ordersCount,
      @JsonKey(name: 'total_amount') this.totalAmount,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$OrdersResModelPackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersResModelPackageImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'price')
  final String? price;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'orders_count')
  final int? ordersCount;
  @override
  @JsonKey(name: 'total_amount')
  final String? totalAmount;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'OrdersResModelPackage(id: $id, name: $name, description: $description, price: $price, image: $image, ordersCount: $ordersCount, totalAmount: $totalAmount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersResModelPackageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.ordersCount, ordersCount) ||
                other.ordersCount == ordersCount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, price,
      image, ordersCount, totalAmount, createdAt, updatedAt);

  /// Create a copy of OrdersResModelPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersResModelPackageImplCopyWith<_$OrdersResModelPackageImpl>
      get copyWith => __$$OrdersResModelPackageImplCopyWithImpl<
          _$OrdersResModelPackageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersResModelPackageImplToJson(
      this,
    );
  }
}

abstract class _OrdersResModelPackage implements OrdersResModelPackage {
  const factory _OrdersResModelPackage(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'price') final String? price,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'orders_count') final int? ordersCount,
          @JsonKey(name: 'total_amount') final String? totalAmount,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$OrdersResModelPackageImpl;

  factory _OrdersResModelPackage.fromJson(Map<String, dynamic> json) =
      _$OrdersResModelPackageImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'orders_count')
  int? get ordersCount;
  @override
  @JsonKey(name: 'total_amount')
  String? get totalAmount;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of OrdersResModelPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersResModelPackageImplCopyWith<_$OrdersResModelPackageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
