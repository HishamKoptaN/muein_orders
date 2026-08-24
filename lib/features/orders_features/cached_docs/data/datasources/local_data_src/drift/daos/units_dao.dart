import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/items_table.dart';
part 'units_dao.g.dart';

@DriftAccessor(tables: [ItemUnitsTable])
class UnitsDao extends DatabaseAccessor<AppDatabase> with _$UnitsDaoMixin {
  UnitsDao(AppDatabase db) : super(db);

  Future<void> upsert({required ItemUnitsTableCompanion unit}) {
    return into(itemUnitsTable).insertOnConflictUpdate(unit);
  }
}
