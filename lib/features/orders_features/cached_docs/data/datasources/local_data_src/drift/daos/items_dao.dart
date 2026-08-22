import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import '../app_database.dart';
import '../tables/docs_table.dart';
import '../tables/items_table.dart';
part 'items_dao.g.dart';

@DriftAccessor(tables: [ItemsTable, ItemUnitsTable, DocsTable])
@lazySingleton
class ItemsDao extends DatabaseAccessor<AppDatabase> with _$ItemsDaoMixin {
  ItemsDao(AppDatabase db) : super(db);
  Stream<List<ItemEntry>> watchItems() {
    return select(itemsTable).watch();
  }

  Stream<List<ItemEntry>> watchItemsByIds(List<int> ids) {
    return (select(itemsTable)..where((t) {
          return t.id.isIn(ids);
        }))
        .watch();
  }

  Stream<List<ItemUnitEntry>> watchUnitsByItemIds(List<int> itemIds) {
    return (select(itemUnitsTable)..where((t) {
          return t.itemId.isIn(itemIds);
        }))
        .watch();
  }

  Stream<List<DocEntry>> watchDocsByUnitIds(List<int> unitIds) {
    return (select(docsTable)..where((t) {
          return t.unitId.isIn(unitIds);
        }))
        .watch();
  }

  Future<void> upsertItemsBulk(List<int> itemIds) async {
    await batch((batch) {
      final companions = itemIds.map((id) {
        return ItemsTableCompanion.insert(id: Value(id));
      }).toList();
      batch.insertAll(itemsTable, companions, mode: .insertOrReplace);
    });
  }
}
