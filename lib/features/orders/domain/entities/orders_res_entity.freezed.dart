// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrdersResEntity _$OrdersResEntityFromJson(Map<String, dynamic> json) {
  return _OrdersResEntity.fromJson(json);
}

/// @nodoc
mixin _$OrdersResEntity {
  PackageEntity? get package => throw _privateConstructorUsedError;
  List<OrderEntity>? get orders => throw _privateConstructorUsedError;

  /// Serializes this OrdersResEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrdersResEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersResEntityCopyWith<OrdersResEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersResEntityCopyWith<$Res> {
  factory $OrdersResEntityCopyWith(
          OrdersResEntity value, $Res Function(OrdersResEntity) then) =
      _$OrdersResEntityCopyWithImpl<$Res, OrdersResEntity>;
  @useResult
  $Res call({PackageEntity? package, List<OrderEntity>? orders});

  $PackageEntityCopyWith<$Res>? get package;
}

/// @nodoc
class _$OrdersResEntityCopyWithImpl<$Res, $Val extends OrdersResEntity>
    implements $OrdersResEntityCopyWith<$Res> {
  _$OrdersResEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersResEntity
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
              as PackageEntity?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>?,
    ) as $Val);
  }

  /// Create a copy of OrdersResEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageEntityCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $PackageEntityCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrdersResEntityImplCopyWith<$Res>
    implements $OrdersResEntityCopyWith<$Res> {
  factory _$$OrdersResEntityImplCopyWith(_$OrdersResEntityImpl value,
          $Res Function(_$OrdersResEntityImpl) then) =
      __$$OrdersResEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PackageEntity? package, List<OrderEntity>? orders});

  @override
  $PackageEntityCopyWith<$Res>? get package;
}

/// @nodoc
class __$$OrdersResEntityImplCopyWithImpl<$Res>
    extends _$OrdersResEntityCopyWithImpl<$Res, _$OrdersResEntityImpl>
    implements _$$OrdersResEntityImplCopyWith<$Res> {
  __$$OrdersResEntityImplCopyWithImpl(
      _$OrdersResEntityImpl _value, $Res Function(_$OrdersResEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersResEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = freezed,
    Object? orders = freezed,
  }) {
    return _then(_$OrdersResEntityImpl(
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageEntity?,
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersResEntityImpl implements _OrdersResEntity {
  const _$OrdersResEntityImpl({this.package, final List<OrderEntity>? orders})
      : _orders = orders;

  factory _$OrdersResEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersResEntityImplFromJson(json);

  @override
  final PackageEntity? package;
  final List<OrderEntity>? _orders;
  @override
  List<OrderEntity>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrdersResEntity(package: $package, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersResEntityImpl &&
            (identical(other.package, package) || other.package == package) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, package, const DeepCollectionEquality().hash(_orders));

  /// Create a copy of OrdersResEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersResEntityImplCopyWith<_$OrdersResEntityImpl> get copyWith =>
      __$$OrdersResEntityImplCopyWithImpl<_$OrdersResEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersResEntityImplToJson(
      this,
    );
  }
}

abstract class _OrdersResEntity implements OrdersResEntity {
  const factory _OrdersResEntity(
      {final PackageEntity? package,
      final List<OrderEntity>? orders}) = _$OrdersResEntityImpl;

  factory _OrdersResEntity.fromJson(Map<String, dynamic> json) =
      _$OrdersResEntityImpl.fromJson;

  @override
  PackageEntity? get package;
  @override
  List<OrderEntity>? get orders;

  /// Create a copy of OrdersResEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersResEntityImplCopyWith<_$OrdersResEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get printedName => throw _privateConstructorUsedError;
  dynamic get countryCode => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get executionNum => throw _privateConstructorUsedError;
  String? get orderNum => throw _privateConstructorUsedError;
  OrderPackageEntity? get package => throw _privateConstructorUsedError;
  int? get cartonCount => throw _privateConstructorUsedError;
  int? get ordersCount => throw _privateConstructorUsedError;
  String? get totalAmount => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  int? get days => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  bool? get isQuranPrinted => throw _privateConstructorUsedError;
  bool? get isQuranPhotographed => throw _privateConstructorUsedError;
  bool? get isDistributionPhotographed => throw _privateConstructorUsedError;
  bool? get isLocationReceived => throw _privateConstructorUsedError;
  dynamic get locationLink => throw _privateConstructorUsedError;
  bool? get isFinalReportReady => throw _privateConstructorUsedError;
  bool? get isReportSent => throw _privateConstructorUsedError;
  bool? get stickerPrepared => throw _privateConstructorUsedError;
  bool? get videosUploaded => throw _privateConstructorUsedError;
  bool? get finalEstimateReady => throw _privateConstructorUsedError;

  /// Serializes this OrderEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res, OrderEntity>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? printedName,
      dynamic countryCode,
      bool? status,
      String? createdAt,
      String? executionNum,
      String? orderNum,
      OrderPackageEntity? package,
      int? cartonCount,
      int? ordersCount,
      String? totalAmount,
      DateTime? date,
      int? days,
      String? email,
      String? phone,
      bool? isQuranPrinted,
      bool? isQuranPhotographed,
      bool? isDistributionPhotographed,
      bool? isLocationReceived,
      dynamic locationLink,
      bool? isFinalReportReady,
      bool? isReportSent,
      bool? stickerPrepared,
      bool? videosUploaded,
      bool? finalEstimateReady});

  $OrderPackageEntityCopyWith<$Res>? get package;
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res, $Val extends OrderEntity>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderEntity
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
              as dynamic,
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
              as OrderPackageEntity?,
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
              as dynamic,
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

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderPackageEntityCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $OrderPackageEntityCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderEntityImplCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$OrderEntityImplCopyWith(
          _$OrderEntityImpl value, $Res Function(_$OrderEntityImpl) then) =
      __$$OrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? printedName,
      dynamic countryCode,
      bool? status,
      String? createdAt,
      String? executionNum,
      String? orderNum,
      OrderPackageEntity? package,
      int? cartonCount,
      int? ordersCount,
      String? totalAmount,
      DateTime? date,
      int? days,
      String? email,
      String? phone,
      bool? isQuranPrinted,
      bool? isQuranPhotographed,
      bool? isDistributionPhotographed,
      bool? isLocationReceived,
      dynamic locationLink,
      bool? isFinalReportReady,
      bool? isReportSent,
      bool? stickerPrepared,
      bool? videosUploaded,
      bool? finalEstimateReady});

  @override
  $OrderPackageEntityCopyWith<$Res>? get package;
}

