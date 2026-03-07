import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/meta_model.dart';
import '../../../docs/data/models/docs_res_model.dart';

part 'orders_res_model.freezed.dart';
part 'orders_res_model.g.dart';

@freezed
sealed class OrdersResModel with _$OrdersResModel {
  const OrdersResModel._();
  const factory OrdersResModel.orders({
    @JsonKey(name: 'orders') List<OrderModel>? orders,
    @JsonKey(name: 'meta') MetaModel? meta,
  }) = OrdersResponse;

  const factory OrdersResModel.individualDocs({required List<DocModel> docs}) =
      IndividualDocsResponse;

  factory OrdersResModel.fromJson(dynamic json) {
    if (json is Map<String, dynamic>) {
      return OrdersResModel.orders(
        orders: (json['orders'] as List?)
            ?.map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        meta: json['meta'] != null
            ? MetaModel.fromJson(json['meta'] as Map<String, dynamic>)
            : null,
      );
    } else if (json is List) {
      return IndividualDocsResponse(
        docs: json
            .map((e) => DocModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    }
    throw Exception('تنسيق الرد غير معروف: ${json.runtimeType}');
  }
}

@freezed
abstract class OrderModel with _$OrderModel {
  const factory OrderModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'salla_order_id') int? sallaOrderId,
    @JsonKey(name: 'salla_product_id') int? sallaProductId,
    @JsonKey(name: 'printed_name') String? printedName,
    @JsonKey(name: 'execution_number') String? executionNumber,
    @JsonKey(name: 'docs') List<DocModel>? docs,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, Object?> json) =>
      _$OrderModelFromJson(json);
}
