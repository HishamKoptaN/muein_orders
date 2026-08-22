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
  @override
  List<Index> get indexes => [
    Index(
      'item_id_idx',
      'CREATE INDEX IF NOT EXISTS item_id_idx ON item_units_table (item_id);',
    ),
  ];
}
