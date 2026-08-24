import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import '../app_database.dart';
import '../tables/items_table.dart';
part 'items_dao.g.dart';

@DriftAccessor(tables: [ItemsTable, ItemUnitsTable, DocsTable, DocMediaTable])
@lazySingleton
class ItemsDao extends DatabaseAccessor<AppDatabase> with _$ItemsDaoMixin {
  ItemsDao(AppDatabase db) : super(db);

  Future<void> upsert(ItemsTableCompanion item) {
    return into(itemsTable).insertOnConflictUpdate(item);
  }
}
