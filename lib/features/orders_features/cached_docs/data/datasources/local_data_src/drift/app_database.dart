import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'daos/doc_media_dao.dart';
import 'daos/docs_dao.dart';
import 'daos/items_dao.dart';
import 'daos/units_dao.dart';
import 'tables/items_table.dart';
part 'app_database.g.dart';

@DriftDatabase(
  tables: [ItemsTable, ItemUnitsTable, DocsTable, DocMediaTable],
  daos: [ItemsDao, UnitsDao, DocsDao, DocMediaDao],
)
@lazySingleton
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());
  @override
  int get schemaVersion => 8;
  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();
      },
      onUpgrade: (m, from, to) async {
        if (from < 8) {
          await m.addColumn(docsTable, docsTable.locationUploadStatus);
        }
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
}
