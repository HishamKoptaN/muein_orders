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
  @JsonKey(name: 'orders')
  List<Order>? get orders => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  Meta? get meta => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'orders') List<Order>? orders,
      @JsonKey(name: 'meta') Meta? meta});

  $MetaCopyWith<$Res>? get meta;
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
    Object? orders = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  /// Create a copy of OrdersResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
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
      {@JsonKey(name: 'orders') List<Order>? orders,
      @JsonKey(name: 'meta') Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
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
    Object? orders = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$OrdersResModelImpl(
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersResModelImpl implements _OrdersResModel {
  const _$OrdersResModelImpl(
      {@JsonKey(name: 'orders') final List<Order>? orders,
      @JsonKey(name: 'meta') this.meta})
      : _orders = orders;

  factory _$OrdersResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersResModelImplFromJson(json);

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
  @JsonKey(name: 'meta')
  final Meta? meta;

  @override
  String toString() {
    return 'OrdersResModel(orders: $orders, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersResModelImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), meta);

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
      {@JsonKey(name: 'orders') final List<Order>? orders,
      @JsonKey(name: 'meta') final Meta? meta}) = _$OrdersResModelImpl;

  factory _OrdersResModel.fromJson(Map<String, dynamic> json) =
      _$OrdersResModelImpl.fromJson;

  @override
  @JsonKey(name: 'orders')
  List<Order>? get orders;
  @override
  @JsonKey(name: 'meta')
  Meta? get meta;

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
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'printed_name')
  String? get printedName => throw _privateConstructorUsedError;
  @JsonKey(name: 'execution_num')
  String? get executionNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_num')
  String? get orderNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'docs')
  List<dynamic>? get docs => throw _privateConstructorUsedError;
  @JsonKey(name: 'package')
  Package? get package => throw _privateConstructorUsedError;
  @JsonKey(name: 'distribution_country')
  DistributionCountry? get distributionCountry =>
      throw _privateConstructorUsedError;
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
  bool? get locationLink => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'printed_name') String? printedName,
      @JsonKey(name: 'execution_num') String? executionNum,
      @JsonKey(name: 'order_num') String? orderNum,
      @JsonKey(name: 'docs') List<dynamic>? docs,
      @JsonKey(name: 'package') Package? package,
      @JsonKey(name: 'distribution_country')
      DistributionCountry? distributionCountry,
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
      @JsonKey(name: 'location_link') bool? locationLink,
      @JsonKey(name: 'is_final_report_ready') bool? isFinalReportReady,
      @JsonKey(name: 'is_report_sent') bool? isReportSent,
      @JsonKey(name: 'sticker_prepared') bool? stickerPrepared,
      @JsonKey(name: 'videos_uploaded') bool? videosUploaded,
      @JsonKey(name: 'final_estimate_ready') bool? finalEstimateReady,
      @JsonKey(name: 'created_at') String? createdAt});

  $PackageCopyWith<$Res>? get package;
  $DistributionCountryCopyWith<$Res>? get distributionCountry;
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
    Object? status = freezed,
    Object? name = freezed,
    Object? printedName = freezed,
    Object? executionNum = freezed,
    Object? orderNum = freezed,
    Object? docs = freezed,
    Object? package = freezed,
    Object? distributionCountry = freezed,
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
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      printedName: freezed == printedName
          ? _value.printedName
          : printedName // ignore: cast_nullable_to_non_nullable
              as String?,
      executionNum: freezed == executionNum
          ? _value.executionNum
          : executionNum // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNum: freezed == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as String?,
      docs: freezed == docs
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as Package?,
      distributionCountry: freezed == distributionCountry
          ? _value.distributionCountry
          : distributionCountry // ignore: cast_nullable_to_non_nullable
              as DistributionCountry?,
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
              as bool?,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $PackageCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistributionCountryCopyWith<$Res>? get distributionCountry {
    if (_value.distributionCountry == null) {
      return null;
    }

    return $DistributionCountryCopyWith<$Res>(_value.distributionCountry!,
        (value) {
      return _then(_value.copyWith(distributionCountry: value) as $Val);
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
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'printed_name') String? printedName,
      @JsonKey(name: 'execution_num') String? executionNum,
      @JsonKey(name: 'order_num') String? orderNum,
      @JsonKey(name: 'docs') List<dynamic>? docs,
      @JsonKey(name: 'package') Package? package,
      @JsonKey(name: 'distribution_country')
      DistributionCountry? distributionCountry,
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
      @JsonKey(name: 'location_link') bool? locationLink,
      @JsonKey(name: 'is_final_report_ready') bool? isFinalReportReady,
      @JsonKey(name: 'is_report_sent') bool? isReportSent,
      @JsonKey(name: 'sticker_prepared') bool? stickerPrepared,
      @JsonKey(name: 'videos_uploaded') bool? videosUploaded,
      @JsonKey(name: 'final_estimate_ready') bool? finalEstimateReady,
      @JsonKey(name: 'created_at') String? createdAt});

  @override
  $PackageCopyWith<$Res>? get package;
  @override
  $DistributionCountryCopyWith<$Res>? get distributionCountry;
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
    Object? status = freezed,
    Object? name = freezed,
    Object? printedName = freezed,
    Object? executionNum = freezed,
    Object? orderNum = freezed,
    Object? docs = freezed,
    Object? package = freezed,
    Object? distributionCountry = freezed,
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
    Object? createdAt = freezed,
  }) {
    return _then(_$OrderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      printedName: freezed == printedName
          ? _value.printedName
          : printedName // ignore: cast_nullable_to_non_nullable
              as String?,
      executionNum: freezed == executionNum
          ? _value.executionNum
          : executionNum // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNum: freezed == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as String?,
      docs: freezed == docs
          ? _value._docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as Package?,
      distributionCountry: freezed == distributionCountry
          ? _value.distributionCountry
          : distributionCountry // ignore: cast_nullable_to_non_nullable
              as DistributionCountry?,
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
              as bool?,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  const _$OrderImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'printed_name') this.printedName,
      @JsonKey(name: 'execution_num') this.executionNum,
      @JsonKey(name: 'order_num') this.orderNum,
      @JsonKey(name: 'docs') final List<dynamic>? docs,
      @JsonKey(name: 'package') this.package,
      @JsonKey(name: 'distribution_country') this.distributionCountry,
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
      @JsonKey(name: 'final_estimate_ready') this.finalEstimateReady,
      @JsonKey(name: 'created_at') this.createdAt})
      : _docs = docs;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'printed_name')
  final String? printedName;
  @override
  @JsonKey(name: 'execution_num')
  final String? executionNum;
  @override
  @JsonKey(name: 'order_num')
  final String? orderNum;
  final List<dynamic>? _docs;
  @override
  @JsonKey(name: 'docs')
  List<dynamic>? get docs {
    final value = _docs;
    if (value == null) return null;
    if (_docs is EqualUnmodifiableListView) return _docs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'package')
  final Package? package;
  @override
  @JsonKey(name: 'distribution_country')
  final DistributionCountry? distributionCountry;
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
  final bool? locationLink;
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
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'Order(id: $id, status: $status, name: $name, printedName: $printedName, executionNum: $executionNum, orderNum: $orderNum, docs: $docs, package: $package, distributionCountry: $distributionCountry, cartonCount: $cartonCount, ordersCount: $ordersCount, totalAmount: $totalAmount, date: $date, days: $days, email: $email, phone: $phone, isQuranPrinted: $isQuranPrinted, isQuranPhotographed: $isQuranPhotographed, isDistributionPhotographed: $isDistributionPhotographed, isLocationReceived: $isLocationReceived, locationLink: $locationLink, isFinalReportReady: $isFinalReportReady, isReportSent: $isReportSent, stickerPrepared: $stickerPrepared, videosUploaded: $videosUploaded, finalEstimateReady: $finalEstimateReady, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.printedName, printedName) ||
                other.printedName == printedName) &&
            (identical(other.executionNum, executionNum) ||
                other.executionNum == executionNum) &&
            (identical(other.orderNum, orderNum) ||
                other.orderNum == orderNum) &&
            const DeepCollectionEquality().equals(other._docs, _docs) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.distributionCountry, distributionCountry) ||
                other.distributionCountry == distributionCountry) &&
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
                other.finalEstimateReady == finalEstimateReady) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        status,
        name,
        printedName,
        executionNum,
        orderNum,
        const DeepCollectionEquality().hash(_docs),
        package,
        distributionCountry,
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
        finalEstimateReady,
        createdAt
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
      @JsonKey(name: 'status') final bool? status,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'printed_name') final String? printedName,
      @JsonKey(name: 'execution_num') final String? executionNum,
      @JsonKey(name: 'order_num') final String? orderNum,
      @JsonKey(name: 'docs') final List<dynamic>? docs,
      @JsonKey(name: 'package') final Package? package,
      @JsonKey(name: 'distribution_country')
      final DistributionCountry? distributionCountry,
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
      @JsonKey(name: 'location_link') final bool? locationLink,
      @JsonKey(name: 'is_final_report_ready') final bool? isFinalReportReady,
      @JsonKey(name: 'is_report_sent') final bool? isReportSent,
      @JsonKey(name: 'sticker_prepared') final bool? stickerPrepared,
      @JsonKey(name: 'videos_uploaded') final bool? videosUploaded,
      @JsonKey(name: 'final_estimate_ready') final bool? finalEstimateReady,
      @JsonKey(name: 'created_at') final String? createdAt}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'printed_name')
  String? get printedName;
  @override
  @JsonKey(name: 'execution_num')
  String? get executionNum;
  @override
  @JsonKey(name: 'order_num')
  String? get orderNum;
  @override
  @JsonKey(name: 'docs')
  List<dynamic>? get docs;
  @override
  @JsonKey(name: 'package')
  Package? get package;
  @override
  @JsonKey(name: 'distribution_country')
  DistributionCountry? get distributionCountry;
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
  bool? get locationLink;
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
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DistributionCountry _$DistributionCountryFromJson(Map<String, dynamic> json) {
  return _DistributionCountry.fromJson(json);
}

