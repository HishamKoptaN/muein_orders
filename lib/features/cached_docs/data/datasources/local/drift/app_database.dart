import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'cached_docs_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [CachedDocs])
@singleton
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<int> insertDoc({required CachedDocsCompanion doc}) =>
      into(cachedDocs).insert(doc);

  Future<List<CachedDoc>> getAllDocs() => select(cachedDocs).get();

  Future<CachedDoc?> getDoc({required int orderId}) {
    return (select(cachedDocs)..where((t) => t.orderId.equals(orderId)))
        .getSingleOrNull();
  }

  Future<int> deleteDoc({required int orderId}) {
    return (delete(cachedDocs)..where((t) => t.orderId.equals(orderId))).go();
  }

  Stream<List<CachedDoc>> watchAllDocs() {
    return select(cachedDocs).watch();
  }

  Stream<List<CachedDoc>> watchDocs({required int orderId}) {
    return (select(cachedDocs)..where((t) => t.orderId.equals(orderId)))
        .watch();
  }

  Stream<int> watchUploadingDocsCount() {
    return (select(cachedDocs)
          ..where((t) => t.uploadStatus.equals('uploading')))
        .watch()
        .map((docs) => docs.length);
  }

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final dir = await getApplicationDocumentsDirectory();
      final file = File(p.join(dir.path, 'app_db.sqlite'));
      return NativeDatabase(file);
    });
  }
}
