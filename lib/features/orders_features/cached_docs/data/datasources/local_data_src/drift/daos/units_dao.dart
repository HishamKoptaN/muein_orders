// lib/core/database/daos/units_dao.dart
import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/items_table.dart';

part 'units_dao.g.dart';

@DriftAccessor(tables: [ItemUnitsTable])
class UnitsDao extends DatabaseAccessor<AppDatabase> with _$UnitsDaoMixin {
  UnitsDao(AppDatabase db) : super(db);
  Stream<List<ItemUnitEntry>> watchUnitsByIds(List<int> unitIds) {
    return (select(itemUnitsTable)..where((t) {
          return t.id.isIn(unitIds);
        }))
        .watch();
  }

  Future<void> upsertUnitsBulk(List<Map<String, int>> unitItemPairs) async {
    await batch((batch) {
      final companions = unitItemPairs.map((pair) {
        return ItemUnitsTableCompanion.insert(
          id: Value(pair['id'] ?? 0),
          itemId: pair['itemId'] ?? 0,
        );
      }).toList();
      batch.insertAll(itemUnitsTable, companions, mode: .insertOrReplace);
    });
  }
}