/// @nodoc
mixin _$DistributionCountry {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;

  /// Serializes this DistributionCountry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DistributionCountry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistributionCountryCopyWith<DistributionCountry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistributionCountryCopyWith<$Res> {
  factory $DistributionCountryCopyWith(
          DistributionCountry value, $Res Function(DistributionCountry) then) =
      _$DistributionCountryCopyWithImpl<$Res, DistributionCountry>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'code') String? code});
}

/// @nodoc
class _$DistributionCountryCopyWithImpl<$Res, $Val extends DistributionCountry>
    implements $DistributionCountryCopyWith<$Res> {
  _$DistributionCountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DistributionCountry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistributionCountryImplCopyWith<$Res>
    implements $DistributionCountryCopyWith<$Res> {
  factory _$$DistributionCountryImplCopyWith(_$DistributionCountryImpl value,
          $Res Function(_$DistributionCountryImpl) then) =
      __$$DistributionCountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'code') String? code});
}

/// @nodoc
class __$$DistributionCountryImplCopyWithImpl<$Res>
    extends _$DistributionCountryCopyWithImpl<$Res, _$DistributionCountryImpl>
    implements _$$DistributionCountryImplCopyWith<$Res> {
  __$$DistributionCountryImplCopyWithImpl(_$DistributionCountryImpl _value,
      $Res Function(_$DistributionCountryImpl) _then)
      : super(_value, _then);

  /// Create a copy of DistributionCountry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
  }) {
    return _then(_$DistributionCountryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistributionCountryImpl implements _DistributionCountry {
  const _$DistributionCountryImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'code') this.code});

  factory _$DistributionCountryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistributionCountryImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'code')
  final String? code;

  @override
  String toString() {
    return 'DistributionCountry(id: $id, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistributionCountryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code);

  /// Create a copy of DistributionCountry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistributionCountryImplCopyWith<_$DistributionCountryImpl> get copyWith =>
      __$$DistributionCountryImplCopyWithImpl<_$DistributionCountryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistributionCountryImplToJson(
      this,
    );
  }
}

