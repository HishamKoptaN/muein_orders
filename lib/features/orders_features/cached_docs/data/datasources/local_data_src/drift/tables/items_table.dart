import 'package:drift/drift.dart';

enum DocMediaType { image, video }

enum UploadStatus { init, pending, uploading, uploaded, failed }

@DataClassName('ItemEntry')
class ItemsTable extends Table {
  IntColumn get id => integer()();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ItemUnitEntry')
class ItemUnitsTable extends Table {
  IntColumn get id => integer()();
  IntColumn get itemId =>
      integer().references(ItemsTable, #id, onDelete: KeyAction.cascade)();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('DocEntry')
class DocsTable extends Table {
  IntColumn get id => integer()();
  IntColumn get unitId =>
      integer().references(ItemUnitsTable, #id, onDelete: KeyAction.cascade)();
  TextColumn get uploadStatus => text().nullable()();
  TextColumn get locationUploadStatus => text().nullable()();
  RealColumn get latitude => real().nullable()();
  RealColumn get longitude => real().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('DocMediaEntry')
class DocMediaTable extends Table {
  IntColumn get id => integer()();
  IntColumn get docId =>
      integer().references(DocsTable, #id, onDelete: KeyAction.cascade)();
  TextColumn get localFilePath => text().nullable()();
  TextColumn get uploadStatus => text().nullable()();
  @override
  Set<Column> get primaryKey => {id};
}
