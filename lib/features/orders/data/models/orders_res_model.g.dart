// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersResModelImpl _$$OrdersResModelImplFromJson(Map<String, dynamic> json) =>
    _$OrdersResModelImpl(
      package: json['package'] == null
          ? null
          : OrdersResModelPackage.fromJson(
              json['package'] as Map<String, dynamic>),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrdersResModelImplToJson(
        _$OrdersResModelImpl instance) =>
    <String, dynamic>{
      if (instance.package?.toJson() case final value?) 'package': value,
      if (instance.orders?.map((e) => e.toJson()).toList() case final value?)
        'orders': value,
    };

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      printedName: json['printed_name'] as String?,
      countryCode: json['country_code'] as String?,
      status: json['status'] as bool?,
      createdAt: json['created_at'] as String?,
      executionNum: json['execution_num'] as String?,
      orderNum: json['order_num'] as String?,
      package: json['package'] == null
          ? null
          : OrderPackage.fromJson(json['package'] as Map<String, dynamic>),
      cartonCount: (json['carton_count'] as num?)?.toInt(),
      ordersCount: (json['orders_count'] as num?)?.toInt(),
      totalAmount: json['total_amount'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      days: (json['days'] as num?)?.toInt(),
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      isQuranPrinted: json['is_quran_printed'] as bool?,
      isQuranPhotographed: json['is_quran_photographed'] as bool?,
      isDistributionPhotographed: json['is_distribution_photographed'] as bool?,
      isLocationReceived: json['is_location_received'] as bool?,
      locationLink: json['location_link'] as String?,
      isFinalReportReady: json['is_final_report_ready'] as bool?,
      isReportSent: json['is_report_sent'] as bool?,
      stickerPrepared: json['sticker_prepared'] as bool?,
      videosUploaded: json['videos_uploaded'] as bool?,
      finalEstimateReady: json['final_estimate_ready'] as bool?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.printedName case final value?) 'printed_name': value,
      if (instance.countryCode case final value?) 'country_code': value,
      if (instance.status case final value?) 'status': value,
      if (instance.createdAt case final value?) 'created_at': value,
      if (instance.executionNum case final value?) 'execution_num': value,
      if (instance.orderNum case final value?) 'order_num': value,
      if (instance.package?.toJson() case final value?) 'package': value,
      if (instance.cartonCount case final value?) 'carton_count': value,
      if (instance.ordersCount case final value?) 'orders_count': value,
      if (instance.totalAmount case final value?) 'total_amount': value,
      if (instance.date?.toIso8601String() case final value?) 'date': value,
      if (instance.days case final value?) 'days': value,
      if (instance.email case final value?) 'email': value,
      if (instance.phone case final value?) 'phone': value,
      if (instance.isQuranPrinted case final value?) 'is_quran_printed': value,
      if (instance.isQuranPhotographed case final value?)
        'is_quran_photographed': value,
      if (instance.isDistributionPhotographed case final value?)
        'is_distribution_photographed': value,
      if (instance.isLocationReceived case final value?)
        'is_location_received': value,
      if (instance.locationLink case final value?) 'location_link': value,
      if (instance.isFinalReportReady case final value?)
        'is_final_report_ready': value,
      if (instance.isReportSent case final value?) 'is_report_sent': value,
      if (instance.stickerPrepared case final value?) 'sticker_prepared': value,
      if (instance.videosUploaded case final value?) 'videos_uploaded': value,
      if (instance.finalEstimateReady case final value?)
        'final_estimate_ready': value,
    };

_$OrderPackageImpl _$$OrderPackageImplFromJson(Map<String, dynamic> json) =>
    _$OrderPackageImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$OrderPackageImplToJson(_$OrderPackageImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
      if (instance.price case final value?) 'price': value,
      if (instance.image case final value?) 'image': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
    };

_$OrdersResModelPackageImpl _$$OrdersResModelPackageImplFromJson(
        Map<String, dynamic> json) =>
    _$OrdersResModelPackageImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      ordersCount: (json['orders_count'] as num?)?.toInt(),
      totalAmount: json['total_amount'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$OrdersResModelPackageImplToJson(
        _$OrdersResModelPackageImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
      if (instance.price case final value?) 'price': value,
      if (instance.image case final value?) 'image': value,
      if (instance.ordersCount case final value?) 'orders_count': value,
      if (instance.totalAmount case final value?) 'total_amount': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
    };
