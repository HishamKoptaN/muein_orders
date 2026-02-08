// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrdersResModel _$OrdersResModelFromJson(Map<String, dynamic> json) =>
    _OrdersResModel(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrdersResModelToJson(_OrdersResModel instance) =>
    <String, dynamic>{
      'orders': ?instance.orders?.map((e) => e.toJson()).toList(),
      'meta': ?instance.meta?.toJson(),
    };

_Order _$OrderFromJson(Map<String, dynamic> json) => _Order(
  id: (json['id'] as num?)?.toInt(),
  printedName: json['printed_name'] as String?,
  docs: json['docs'] as List<dynamic>?,
  distributionCountry: json['distribution_country'] == null
      ? null
      : DistributionCountry.fromJson(
          json['distribution_country'] as Map<String, dynamic>,
        ),
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  days: (json['days'] as num?)?.toInt(),
  isQuranPhotographed: json['is_quran_photographed'] as bool?,
  isDistributionPhotographed: json['is_distribution_photographed'] as bool?,
  stickerPrepared: json['sticker_prepared'] as bool?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
  'id': ?instance.id,
  'printed_name': ?instance.printedName,
  'docs': ?instance.docs,
  'distribution_country': ?instance.distributionCountry?.toJson(),
  'date': ?instance.date?.toIso8601String(),
  'days': ?instance.days,
  'is_quran_photographed': ?instance.isQuranPhotographed,
  'is_distribution_photographed': ?instance.isDistributionPhotographed,
  'sticker_prepared': ?instance.stickerPrepared,
  'created_at': ?instance.createdAt,
};

_DistributionCountry _$DistributionCountryFromJson(Map<String, dynamic> json) =>
    _DistributionCountry(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
    );

Map<String, dynamic> _$DistributionCountryToJson(
  _DistributionCountry instance,
) => <String, dynamic>{'id': ?instance.id, 'code': ?instance.code};

_Package _$PackageFromJson(Map<String, dynamic> json) => _Package(
  id: (json['id'] as num?)?.toInt(),
  type: json['type'],
  quantity: (json['quantity'] as num?)?.toInt(),
);

Map<String, dynamic> _$PackageToJson(_Package instance) => <String, dynamic>{
  'id': ?instance.id,
  'type': ?instance.type,
  'quantity': ?instance.quantity,
};
