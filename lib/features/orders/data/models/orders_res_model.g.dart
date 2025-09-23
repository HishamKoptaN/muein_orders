// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersResModelImpl _$$OrdersResModelImplFromJson(Map<String, dynamic> json) =>
    _$OrdersResModelImpl(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrdersResModelImplToJson(
        _$OrdersResModelImpl instance) =>
    <String, dynamic>{
      if (instance.orders?.map((e) => e.toJson()).toList() case final value?)
        'orders': value,
      if (instance.meta?.toJson() case final value?) 'meta': value,
    };

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as bool?,
      name: json['name'] as String?,
      printedName: json['printed_name'] as String?,
      executionNum: json['execution_num'] as String?,
      orderNum: json['order_num'] as String?,
      docs: json['docs'] as List<dynamic>?,
      package: json['package'] == null
          ? null
          : Package.fromJson(json['package'] as Map<String, dynamic>),
      distributionCountry: json['distribution_country'] == null
          ? null
          : DistributionCountry.fromJson(
              json['distribution_country'] as Map<String, dynamic>),
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
      locationLink: json['location_link'] as bool?,
      isFinalReportReady: json['is_final_report_ready'] as bool?,
      isReportSent: json['is_report_sent'] as bool?,
      stickerPrepared: json['sticker_prepared'] as bool?,
      videosUploaded: json['videos_uploaded'] as bool?,
      finalEstimateReady: json['final_estimate_ready'] as bool?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.status case final value?) 'status': value,
      if (instance.name case final value?) 'name': value,
      if (instance.printedName case final value?) 'printed_name': value,
      if (instance.executionNum case final value?) 'execution_num': value,
      if (instance.orderNum case final value?) 'order_num': value,
      if (instance.docs case final value?) 'docs': value,
      if (instance.package?.toJson() case final value?) 'package': value,
      if (instance.distributionCountry?.toJson() case final value?)
        'distribution_country': value,
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
      if (instance.createdAt case final value?) 'created_at': value,
    };

_$DistributionCountryImpl _$$DistributionCountryImplFromJson(
        Map<String, dynamic> json) =>
    _$DistributionCountryImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$DistributionCountryImplToJson(
        _$DistributionCountryImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.code case final value?) 'code': value,
    };

_$PackageImpl _$$PackageImplFromJson(Map<String, dynamic> json) =>
    _$PackageImpl(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'],
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PackageImplToJson(_$PackageImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.type case final value?) 'type': value,
      if (instance.quantity case final value?) 'quantity': value,
    };
