import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import '../../../../../docs/data/models/docs_res_model.dart';
import '../../../../../docs/domain/entities/doc_entity.dart';
import '../../../../../salla_orders_items/data/models/order_items_res_model.dart';
import '../../../mappers/cached_doc_mapper.dart';
import '../../../models/cached_doc_model.dart';
import 'daos/docs_dao.dart';
import 'daos/items_dao.dart';
import 'daos/units_dao.dart';
import 'tables/doc_media_table.dart';
import 'tables/docs_table.dart';
import 'tables/items_table.dart';
part 'app_database.g.dart';

@DriftDatabase(
  tables: [ItemsTable, ItemUnitsTable, DocsTable, DocMediaTable],
  daos: [ItemsDao, UnitsDao, DocsDao],
)
@lazySingleton
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());
  @override
  int get schemaVersion => 5;
  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();
      },
      onUpgrade: (m, from, to) async {
        for (final table in allTables) {
          await m.deleteTable(table.actualTableName);
        }
        await m.createAll();
      },
      beforeOpen: (details) async {
        await customStatement('PRAGMA foreign_keys = ON;');
      },
    );
  }

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      await Future.delayed(Duration.zero);
      final dir = await getApplicationDocumentsDirectory();
      final file = File(p.join(dir.path, 'app_db.sqlite'));
      return NativeDatabase(file);
    });
  }

  Future<void> saveOrderItemsResponseBulk({
    required List<ItemsTableCompanion> items,
    required List<ItemUnitsTableCompanion> units,
    required List<DocsTableCompanion> docs,
    required List<DocMediaTableCompanion> media,
  }) async {
    await transaction(() async {
      await batch((b) {
        b
          ..insertAll(itemsTable, items, mode: .insertOrReplace)
          ..insertAll(itemUnitsTable, units, mode: .insertOrReplace)
          ..insertAll(docsTable, docs, mode: .insertOrReplace)
          ..insertAll(docMediaTable, media, mode: .insertOrReplace);
      });
    });
  }

  Stream<List<ItemEntry>> watchItems({required Set<int> ids}) {
    return (select(itemsTable)..where((table) {
          return table.id.isIn(ids);
        }))
        .watch();
  }

  Future<void> upsertItem({required SallaOrderItemModel sallaOrderItem}) async {
    await transaction(() async {
      await into(
        itemsTable,
      ).insertOnConflictUpdate(ItemEntry(id: sallaOrderItem.id));
    });
  }

  Future<void> upsertUnit({
    required SallaOrderItemUnitModel sallaOrderItemUnit,
  }) async {
    await transaction(() async {
      await into(itemUnitsTable).insertOnConflictUpdate(
        ItemUnitEntry(id: sallaOrderItemUnit.id, itemId: sallaOrderItemUnit.id),
      );
      for (final doc in sallaOrderItemUnit.docs) {
        await upsertDoc(doc: doc);
      }
    });
  }

  Future<void> upsertDoc({required DocModel doc}) async {
    await transaction(() async {
      await into(
        docsTable,
      ).insertOnConflictUpdate(DocsTableCompanion(id: Value(doc.id)));
      for (final media in doc.files) {
        await upsertDocMedia(docMedia: media);
      }
    });
  }

  Future<void> upsertDocMedia({required DocMediaModel docMedia}) async {
    await transaction(() async {
      await into(docMediaTable).insertOnConflictUpdate(
        DocMediaEntry(
          id: docMedia.id,
          docId: docMedia.documentationId,
          filePath: docMedia.filePath,
          fileType: docMedia.fileType,
          thumbnail: docMedia.thumbnail,
          sequence: docMedia.sequence,
          isServerFile: false,
        ),
      );
    });
  }

  Future<ItemEntry?> getItem({required int id}) async {
    try {
      final result =
          await (select(itemsTable)..where((t) {
                return t.id.equals(id);
              }))
              .getSingleOrNull();
      return result;
    } catch (e) {
      return null;
    }
  }

  Future<DocEntry?> getCachedDoc({required int id}) async {
    try {
      final result =
          await (select(docsTable)..where((t) {
                return t.id.equals(id);
              }))
              .getSingleOrNull();
      return result;
    } catch (e) {
      return null;
    }
  }

  Stream<List<DocEntry>> watchAllCachedDocs() {
    return select(docsTable).watch();
  }

  Stream<DocEntity> watchDoc({required int id}) async* {
    final exists =
        await (select(docsTable)..where((t) {
              return t.id.equals(id);
            }))
            .getSingleOrNull();
    if (exists == null) {
      await into(docsTable).insert(DocsTableCompanion(id: Value(id)));
    }
    yield* (select(docsTable)..where((t) {
          return t.id.equals(id);
        }))
        .watchSingle()
        .map((docEntry) {
          return docEntry.toEntity();
        });
  }

  Future<void> updateFileStatus({
    required int id,
    required UploadStatus status,
  }) async {
    await (update(docMediaTable)..where((t) {
      return t.id.equals(id);
    }));
  }

  Future<int> deleteDoc({required int docId}) {
    return (delete(docsTable)..where((t) {
          return t.id.equals(docId);
        }))
        .go();
  }

  Future<void> updateDocLocationStatus({
    required int docId,
    required UploadStatus status,
  }) async {
    // final cachedDoc =
    //     await (select(cachedDocsTable)..where((t) {
    //           return t.id.equals(docId);
    //         }))
    //         .getSingleOrNull();
    // if (cachedDoc?.location != null) {
    // final updatedLocation = LocationDocModel(
    //   latitude: cachedDoc!.location!.latitude,
    //   longitude: cachedDoc.location!.longitude,
    //   status: status,
    // );
    // await (update(cachedDocsTable)..where((t) {
    //       return t.id.equals(docId);
    //     }))
    //     .write(CachedDocsTableCompanion(location: Value(updatedLocation)));
    // }
  }
}
