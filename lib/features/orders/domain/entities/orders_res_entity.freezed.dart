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
  List<OrderEntity>? get orders => throw _privateConstructorUsedError;
  MetaEntity? get meta => throw _privateConstructorUsedError;

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
  $Res call({List<OrderEntity>? orders, MetaEntity? meta});

  $MetaEntityCopyWith<$Res>? get meta;
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
    Object? orders = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaEntity?,
    ) as $Val);
  }

  /// Create a copy of OrdersResEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaEntityCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaEntityCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
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
  $Res call({List<OrderEntity>? orders, MetaEntity? meta});

  @override
  $MetaEntityCopyWith<$Res>? get meta;
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
    Object? orders = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$OrdersResEntityImpl(
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersResEntityImpl implements _OrdersResEntity {
  const _$OrdersResEntityImpl(
      {required final List<OrderEntity>? orders, required this.meta})
      : _orders = orders;

  factory _$OrdersResEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersResEntityImplFromJson(json);

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
  final MetaEntity? meta;

  @override
  String toString() {
    return 'OrdersResEntity(orders: $orders, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersResEntityImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), meta);

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
      {required final List<OrderEntity>? orders,
      required final MetaEntity? meta}) = _$OrdersResEntityImpl;

  factory _OrdersResEntity.fromJson(Map<String, dynamic> json) =
      _$OrdersResEntityImpl.fromJson;

  @override
  List<OrderEntity>? get orders;
  @override
  MetaEntity? get meta;

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
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'printed_name')
  String? get printedName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'sticker_prepared')
  bool? get stickerPrepared => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos_uploaded')
  bool? get videosUploaded => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_estimate_ready')
  bool? get finalEstimateReady => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'execution_num')
  String? get executionNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_num')
  String? get orderNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'carton_count')
  int? get cartonCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'orders_count')
  int? get ordersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  String? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_quran_printed')
  bool? get isQuranPrinted => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_quran_photographed')
  bool? get isQuranPhotographed => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_distribution_photographed')
  bool? get isDistributionPhotographed => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_location_received')
  bool? get isLocationReceived => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_link')
  dynamic get locationLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_final_report_ready')
  bool? get isFinalReportReady => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_report_sent')
  bool? get isReportSent => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country_id')
  int? get originCountryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'distribution_country_id')
  int? get distributionCountryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_id')
  int? get packageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quran_copies_count')
  int? get quranCopiesCount => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'printed_name') String? printedName,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'sticker_prepared') bool? stickerPrepared,
      @JsonKey(name: 'videos_uploaded') bool? videosUploaded,
      @JsonKey(name: 'final_estimate_ready') bool? finalEstimateReady,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'execution_num') String? executionNum,
      @JsonKey(name: 'order_num') String? orderNum,
      @JsonKey(name: 'carton_count') int? cartonCount,
      @JsonKey(name: 'orders_count') int? ordersCount,
      @JsonKey(name: 'total_amount') String? totalAmount,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'is_quran_printed') bool? isQuranPrinted,
      @JsonKey(name: 'is_quran_photographed') bool? isQuranPhotographed,
      @JsonKey(name: 'is_distribution_photographed')
      bool? isDistributionPhotographed,
      @JsonKey(name: 'is_location_received') bool? isLocationReceived,
      @JsonKey(name: 'location_link') dynamic locationLink,
      @JsonKey(name: 'is_final_report_ready') bool? isFinalReportReady,
      @JsonKey(name: 'is_report_sent') bool? isReportSent,
      @JsonKey(name: 'origin_country_id') int? originCountryId,
      @JsonKey(name: 'distribution_country_id') int? distributionCountryId,
      @JsonKey(name: 'package_id') int? packageId,
      @JsonKey(name: 'quran_copies_count') int? quranCopiesCount});
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
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
    Object? printedName = freezed,
    Object? phone = freezed,
    Object? status = freezed,
    Object? stickerPrepared = freezed,
    Object? videosUploaded = freezed,
    Object? finalEstimateReady = freezed,
    Object? email = freezed,
    Object? executionNum = freezed,
    Object? orderNum = freezed,
    Object? cartonCount = freezed,
    Object? ordersCount = freezed,
    Object? totalAmount = freezed,
    Object? date = freezed,
    Object? isQuranPrinted = freezed,
    Object? isQuranPhotographed = freezed,
    Object? isDistributionPhotographed = freezed,
    Object? isLocationReceived = freezed,
    Object? locationLink = freezed,
    Object? isFinalReportReady = freezed,
    Object? isReportSent = freezed,
    Object? originCountryId = freezed,
    Object? distributionCountryId = freezed,
    Object? packageId = freezed,
    Object? quranCopiesCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      printedName: freezed == printedName
          ? _value.printedName
          : printedName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      executionNum: freezed == executionNum
          ? _value.executionNum
          : executionNum // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNum: freezed == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as String?,
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
      originCountryId: freezed == originCountryId
          ? _value.originCountryId
          : originCountryId // ignore: cast_nullable_to_non_nullable
              as int?,
      distributionCountryId: freezed == distributionCountryId
          ? _value.distributionCountryId
          : distributionCountryId // ignore: cast_nullable_to_non_nullable
              as int?,
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int?,
      quranCopiesCount: freezed == quranCopiesCount
          ? _value.quranCopiesCount
          : quranCopiesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
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
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'printed_name') String? printedName,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'sticker_prepared') bool? stickerPrepared,
      @JsonKey(name: 'videos_uploaded') bool? videosUploaded,
      @JsonKey(name: 'final_estimate_ready') bool? finalEstimateReady,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'execution_num') String? executionNum,
      @JsonKey(name: 'order_num') String? orderNum,
      @JsonKey(name: 'carton_count') int? cartonCount,
      @JsonKey(name: 'orders_count') int? ordersCount,
      @JsonKey(name: 'total_amount') String? totalAmount,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'is_quran_printed') bool? isQuranPrinted,
      @JsonKey(name: 'is_quran_photographed') bool? isQuranPhotographed,
      @JsonKey(name: 'is_distribution_photographed')
      bool? isDistributionPhotographed,
      @JsonKey(name: 'is_location_received') bool? isLocationReceived,
      @JsonKey(name: 'location_link') dynamic locationLink,
      @JsonKey(name: 'is_final_report_ready') bool? isFinalReportReady,
      @JsonKey(name: 'is_report_sent') bool? isReportSent,
      @JsonKey(name: 'origin_country_id') int? originCountryId,
      @JsonKey(name: 'distribution_country_id') int? distributionCountryId,
      @JsonKey(name: 'package_id') int? packageId,
      @JsonKey(name: 'quran_copies_count') int? quranCopiesCount});
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
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
    Object? printedName = freezed,
    Object? phone = freezed,
    Object? status = freezed,
    Object? stickerPrepared = freezed,
    Object? videosUploaded = freezed,
    Object? finalEstimateReady = freezed,
    Object? email = freezed,
    Object? executionNum = freezed,
    Object? orderNum = freezed,
    Object? cartonCount = freezed,
    Object? ordersCount = freezed,
    Object? totalAmount = freezed,
    Object? date = freezed,
    Object? isQuranPrinted = freezed,
    Object? isQuranPhotographed = freezed,
    Object? isDistributionPhotographed = freezed,
    Object? isLocationReceived = freezed,
    Object? locationLink = freezed,
    Object? isFinalReportReady = freezed,
    Object? isReportSent = freezed,
    Object? originCountryId = freezed,
    Object? distributionCountryId = freezed,
    Object? packageId = freezed,
    Object? quranCopiesCount = freezed,
  }) {
    return _then(_$OrderEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      printedName: freezed == printedName
          ? _value.printedName
          : printedName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      executionNum: freezed == executionNum
          ? _value.executionNum
          : executionNum // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNum: freezed == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as String?,
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
      originCountryId: freezed == originCountryId
          ? _value.originCountryId
          : originCountryId // ignore: cast_nullable_to_non_nullable
              as int?,
      distributionCountryId: freezed == distributionCountryId
          ? _value.distributionCountryId
          : distributionCountryId // ignore: cast_nullable_to_non_nullable
              as int?,
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int?,
      quranCopiesCount: freezed == quranCopiesCount
          ? _value.quranCopiesCount
          : quranCopiesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderEntityImpl implements _OrderEntity {
  const _$OrderEntityImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'printed_name') this.printedName,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'sticker_prepared') this.stickerPrepared,
      @JsonKey(name: 'videos_uploaded') this.videosUploaded,
      @JsonKey(name: 'final_estimate_ready') this.finalEstimateReady,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'execution_num') this.executionNum,
      @JsonKey(name: 'order_num') this.orderNum,
      @JsonKey(name: 'carton_count') this.cartonCount,
      @JsonKey(name: 'orders_count') this.ordersCount,
      @JsonKey(name: 'total_amount') this.totalAmount,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'is_quran_printed') this.isQuranPrinted,
      @JsonKey(name: 'is_quran_photographed') this.isQuranPhotographed,
      @JsonKey(name: 'is_distribution_photographed')
      this.isDistributionPhotographed,
      @JsonKey(name: 'is_location_received') this.isLocationReceived,
      @JsonKey(name: 'location_link') this.locationLink,
      @JsonKey(name: 'is_final_report_ready') this.isFinalReportReady,
      @JsonKey(name: 'is_report_sent') this.isReportSent,
      @JsonKey(name: 'origin_country_id') this.originCountryId,
      @JsonKey(name: 'distribution_country_id') this.distributionCountryId,
      @JsonKey(name: 'package_id') this.packageId,
      @JsonKey(name: 'quran_copies_count') this.quranCopiesCount});

  factory _$OrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'printed_name')
  final String? printedName;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'status')
  final int? status;
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
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'execution_num')
  final String? executionNum;
  @override
  @JsonKey(name: 'order_num')
  final String? orderNum;
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
  final dynamic locationLink;
  @override
  @JsonKey(name: 'is_final_report_ready')
  final bool? isFinalReportReady;
  @override
  @JsonKey(name: 'is_report_sent')
  final bool? isReportSent;
  @override
  @JsonKey(name: 'origin_country_id')
  final int? originCountryId;
  @override
  @JsonKey(name: 'distribution_country_id')
  final int? distributionCountryId;
  @override
  @JsonKey(name: 'package_id')
  final int? packageId;
  @override
  @JsonKey(name: 'quran_copies_count')
  final int? quranCopiesCount;

  @override
  String toString() {
    return 'OrderEntity(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, printedName: $printedName, phone: $phone, status: $status, stickerPrepared: $stickerPrepared, videosUploaded: $videosUploaded, finalEstimateReady: $finalEstimateReady, email: $email, executionNum: $executionNum, orderNum: $orderNum, cartonCount: $cartonCount, ordersCount: $ordersCount, totalAmount: $totalAmount, date: $date, isQuranPrinted: $isQuranPrinted, isQuranPhotographed: $isQuranPhotographed, isDistributionPhotographed: $isDistributionPhotographed, isLocationReceived: $isLocationReceived, locationLink: $locationLink, isFinalReportReady: $isFinalReportReady, isReportSent: $isReportSent, originCountryId: $originCountryId, distributionCountryId: $distributionCountryId, packageId: $packageId, quranCopiesCount: $quranCopiesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.printedName, printedName) ||
                other.printedName == printedName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.stickerPrepared, stickerPrepared) ||
                other.stickerPrepared == stickerPrepared) &&
            (identical(other.videosUploaded, videosUploaded) ||
                other.videosUploaded == videosUploaded) &&
            (identical(other.finalEstimateReady, finalEstimateReady) ||
                other.finalEstimateReady == finalEstimateReady) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.executionNum, executionNum) ||
                other.executionNum == executionNum) &&
            (identical(other.orderNum, orderNum) ||
                other.orderNum == orderNum) &&
            (identical(other.cartonCount, cartonCount) ||
                other.cartonCount == cartonCount) &&
            (identical(other.ordersCount, ordersCount) ||
                other.ordersCount == ordersCount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.date, date) || other.date == date) &&
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
            (identical(other.originCountryId, originCountryId) ||
                other.originCountryId == originCountryId) &&
            (identical(other.distributionCountryId, distributionCountryId) ||
                other.distributionCountryId == distributionCountryId) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.quranCopiesCount, quranCopiesCount) ||
                other.quranCopiesCount == quranCopiesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        name,
        printedName,
        phone,
        status,
        stickerPrepared,
        videosUploaded,
        finalEstimateReady,
        email,
        executionNum,
        orderNum,
        cartonCount,
        ordersCount,
        totalAmount,
        date,
        isQuranPrinted,
        isQuranPhotographed,
        isDistributionPhotographed,
        isLocationReceived,
        const DeepCollectionEquality().hash(locationLink),
        isFinalReportReady,
        isReportSent,
        originCountryId,
        distributionCountryId,
        packageId,
        quranCopiesCount
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
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'printed_name') final String? printedName,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'sticker_prepared') final bool? stickerPrepared,
      @JsonKey(name: 'videos_uploaded') final bool? videosUploaded,
      @JsonKey(name: 'final_estimate_ready') final bool? finalEstimateReady,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'execution_num') final String? executionNum,
      @JsonKey(name: 'order_num') final String? orderNum,
      @JsonKey(name: 'carton_count') final int? cartonCount,
      @JsonKey(name: 'orders_count') final int? ordersCount,
      @JsonKey(name: 'total_amount') final String? totalAmount,
      @JsonKey(name: 'date') final DateTime? date,
      @JsonKey(name: 'is_quran_printed') final bool? isQuranPrinted,
      @JsonKey(name: 'is_quran_photographed') final bool? isQuranPhotographed,
      @JsonKey(name: 'is_distribution_photographed')
      final bool? isDistributionPhotographed,
      @JsonKey(name: 'is_location_received') final bool? isLocationReceived,
      @JsonKey(name: 'location_link') final dynamic locationLink,
      @JsonKey(name: 'is_final_report_ready') final bool? isFinalReportReady,
      @JsonKey(name: 'is_report_sent') final bool? isReportSent,
      @JsonKey(name: 'origin_country_id') final int? originCountryId,
      @JsonKey(name: 'distribution_country_id')
      final int? distributionCountryId,
      @JsonKey(name: 'package_id') final int? packageId,
      @JsonKey(name: 'quran_copies_count')
      final int? quranCopiesCount}) = _$OrderEntityImpl;

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$OrderEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'printed_name')
  String? get printedName;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'status')
  int? get status;
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
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'execution_num')
  String? get executionNum;
  @override
  @JsonKey(name: 'order_num')
  String? get orderNum;
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
  dynamic get locationLink;
  @override
  @JsonKey(name: 'is_final_report_ready')
  bool? get isFinalReportReady;
  @override
  @JsonKey(name: 'is_report_sent')
  bool? get isReportSent;
  @override
  @JsonKey(name: 'origin_country_id')
  int? get originCountryId;
  @override
  @JsonKey(name: 'distribution_country_id')
  int? get distributionCountryId;
  @override
  @JsonKey(name: 'package_id')
  int? get packageId;
  @override
  @JsonKey(name: 'quran_copies_count')
  int? get quranCopiesCount;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
