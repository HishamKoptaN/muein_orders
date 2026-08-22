import 'dart:async';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import '../../../../../core/errors/handlers/api_error_handler/error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/app_database.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/tables/docs_table.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../../domain/entities/salla_order_items_res_entity.dart';
import '../../domain/repo/order_items_repo.dart';
import '../datasources/order_items_api.dart';
import '../mappers/salla_order_items_res_mapper.dart';

@Singleton(as: OrderItemsRepo)
class OrdersRepoImpl implements OrderItemsRepo {
  final OrderItemsApi _api;
  final AppDatabase _db;
  OrdersRepoImpl(this._api, this._db);
  @override
  Future<ApiResult<void>> get({
    required int subCategoryId,
    UploadStatus? filter,
  }) async {
    
    try {
      final res = await _api.get(subCategoryId: subCategoryId);
      final itemsCompanions = <ItemsTableCompanion>[];
      final unitsCompanions = <ItemUnitsTableCompanion>[];
      final docsCompanions = <DocsTableCompanion>[];
      final docMediaCompanions = <DocMediaTableCompanion>[];
      for (final item in res.toEntity().sallaOrderItems) {
        itemsCompanions.add(
          ItemsTableCompanion.insert(
            id: Value(item.id),
            printedName: Value(item.printedName),
          ),
        );
        for (final unit in item.sallaOrderItemUnits) {
          unitsCompanions.add(
            ItemUnitsTableCompanion.insert(
              id: Value(unit.id),
              itemId: item.id,
              unitNumber: Value(unit.unitNumber),
              executionNumber: Value(unit.executionNumber),
            ),
          );
          for (final doc in unit.docs) {
            docsCompanions.add(
              DocsTableCompanion.insert(id: Value(doc.id), unitId: unit.id),
            );
            for (final media in doc.files) {
              docMediaCompanions.add(
                DocMediaTableCompanion.insert(
                  id: Value(media.id),
                  docId: doc.id,
                  filePath: Value(media.filePath),
                  fileType: Value(media.docMediaType.name),
                  thumbnail: Value(media.thumbnail),
                  sequence: Value(media.sequence),
                ),
              );
            }
          }
        }
      }
      await _db.saveOrderItemsResponseBulk(
        items: itemsCompanions,
        units: unitsCompanions,
        docs: docsCompanions,
        media: docMediaCompanions,
      );
      return const ApiResult.success(data: null);
    } catch (e, st) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }

  @override
  Stream<SallaOrderItemsResEntity> watch() {
    return _db.itemsDao.watchItems().switchMap((localItems) {
      final itemIds = localItems.map((e) {
        return e.id;
      }).toList();
      return _db.itemsDao.watchUnitsByItemIds(itemIds).switchMap((localUnits) {
        if (localUnits.isEmpty) {
          return Stream.value(
            SallaOrderItemsResEntity(
              sallaOrderItems: localItems.map((i) {
                return SallaOrderItemEntity(
                  id: i.id,
                  printedName: i.printedName ?? '...',
                );
              }).toList(),
            ),
          );
        }
        final unitIds = localUnits.map((u) {
          return u.id;
        }).toList();
        return _db.itemsDao.watchDocsByUnitIds(unitIds).switchMap((localDocs) {
          if (localDocs.isEmpty) {
            return Stream.value(
              _buildEntityResult(
                localItems: localItems,
                localUnits: localUnits,
                localDocs: const [],
                localMedia: const [],
              ),
            );
          }
          final docIds = localDocs.map((d) {
            return d.id;
          }).toList();
          return _db.docsDao.watchMediaByDocIds(docIds).map((localMedia) {
            return _buildEntityResult(
              localItems: localItems,
              localUnits: localUnits,
              localDocs: localDocs,
              localMedia: localMedia,
            );
          });
        });
      });
    });
  }

  SallaOrderItemsResEntity _buildEntityResult({
    required List<ItemEntry> localItems,
    required List<ItemUnitEntry> localUnits,
    required List<DocEntry> localDocs,
    required List<DocMediaEntry> localMedia,
  }) {
    final mediaMap = <int, List<DocMediaEntity>>{};
    for (final media in localMedia) {
      final isVideo = media.fileType.toLowerCase() == 'video';
      final docMediaType = isVideo ? DocMediaType.video : DocMediaType.image;
      mediaMap
          .putIfAbsent(media.docId, () {
            return [];
          })
          .add(
            DocMediaEntity(
              id: media.id,
              docId: media.docId,
              filePath: media.filePath ?? '',
              docMediaType: docMediaType,
              thumbnail: media.thumbnail ?? '',
              sequence: media.sequence,
              fileUploadStatus: .pending,
            ),
          );
    }
    final docsMap = <int, List<DocEntity>>{};
    for (final doc in localDocs) {
      final foundFiles = mediaMap[doc.id] ?? [];

      docsMap
          .putIfAbsent(doc.unitId, () {
            return [];
          })
          .add(DocEntity(id: doc.id, files: mediaMap[doc.id] ?? []));
    }
    final unitsMap = <int, List<SallaOrderItemUnitEntity>>{};
    for (final unit in localUnits) {
      unitsMap
          .putIfAbsent(unit.itemId, () {
            return [];
          })
          .add(
            SallaOrderItemUnitEntity(
              id: unit.id,
              unitNumber: unit.unitNumber ?? 0,
              executionNumber: unit.executionNumber ?? '',
              docs: docsMap[unit.id] ?? [],
            ),
          );
    }
    final sallaOrderItems = localItems.map((item) {
      return SallaOrderItemEntity(
        id: item.id,
        printedName: item.printedName ?? '...',
        sallaOrderItemUnits: unitsMap[item.id] ?? [],
      );
    }).toList();

    return SallaOrderItemsResEntity(sallaOrderItems: sallaOrderItems);
  }
}
