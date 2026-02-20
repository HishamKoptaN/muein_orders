import 'dart:developer';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../../../domain/entities/cached_doc_entity.dart';
import 'cached_docs_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [CachedDocsTable])
@singleton
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());
  @override
  int get schemaVersion => 1;
  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from < 1) {
          for (final table in allTables) {
            await m.deleteTable(table.actualTableName);
          }
          await m.createAll();
        }
      },
    );
  }

  Future<CachedDocEntry?> getCachedDoc({required int docId}) async {
    debugPrint('=== DEBUG: getCachedDoc START ===');
    debugPrint('docId: $docId');

    try {
      final result = await (select(
        cachedDocsTable,
      )..where((t) => t.docId.equals(docId))).getSingleOrNull();

      debugPrint('Database result: ${result != null ? "found" : "not found"}');
      if (result != null) {
        debugPrint('Files count: ${result.files?.length ?? 0}');
        debugPrint(
          'Location: ${result.location?.latitude}, ${result.location?.longitude}',
        );
      }

      return result;
    } catch (e) {
      debugPrint('Error getting cached doc: $e');
      return null;
    }
  }

  Future<void> cachedDoc({
    required CachedDocsTableCompanion cachedDocsTableCompanion,
  }) async {
    log('=== DEBUG: Database cachedDoc START ===');
    log('cachedDocsTableCompanion: ${cachedDocsTableCompanion.toString()}');

    try {
      await into(
        cachedDocsTable,
      ).insertOnConflictUpdate(cachedDocsTableCompanion);

      log('Database insert successful!');
    } catch (e) {
      log('Database insert failed: $e');
      rethrow;
    }
  }

  Future<void> updateOrAddFile({
    required int docId,
    required DocFile newFile,
  }) async {
    final existing = await (select(
      cachedDocsTable,
    )..where((t) => t.docId.equals(docId))).getSingleOrNull();
    List<DocFile> updatedFiles = [];
    if (existing != null && existing.files != null) {
      updatedFiles = List<DocFile>.from(existing.files!);
      final index = updatedFiles.indexWhere((f) => f.type == newFile.type);
      if (index != -1) {
        updatedFiles[index] = newFile;
      } else {
        updatedFiles.add(newFile);
      }
    } else {
      updatedFiles = [newFile];
    }
    await into(cachedDocsTable).insertOnConflictUpdate(
      CachedDocsTableCompanion(
        docId: Value(docId),
        files: Value(updatedFiles),
        uploadStatus: Value(FileUploadStatus.pending.name),
      ),
    );
  }

  Stream<CachedDocEntity> watchDoc({required int docId}) async* {
    final exists = await (select(
      cachedDocsTable,
    )..where((t) => t.docId.equals(docId))).getSingleOrNull();
    if (exists == null) {
      await into(cachedDocsTable).insert(
        CachedDocsTableCompanion.insert(
          docId: Value(docId),
          uploadStatus: Value(FileUploadStatus.init.name),
          uploadProgress: const Value(0.0),
        ),
      );
    }
    yield* (select(cachedDocsTable)..where((t) => t.docId.equals(docId)))
        .watchSingle()
        .map(CachedDocEntity.fromDb);
  }

  Future<void> updateFileStatus({
    required int docId,
    required FileUploadStatus status,
    required DocFileType fileType,
  }) async {
    await (update(cachedDocsTable)..where((t) => t.docId.equals(docId))).write(
      CachedDocsTableCompanion(uploadStatus: Value(status.name)),
    );
  }

  Future<int> deleteDoc({required int docId}) {
    return (delete(cachedDocsTable)..where((t) => t.docId.equals(docId))).go();
  }

  Future<void> updateDocLocationStatus({
    required int docId,
    required FileUploadStatus status,
  }) async {
    final cachedDoc = await (select(
      cachedDocsTable,
    )..where((t) => t.docId.equals(docId))).getSingleOrNull();

    if (cachedDoc?.location != null) {
      final updatedLocation = LocationDoc(
        latitude: cachedDoc!.location!.latitude,
        longitude: cachedDoc.location!.longitude,
        status: status,
      );

      await (update(cachedDocsTable)..where((t) => t.docId.equals(docId)))
          .write(CachedDocsTableCompanion(location: Value(updatedLocation)));
    }
  }

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final dir = await getApplicationDocumentsDirectory();
      final file = File(p.join(dir.path, 'app_db.sqlite'));
      return NativeDatabase(file);
    });
  }
}
