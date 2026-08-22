// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docs_dao.dart';

// ignore_for_file: type=lint
mixin _$DocsDaoMixin on DatabaseAccessor<AppDatabase> {
  $ItemsTableTable get itemsTable => attachedDatabase.itemsTable;
  $ItemUnitsTableTable get itemUnitsTable => attachedDatabase.itemUnitsTable;
  $DocsTableTable get docsTable => attachedDatabase.docsTable;
  $DocMediaTableTable get docMediaTable => attachedDatabase.docMediaTable;
  DocsDaoManager get managers => DocsDaoManager(this);
}

class DocsDaoManager {
  final _$DocsDaoMixin _db;
  DocsDaoManager(this._db);
  $$ItemsTableTableTableManager get itemsTable =>
      $$ItemsTableTableTableManager(_db.attachedDatabase, _db.itemsTable);
  $$ItemUnitsTableTableTableManager get itemUnitsTable =>
      $$ItemUnitsTableTableTableManager(
        _db.attachedDatabase,
        _db.itemUnitsTable,
      );
  $$DocsTableTableTableManager get docsTable =>
      $$DocsTableTableTableManager(_db.attachedDatabase, _db.docsTable);
  $$DocMediaTableTableTableManager get docMediaTable =>
      $$DocMediaTableTableTableManager(_db.attachedDatabase, _db.docMediaTable);
}
