// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_res_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrdersEntity _$OrdersEntityFromJson(Map<String, dynamic> json) =>
    _OrdersEntity(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => OrderEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaEntity.fromJson(json['meta'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$OrdersEntityToJson(_OrdersEntity instance) =>
    <String, dynamic>{
      'orders': instance.orders.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
      'type': instance.$type,
    };

_IndividualDocsEntity _$IndividualDocsEntityFromJson(
  Map<String, dynamic> json,
) => _IndividualDocsEntity(
  docs: (json['docs'] as List<dynamic>)
      .map((e) => DocEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$IndividualDocsEntityToJson(
  _IndividualDocsEntity instance,
) => <String, dynamic>{
  'docs': instance.docs.map((e) => e.toJson()).toList(),
  'type': instance.$type,
};

_OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) => _OrderEntity(
  id: (json['id'] as num).toInt(),
  sallaOrderId: (json['sallaOrderId'] as num).toInt(),
  printedName: json['printedName'] as String,
  executionNumber: json['executionNumber'] as String,
  docs: (json['docs'] as List<dynamic>)
      .map((e) => DocEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OrderEntityToJson(_OrderEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sallaOrderId': instance.sallaOrderId,
      'printedName': instance.printedName,
      'executionNumber': instance.executionNumber,
      'docs': instance.docs.map((e) => e.toJson()).toList(),
    };

_DocEntity _$DocEntityFromJson(Map<String, dynamic> json) => _DocEntity(
  id: (json['id'] as num).toInt(),
  imageOne: json['imageOne'] as String?,
  imageTwo: json['imageTwo'] as String?,
  thumbnailUrlOne: json['thumbnailUrlOne'] as String?,
  thumbnailUrlTwo: json['thumbnailUrlTwo'] as String?,
  videoOne: json['videoOne'] as String?,
  videoTwo: json['videoTwo'] as String?,
  latitude: json['latitude'] as String?,
  longitude: json['longitude'] as String?,
  docStatus: json['docStatus'] == null
      ? null
      : DocStatusEntity.fromJson(json['docStatus'] as Map<String, dynamic>),
  copiesCount: (json['copiesCount'] as num?)?.toInt(),
  reviewedBy: json['reviewedBy'] as String?,
  reviewedAt: json['reviewedAt'] as String?,
  adminNotes: json['adminNotes'] as String?,
  cachedDoc: json['cachedDoc'] == null
      ? null
      : CachedDocEntity.fromJson(json['cachedDoc'] as Map<String, dynamic>),
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$DocEntityToJson(_DocEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageOne': ?instance.imageOne,
      'imageTwo': ?instance.imageTwo,
      'thumbnailUrlOne': ?instance.thumbnailUrlOne,
      'thumbnailUrlTwo': ?instance.thumbnailUrlTwo,
      'videoOne': ?instance.videoOne,
      'videoTwo': ?instance.videoTwo,
      'latitude': ?instance.latitude,
      'longitude': ?instance.longitude,
      'docStatus': ?instance.docStatus?.toJson(),
      'copiesCount': ?instance.copiesCount,
      'reviewedBy': ?instance.reviewedBy,
      'reviewedAt': ?instance.reviewedAt,
      'adminNotes': ?instance.adminNotes,
      'cachedDoc': ?instance.cachedDoc?.toJson(),
      'createdAt': ?instance.createdAt,
      'updatedAt': ?instance.updatedAt,
    };
