import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/meta_entity.dart';
import '../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../docs/domain/entities/doc_status_entity.dart';
part 'order_items_res_entity.freezed.dart';

@freezed
abstract class OrderItemsResEntity with _$OrderItemsResEntity {
  const OrderItemsResEntity._();
  const factory OrderItemsResEntity({
    required List<SallaOrderItemEntity> items,
    required MetaEntity meta,
  }) = _OrderItemsResEntity;
  OrderItemsResEntity mergeLocalDocs(List<CachedDocEntry> localDocs) {
    final mergedOrders = items.map((order) {
      final relatedLocalDocs = localDocs
          .where((doc) {
            return doc.docId == order.id.toString();
          })
          .map((doc) {
            return _convertCachedDocToDocEntity(cachedDocEntry: doc);
          })
          .toList();
      return order.copyWith(
        sallaOrderItemUnits: [
          ...order.sallaOrderItemUnits,
          ...relatedLocalDocs,
        ],
      );
    }).toList();
    return OrderItemsResEntity(items: mergedOrders, meta: meta);
  }

  // OrdersResEntity applyFilter({
  //   FileUploadStatus? filter,
  //   bool hasDocsOnly = false,
  // }) {
  //   var filtered = filter;
  //   if (hasDocsOnly) {
  //     filtered = filtered.where((order) => order.docs.isNotEmpty).toList();
  //   }
  //   if (filter != null) {
  //     filtered = filtered
  //         .where((order) => order.matchesStatus(fileUploadStatus: filter))
  //         .toList();
  //   }
  //   return OrdersResEntity(orders: [], meta: meta);
  // }

  SallaOrderItemUnitEntity _convertCachedDocToDocEntity({
    required CachedDocEntry cachedDocEntry,
  }) {
    return SallaOrderItemUnitEntity(
      id: cachedDocEntry.docId,
      // imageOne: cachedDocEntry.files?[0].path,
      // imageTwo: cachedDocEntry.files?[1].path,
      // videoOne: cachedDocEntry.files?[2].path,
      // videoTwo: cachedDocEntry.files?[3].path,
      // cachedDoc: CachedDocEntity.fromDb(cachedDocEntry),
    );
  }
}

@freezed
abstract class SallaOrderItemEntity with _$SallaOrderItemEntity {
  const factory SallaOrderItemEntity({
    required int id,
    required String printedName,
    required List<SallaOrderItemUnitEntity> sallaOrderItemUnits,
  }) = _SallaOrderItemEntity;
}

@freezed
abstract class SallaOrderItemUnitEntity with _$SallaOrderItemUnitEntity {
  const SallaOrderItemUnitEntity._();
  const factory SallaOrderItemUnitEntity({
    @Default(0) int id,
    @Default('') String executionNumber,
    @Default([]) List<DocEntity> docs,
    String? createdAt,
    String? updatedAt,
  }) = _SallaOrderItemUnitEntity;

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
    @Default(0) int id,
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