abstract class _DistributionCountry implements DistributionCountry {
  const factory _DistributionCountry(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'code') final String? code}) = _$DistributionCountryImpl;

  factory _DistributionCountry.fromJson(Map<String, dynamic> json) =
      _$DistributionCountryImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'code')
  String? get code;

  /// Create a copy of DistributionCountry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistributionCountryImplCopyWith<_$DistributionCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Package _$PackageFromJson(Map<String, dynamic> json) {
  return _Package.fromJson(json);
}

/// @nodoc
mixin _$Package {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  dynamic get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;

  /// Serializes this Package to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageCopyWith<Package> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageCopyWith<$Res> {
  factory $PackageCopyWith(Package value, $Res Function(Package) then) =
      _$PackageCopyWithImpl<$Res, Package>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'type') dynamic type,
      @JsonKey(name: 'quantity') int? quantity});
}

/// @nodoc
class _$PackageCopyWithImpl<$Res, $Val extends Package>
    implements $PackageCopyWith<$Res> {
  _$PackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageImplCopyWith<$Res> implements $PackageCopyWith<$Res> {
  factory _$$PackageImplCopyWith(
          _$PackageImpl value, $Res Function(_$PackageImpl) then) =
      __$$PackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'type') dynamic type,
      @JsonKey(name: 'quantity') int? quantity});
}

/// @nodoc
class __$$PackageImplCopyWithImpl<$Res>
    extends _$PackageCopyWithImpl<$Res, _$PackageImpl>
    implements _$$PackageImplCopyWith<$Res> {
  __$$PackageImplCopyWithImpl(
      _$PackageImpl _value, $Res Function(_$PackageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$PackageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageImpl implements _Package {
  const _$PackageImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'quantity') this.quantity});

  factory _$PackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'type')
  final dynamic type;
  @override
  @JsonKey(name: 'quantity')
  final int? quantity;

  @override
  String toString() {
    return 'Package(id: $id, type: $type, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(type), quantity);

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageImplCopyWith<_$PackageImpl> get copyWith =>
      __$$PackageImplCopyWithImpl<_$PackageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageImplToJson(
      this,
    );
  }
}

abstract class _Package implements Package {
  const factory _Package(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'type') final dynamic type,
      @JsonKey(name: 'quantity') final int? quantity}) = _$PackageImpl;

  factory _Package.fromJson(Map<String, dynamic> json) = _$PackageImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'type')
  dynamic get type;
  @override
  @JsonKey(name: 'quantity')
  int? get quantity;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageImplCopyWith<_$PackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
