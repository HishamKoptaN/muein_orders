// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_items_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SallaOrderItemsResModel _$SallaOrderItemsResModelFromJson(
  Map<String, dynamic> json,
) => _SallaOrderItemsResModel(
  sallaOrderItems:
      (json['data'] as List<dynamic>?)
          ?.map((e) => SallaOrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  meta: json['meta'] == null
      ? const MetaModel()
      : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SallaOrderItemsResModelToJson(
  _SallaOrderItemsResModel instance,
) => <String, dynamic>{
  'data': instance.sallaOrderItems.map((e) => e.toJson()).toList(),
  'meta': instance.meta.toJson(),
};

_SallaOrderItemModel _$SallaOrderItemModelFromJson(Map<String, dynamic> json) =>
    _SallaOrderItemModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      printedName: json['printed_name'] as String? ?? '',
      sallaOrderItemUnits:
          (json['salla_order_item_units'] as List<dynamic>?)
              ?.map(
                (e) =>
                    SallaOrderItemUnitModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      sallaOrderItemStatus: json['salla_order_item_status'] == null
          ? const SallaOrderItemStatusModel()
          : SallaOrderItemStatusModel.fromJson(
              json['salla_order_item_status'] as Map<String, dynamic>,
            ),
      created_at: json['created_at'] as String? ?? '',
      updated_at: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$SallaOrderItemModelToJson(
  _SallaOrderItemModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'printed_name': instance.printedName,
  'salla_order_item_units': instance.sallaOrderItemUnits
      .map((e) => e.toJson())
      .toList(),
  'salla_order_item_status': instance.sallaOrderItemStatus.toJson(),
  'created_at': instance.created_at,
  'updated_at': instance.updated_at,
};

_SallaOrderItemStatusModel _$SallaOrderItemStatusModelFromJson(
  Map<String, dynamic> json,
) => _SallaOrderItemStatusModel(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  created_at: json['created_at'] as String? ?? '',
  updated_at: json['updated_at'] as String? ?? '',
);

Map<String, dynamic> _$SallaOrderItemStatusModelToJson(
  _SallaOrderItemStatusModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'created_at': instance.created_at,
  'updated_at': instance.updated_at,
};

_SallaOrderItemUnitModel _$SallaOrderItemUnitModelFromJson(
  Map<String, dynamic> json,
) => _SallaOrderItemUnitModel(
  id: (json['id'] as num?)?.toInt() ?? 0,
  unitNumber: (json['unit_number'] as num?)?.toInt() ?? 0,
  executionNumber: json['execution_number'] as String? ?? '',
  docs:
      (json['documentations'] as List<dynamic>?)
          ?.map((e) => DocModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  createdAt: json['created_at'] as String? ?? '',
  updatedAt: json['updated_at'] as String? ?? '',
);

Map<String, dynamic> _$SallaOrderItemUnitModelToJson(
  _SallaOrderItemUnitModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'unit_number': instance.unitNumber,
  'execution_number': instance.executionNumber,
  'documentations': instance.docs.map((e) => e.toJson()).toList(),
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
