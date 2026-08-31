import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:error_handler/error_handler.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/app_database.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
import '../../domain/entities/salla_order_items_res_entity.dart';
import '../../domain/repo/order_items_repo.dart';
import '../datasources/order_items_api.dart';
import '../mappers/salla_order_items_res_mapper.dart';

class RawStructureData {
  final List<ItemEntry> items;
  final List<ItemUnitEntry> units;
  final List<DocEntry> docs;
  final List<DocMediaEntry> media;

  RawStructureData({
    required this.items,
    required this.units,
    required this.docs,
    required this.media,
  });
}

@Singleton(as: OrderItemsRepo)
class OrdersRepoImpl implements OrderItemsRepo {
  final OrderItemsApi _api;
  final AppDatabase _db;
  OrdersRepoImpl(this._api, this._db);
  final _remoteDataSubject = BehaviorSubject<SallaOrderItemsResEntity>();
  @override
  Stream<SallaOrderItemsResEntity> watch({UploadStatus? uploadStatus}) {
    return Rx.combineLatest3(
      _remoteDataSubject.stream,
      _db.docsDao.watch(),
      _db.docMediaDao.watch(),
      (remote, docsMap, mediaMap) =>
          _mergeRemoteWithLocal(remote, docsMap, mediaMap, uploadStatus),
    );
  }

  SallaOrderItemsResEntity _mergeRemoteWithLocal(
    SallaOrderItemsResEntity remote,
    Map<int, DocEntry> docsLocalMap,
    Map<int, DocMediaEntry> mediaLocalMap,
    UploadStatus? filterStatus,
  ) {
    final filteredItems = remote.sallaOrderItems
        .map((item) {
          final filteredUnits = item.sallaOrderItemUnits
              .map((unit) {
                final updatedDocs = unit.docs
                    .map((doc) {
                      var updatedDoc = doc;
                      final localDoc = docsLocalMap[doc.id];
                      if (localDoc != null) {
                        updatedDoc = updatedDoc.copyWith(
                          latitude:
                              localDoc.latitude?.toString() ??
                              updatedDoc.latitude,
                          longitude:
                              localDoc.longitude?.toString() ??
                              updatedDoc.longitude,
                          uploadStatus: UploadStatus.values.byName(
                            localDoc.uploadStatus ?? UploadStatus.init.name,
                          ),
                          locationUploadStatus: UploadStatus.values.byName(
                            localDoc.locationUploadStatus ??
                                UploadStatus.init.name,
                          ),
                        );
                      }
                      return updatedDoc.copyWith(
                        files: updatedDoc.files.map((docMedia) {
                          final localDocMedia = mediaLocalMap[docMedia.id];
                          if (localDocMedia == null) return docMedia;
                          return docMedia.copyWith(
                            localFilePath:
                                localDocMedia.localFilePath ??
                                docMedia.localFilePath,
                            fileUploadStatus: localDocMedia.uploadStatus != null
                                ? UploadStatus.values.byName(
                                    localDocMedia.uploadStatus!,
                                  )
                                : docMedia.fileUploadStatus,
                          );
                        }).toList(),
                      );
                    })
                    .where((doc) {
                      if (filterStatus == null) return true;
                      return doc.uploadStatus == filterStatus;
                    })
                    .toList();
                return unit.copyWith(docs: updatedDocs);
              })
              .where((unit) {
                if (filterStatus == null) return true;
                return unit.docs.isNotEmpty;
              })
              .toList();

          return item.copyWith(sallaOrderItemUnits: filteredUnits);
        })
        .where((item) {
          if (filterStatus == null) return true;
          return item.sallaOrderItemUnits.isNotEmpty;
        })
        .toList();

    return remote.copyWith(sallaOrderItems: filteredItems);
  }

  @override
  Future<ExecuteGuard<void>> get({
    required int subCategoryId,
    UploadStatus? filter,
  }) async {
    try {
      final res = await _api.get(subCategoryId: subCategoryId);
      _remoteDataSubject.add(res.toEntity());
      return const ExecuteGuard.success(data: null);
    } catch (e, st) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }
}
