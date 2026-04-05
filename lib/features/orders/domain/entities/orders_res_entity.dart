import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/meta_entity.dart';
import '../../../docs/domain/entities/docs_res_entity.dart';

part 'orders_res_entity.freezed.dart';
part 'orders_res_entity.g.dart';

@freezed
sealed class OrdersResEntity with _$OrdersResEntity {
  const OrdersResEntity._();
  const factory OrdersResEntity.orders({
    required List<OrderEntity> orders,
    required MetaEntity meta,
  }) = _OrdersEntity;
  const factory OrdersResEntity.individualDocs({
    required List<DocEntity> docs,
  }) = _IndividualDocsEntity;
  factory OrdersResEntity.fromJson(Map<String, dynamic> json) =>
      _$OrdersResEntityFromJson(json);
}

@freezed
abstract class OrderEntity with _$OrderEntity {
  const OrderEntity._();
  const factory OrderEntity({
    required int id,
    required int sallaOrderId,
    required String printedName,
    required String executionNumber,
    required List<DocEntity> docs,
  }) = _OrderEntity;
  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}

@freezed
abstract class DocEntity with _$DocEntity {
  const DocEntity._();
  const factory DocEntity({
    required int id,
    String? imageOne,
    String? imageTwo,
    String? thumbnailUrlOne,
    String? thumbnailUrlTwo,
    String? videoOne,
    String? videoTwo,
    String? latitude,
    String? longitude,
    DocStatusEntity? docStatus,
    int? copiesCount,
    String? reviewedBy,
    String? reviewedAt,
    String? adminNotes,
    String? createdAt,
    String? updatedAt,
  }) = _DocEntity;
  factory DocEntity.fromJson(Map<String, dynamic> json) =>
      _$DocEntityFromJson(json);
}
