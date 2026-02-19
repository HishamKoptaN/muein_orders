import 'dart:developer';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../../../domain/entities/cached_doc_entity.dart';
import '../../../models/cached_doc_model.dart';
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

  Future<CachedDocModel?> getCachedDoc({required int docId}) {
    return (select(cachedDocsTable)..where((t) => t.docId.equals(docId)))
        .watchSingle()
        .map(CachedDocModel.fromDb)
        .first;
  }

  Future<void> cachedDoc({required CachedDocEntity doc}) async {
    await into(cachedDocsTable).insertOnConflictUpdate(
      CachedDocsTableCompanion(
        docId: Value(doc.docId ?? 0),
        imageOne: Value(
          DocFile(
            path: doc.imageOne?.path,
            status: doc.imageOne?.status ?? FileUploadStatus.pending,
            type: DocFileType.imageOne,
          ),
        ),
        imageTwo: doc.imageTwo != null
            ? Value(doc.imageTwo)
            : const Value.absent(),
        videoOne: doc.videoOne != null
            ? Value(doc.videoOne)
            : const Value.absent(),
        videoTwo: doc.videoTwo != null
            ? Value(doc.videoTwo)
            : const Value.absent(),
        location: doc.location != null
            ? Value(doc.location)
            : const Value.absent(),
        uploadStatus: const Value('pending'),
        uploadProgress: const Value(0.0),
      ),
    );
  }

  Future<void> updateDocFile({
    required int docId,
    required DocFileType fileType,
    required DocFile fileData,
  }) async {
    await (update(cachedDocsTable)..where((t) => t.docId.equals(docId))).write(
      CachedDocsTableCompanion(
        imageOne: fileType == DocFileType.imageOne
            ? Value(fileData)
            : const Value.absent(),
        imageTwo: fileType == DocFileType.imageTwo
            ? Value(fileData)
            : const Value.absent(),
        videoOne: fileType == DocFileType.videoOne
            ? Value(fileData)
            : const Value.absent(),
        videoTwo: fileType == DocFileType.videoTwo
            ? Value(fileData)
            : const Value.absent(),
      ),
    );
  }

  Future<void> updateDocLocation({
    required int docId,
    required LocationDoc locationData,
  }) async {
    await (update(cachedDocsTable)..where((t) => t.docId.equals(docId))).write(
      CachedDocsTableCompanion(location: Value(locationData)),
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

  Future<void> updateDocFileStatus({
    required int docId,
    required FileUploadStatus status,
    required DocFileType fileType,
    String? path,
  }) {
    switch (fileType) {
      case DocFileType.imageOne:
        return (update(
          cachedDocsTable,
        )..where((t) => t.docId.equals(docId))).write(
          CachedDocsTableCompanion(
            imageOne: Value(
              DocFile(path: path, status: status, type: DocFileType.imageOne),
            ),
          ),
        );
      case DocFileType.imageTwo:
        return (update(
          cachedDocsTable,
        )..where((t) => t.docId.equals(docId))).write(
          CachedDocsTableCompanion(
            imageTwo: Value(
              DocFile(path: path, status: status, type: DocFileType.imageTwo),
            ),
          ),
        );
      case DocFileType.videoOne:
        return (update(
          cachedDocsTable,
        )..where((t) => t.docId.equals(docId))).write(
          CachedDocsTableCompanion(
            videoOne: Value(
              DocFile(path: path, status: status, type: DocFileType.videoOne),
            ),
          ),
        );
      case DocFileType.videoTwo:
        return (update(
          cachedDocsTable,
        )..where((t) => t.docId.equals(docId))).write(
          CachedDocsTableCompanion(
            videoTwo: Value(
              DocFile(path: path, status: status, type: DocFileType.videoTwo),
            ),
          ),
        );
    }
  }

  Future<void> updateDocLocationStatus({
    required int docId,
    required FileUploadStatus status,
  }) async {
    final currentDoc = await (select(
      cachedDocsTable,
    )..where((t) => t.docId.equals(docId))).getSingleOrNull();
    if (currentDoc != null && currentDoc.location != null) {
      await (update(
        cachedDocsTable,
      )..where((t) => t.docId.equals(docId))).write(
        CachedDocsTableCompanion(
          location: Value(
            LocationDoc(
              latitude: currentDoc.location!.latitude,
              longitude: currentDoc.location!.longitude,
              status: status,
            ),
          ),
        ),
      );
    }
  }

  Future<void> updateDocStatus({
    required int docId,
    required FileUploadStatus status,
  }) {
    return (update(cachedDocsTable)..where((t) => t.docId.equals(docId))).write(
      CachedDocsTableCompanion(uploadStatus: Value(status.name)),
    );
  }

  Future<int> deleteDoc({required int docId}) {
    return (delete(cachedDocsTable)..where((t) => t.docId.equals(docId))).go();
  }

  // Future updateDocStatus({required int docId, required String status, String?   remotePath}) {
  //   return (update(cachedDocs)..where((t) => t.docId.equals(docId))).write(
  //     CachedDocsCompanion(
  //       uploadStatus: Value(status),
  //       // إذا كان هناك مسار قادم من أمازون نقوم بتحديثه
  //       ...(remotePath != null ? {remotePath: Value(remotePath)} : {}),
  //     ),
  //   );
  // }
  //! Monitor all
  // Future<List<CachedDocModel>> getAllDocs() {
  //   return select(cachedDocsTable).get();
  // }
  // Stream<List<CachedDocModel>> watchAllDocs() {
  //   return select(cachedDocsTable).watch();
  // }

  // Stream<List<CachedDocModel>> watchDocs({required int docId}) {
  //   return (select(
  //     cachedDocsTable,
  //   )..where((t) => t.docId.equals(docId))).watch();
  // }
  // Stream<int> watchUploadingDocsCount() {
  //   return (select(cachedDocsTable)
  //         ..where((t) => t.uploadStatus.equals('uploading')))
  //       .watch()
  //       .map((docs) => docs.length);
  // }
  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final dir = await getApplicationDocumentsDirectory();
      final file = File(p.join(dir.path, 'app_db.sqlite'));
      return NativeDatabase(file);
    });
  }
}
