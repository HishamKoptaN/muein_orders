import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/meta_entity.dart';
import '../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../cached_docs/domain/entities/cached_doc_entity.dart';
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
  OrdersResEntity mergeLocalDocs(List<CachedDocEntry> localDocs) {
    return when(
      orders: (orders, meta) {
        final mergedOrders = orders.map((order) {
          final relatedLocalDocs = localDocs
              .where((doc) => doc.docId == order.id.toString())
              .map((doc) {
                return _convertCachedDocToDocEntity(cachedDocEntry: doc);
              })
              .toList();
          final allDocs = [...order.docs, ...relatedLocalDocs];
          return order.copyWith(docs: allDocs);
        }).toList();
        return OrdersResEntity.orders(orders: mergedOrders, meta: meta);
      },
      individualDocs: (docs) {
        return this;
      },
    );
  }

  OrdersResEntity applyFilter({
    FileUploadStatus? filter,
    bool hasDocsOnly = false,
  }) {
    return when(
      orders: (orders, meta) {
        var filtered = orders;
        if (hasDocsOnly) {
          filtered = filtered.where((order) => order.docs.isNotEmpty).toList();
        }
        if (filter != null) {
          filtered = filtered
              .where((order) => order.matchesStatus(fileUploadStatus: filter))
              .toList();
        }
        return OrdersResEntity.orders(orders: filtered, meta: meta);
      },
      individualDocs: (docs) {
        return this;
      },
    );
  }

  DocEntity _convertCachedDocToDocEntity({
    required CachedDocEntry cachedDocEntry,
  }) {
    return DocEntity(
      id: cachedDocEntry.docId,
      imageOne: cachedDocEntry.files?[0].path,
      imageTwo: cachedDocEntry.files?[1].path,
      videoOne: cachedDocEntry.files?[2].path,
      videoTwo: cachedDocEntry.files?[3].path,
      cachedDoc: CachedDocEntity.fromDb(cachedDocEntry),
    );
  }
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
  bool matchesStatus({required FileUploadStatus fileUploadStatus}) {
    for (final doc in docs) {
      if (doc.cachedDoc?.uploadStatus.name.toLowerCase().contains(
            fileUploadStatus.name,
          ) ??
          false) {
        return true;
      }
    }
    return false;
  }
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
    CachedDocEntity? cachedDoc,
    String? createdAt,
    String? updatedAt,
  }) = _DocEntity;
  factory DocEntity.fromJson(Map<String, dynamic> json) =>
      _$DocEntityFromJson(json);
  factory DocEntity.fromCachedDoc({required CachedDocEntry cachedDoc}) {
    final files = cachedDoc.files ?? [];
    return DocEntity(
      id: cachedDoc.docId,
      imageOne: files.isNotEmpty ? files[0].path : null,
      imageTwo: files.length > 1 ? files[1].path : null,
      videoOne: files.length > 2 ? files[2].path : null,
      videoTwo: files.length > 3 ? files[3].path : null,
      cachedDoc: CachedDocEntity.fromDb(cachedDoc),
    );
  }
}
