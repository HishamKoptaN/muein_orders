import 'package:drift/drift.dart';

@DataClassName('ItemEntry')
class ItemsTable extends Table {
  IntColumn get id => integer()();
  TextColumn get printedName => text().nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ItemUnitEntry')
class ItemUnitsTable extends Table {
  IntColumn get id => integer()();
  IntColumn get itemId =>
      integer().references(ItemsTable, #id, onDelete: KeyAction.cascade)();
  IntColumn get unitNumber => integer().nullable()();
  TextColumn get executionNumber => text().nullable()();
  @override
  Set<Column> get primaryKey => {id};
}
