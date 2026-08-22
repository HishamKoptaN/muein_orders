// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'units_dao.dart';

// ignore_for_file: type=lint
mixin _$UnitsDaoMixin on DatabaseAccessor<AppDatabase> {
  $ItemsTableTable get itemsTable => attachedDatabase.itemsTable;
  $ItemUnitsTableTable get itemUnitsTable => attachedDatabase.itemUnitsTable;
  UnitsDaoManager get managers => UnitsDaoManager(this);
}

class UnitsDaoManager {
  final _$UnitsDaoMixin _db;
  UnitsDaoManager(this._db);
  $$ItemsTableTableTableManager get itemsTable =>
      $$ItemsTableTableTableManager(_db.attachedDatabase, _db.itemsTable);
  $$ItemUnitsTableTableTableManager get itemUnitsTable =>
      $$ItemUnitsTableTableTableManager(
        _db.attachedDatabase,
        _db.itemUnitsTable,
      );
}