/// @nodoc
class __$$OrderEntityImplCopyWithImpl<$Res>
    extends _$OrderEntityCopyWithImpl<$Res, _$OrderEntityImpl>
    implements _$$OrderEntityImplCopyWith<$Res> {
  __$$OrderEntityImplCopyWithImpl(
      _$OrderEntityImpl _value, $Res Function(_$OrderEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEntity
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
    return _then(_$OrderEntityImpl(
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
              as dynamic,
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
              as OrderPackageEntity?,
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
              as dynamic,
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
class _$OrderEntityImpl implements _OrderEntity {
  const _$OrderEntityImpl(
      {this.id,
      this.name,
      this.printedName,
      this.countryCode,
      this.status,
      this.createdAt,
      this.executionNum,
      this.orderNum,
      this.package,
      this.cartonCount,
      this.ordersCount,
      this.totalAmount,
      this.date,
      this.days,
      this.email,
      this.phone,
      this.isQuranPrinted,
      this.isQuranPhotographed,
      this.isDistributionPhotographed,
      this.isLocationReceived,
      this.locationLink,
      this.isFinalReportReady,
      this.isReportSent,
      this.stickerPrepared,
      this.videosUploaded,
      this.finalEstimateReady});

  factory _$OrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? printedName;
  @override
  final dynamic countryCode;
  @override
  final bool? status;
  @override
  final String? createdAt;
  @override
  final String? executionNum;
  @override
  final String? orderNum;
  @override
  final OrderPackageEntity? package;
  @override
  final int? cartonCount;
  @override
  final int? ordersCount;
  @override
  final String? totalAmount;
  @override
  final DateTime? date;
  @override
  final int? days;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final bool? isQuranPrinted;
  @override
  final bool? isQuranPhotographed;
  @override
  final bool? isDistributionPhotographed;
  @override
  final bool? isLocationReceived;
  @override
  final dynamic locationLink;
  @override
  final bool? isFinalReportReady;
  @override
  final bool? isReportSent;
  @override
  final bool? stickerPrepared;
  @override
  final bool? videosUploaded;
  @override
  final bool? finalEstimateReady;

  @override
  String toString() {
    return 'OrderEntity(id: $id, name: $name, printedName: $printedName, countryCode: $countryCode, status: $status, createdAt: $createdAt, executionNum: $executionNum, orderNum: $orderNum, package: $package, cartonCount: $cartonCount, ordersCount: $ordersCount, totalAmount: $totalAmount, date: $date, days: $days, email: $email, phone: $phone, isQuranPrinted: $isQuranPrinted, isQuranPhotographed: $isQuranPhotographed, isDistributionPhotographed: $isDistributionPhotographed, isLocationReceived: $isLocationReceived, locationLink: $locationLink, isFinalReportReady: $isFinalReportReady, isReportSent: $isReportSent, stickerPrepared: $stickerPrepared, videosUploaded: $videosUploaded, finalEstimateReady: $finalEstimateReady)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.printedName, printedName) ||
                other.printedName == printedName) &&
            const DeepCollectionEquality()
                .equals(other.countryCode, countryCode) &&
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
            const DeepCollectionEquality()
                .equals(other.locationLink, locationLink) &&
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
        const DeepCollectionEquality().hash(countryCode),
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
        const DeepCollectionEquality().hash(locationLink),
        isFinalReportReady,
        isReportSent,
        stickerPrepared,
        videosUploaded,
        finalEstimateReady
      ]);

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      __$$OrderEntityImplCopyWithImpl<_$OrderEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderEntity implements OrderEntity {
  const factory _OrderEntity(
      {final int? id,
      final String? name,
      final String? printedName,
      final dynamic countryCode,
      final bool? status,
      final String? createdAt,
      final String? executionNum,
      final String? orderNum,
      final OrderPackageEntity? package,
      final int? cartonCount,
      final int? ordersCount,
      final String? totalAmount,
      final DateTime? date,
      final int? days,
      final String? email,
      final String? phone,
      final bool? isQuranPrinted,
      final bool? isQuranPhotographed,
      final bool? isDistributionPhotographed,
      final bool? isLocationReceived,
      final dynamic locationLink,
      final bool? isFinalReportReady,
      final bool? isReportSent,
      final bool? stickerPrepared,
      final bool? videosUploaded,
      final bool? finalEstimateReady}) = _$OrderEntityImpl;

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$OrderEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get printedName;
  @override
  dynamic get countryCode;
  @override
  bool? get status;
  @override
  String? get createdAt;
  @override
  String? get executionNum;
  @override
  String? get orderNum;
  @override
  OrderPackageEntity? get package;
  @override
  int? get cartonCount;
  @override
  int? get ordersCount;
  @override
  String? get totalAmount;
  @override
  DateTime? get date;
  @override
  int? get days;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  bool? get isQuranPrinted;
  @override
  bool? get isQuranPhotographed;
  @override
  bool? get isDistributionPhotographed;
  @override
  bool? get isLocationReceived;
  @override
  dynamic get locationLink;
  @override
  bool? get isFinalReportReady;
  @override
  bool? get isReportSent;
  @override
  bool? get stickerPrepared;
  @override
  bool? get videosUploaded;
  @override
  bool? get finalEstimateReady;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderPackageEntity _$OrderPackageEntityFromJson(Map<String, dynamic> json) {
  return _OrderPackageEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderPackageEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;

  /// Serializes this OrderPackageEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderPackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderPackageEntityCopyWith<OrderPackageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPackageEntityCopyWith<$Res> {
  factory $OrderPackageEntityCopyWith(
          OrderPackageEntity value, $Res Function(OrderPackageEntity) then) =
      _$OrderPackageEntityCopyWithImpl<$Res, OrderPackageEntity>;
  @useResult
  $Res call({int? id, String? type, int? quantity});
}

/// @nodoc
class _$OrderPackageEntityCopyWithImpl<$Res, $Val extends OrderPackageEntity>
    implements $OrderPackageEntityCopyWith<$Res> {
  _$OrderPackageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPackageEntity
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
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPackageEntityImplCopyWith<$Res>
    implements $OrderPackageEntityCopyWith<$Res> {
  factory _$$OrderPackageEntityImplCopyWith(_$OrderPackageEntityImpl value,
          $Res Function(_$OrderPackageEntityImpl) then) =
      __$$OrderPackageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? type, int? quantity});
}

/// @nodoc
class __$$OrderPackageEntityImplCopyWithImpl<$Res>
    extends _$OrderPackageEntityCopyWithImpl<$Res, _$OrderPackageEntityImpl>
    implements _$$OrderPackageEntityImplCopyWith<$Res> {
  __$$OrderPackageEntityImplCopyWithImpl(_$OrderPackageEntityImpl _value,
      $Res Function(_$OrderPackageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$OrderPackageEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPackageEntityImpl implements _OrderPackageEntity {
  const _$OrderPackageEntityImpl({this.id, this.type, this.quantity});

  factory _$OrderPackageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPackageEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? type;
  @override
  final int? quantity;

  @override
  String toString() {
    return 'OrderPackageEntity(id: $id, type: $type, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPackageEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, quantity);

  /// Create a copy of OrderPackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPackageEntityImplCopyWith<_$OrderPackageEntityImpl> get copyWith =>
      __$$OrderPackageEntityImplCopyWithImpl<_$OrderPackageEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPackageEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderPackageEntity implements OrderPackageEntity {
  const factory _OrderPackageEntity(
      {final int? id,
      final String? type,
      final int? quantity}) = _$OrderPackageEntityImpl;

  factory _OrderPackageEntity.fromJson(Map<String, dynamic> json) =
      _$OrderPackageEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get type;
  @override
  int? get quantity;

  /// Create a copy of OrderPackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPackageEntityImplCopyWith<_$OrderPackageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageEntity _$PackageEntityFromJson(Map<String, dynamic> json) {
  return _PackageEntity.fromJson(json);
}

/// @nodoc
mixin _$PackageEntity {
  int? get id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;

  /// Serializes this PackageEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageEntityCopyWith<PackageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageEntityCopyWith<$Res> {
  factory $PackageEntityCopyWith(
          PackageEntity value, $Res Function(PackageEntity) then) =
      _$PackageEntityCopyWithImpl<$Res, PackageEntity>;
  @useResult
  $Res call({int? id, int? quantity});
}

/// @nodoc
class _$PackageEntityCopyWithImpl<$Res, $Val extends PackageEntity>
    implements $PackageEntityCopyWith<$Res> {
  _$PackageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageEntityImplCopyWith<$Res>
    implements $PackageEntityCopyWith<$Res> {
  factory _$$PackageEntityImplCopyWith(
          _$PackageEntityImpl value, $Res Function(_$PackageEntityImpl) then) =
      __$$PackageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? quantity});
}

/// @nodoc
class __$$PackageEntityImplCopyWithImpl<$Res>
    extends _$PackageEntityCopyWithImpl<$Res, _$PackageEntityImpl>
    implements _$$PackageEntityImplCopyWith<$Res> {
  __$$PackageEntityImplCopyWithImpl(
      _$PackageEntityImpl _value, $Res Function(_$PackageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$PackageEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageEntityImpl implements _PackageEntity {
  const _$PackageEntityImpl({this.id, this.quantity});

  factory _$PackageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final int? quantity;

  @override
  String toString() {
    return 'PackageEntity(id: $id, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, quantity);

  /// Create a copy of PackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageEntityImplCopyWith<_$PackageEntityImpl> get copyWith =>
      __$$PackageEntityImplCopyWithImpl<_$PackageEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageEntityImplToJson(
      this,
    );
  }
}

abstract class _PackageEntity implements PackageEntity {
  const factory _PackageEntity({final int? id, final int? quantity}) =
      _$PackageEntityImpl;

  factory _PackageEntity.fromJson(Map<String, dynamic> json) =
      _$PackageEntityImpl.fromJson;

  @override
  int? get id;
  @override
  int? get quantity;

  /// Create a copy of PackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageEntityImplCopyWith<_$PackageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
