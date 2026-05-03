import 'package:drift/drift.dart';
import 'app_database.dart';
import 'cached_docs_table.dart';

extension OptimizedQueries on AppDatabase {
  Stream<List<CachedDocEntry>> watchOrdersByStatus(FileUploadStatus status) {
    return (select(
      cachedDocsTable,
    )..where((tbl) => tbl.uploadStatus.equals(status.name))).watch();
  }

  Future<List<CachedDocEntry>> getFailedOrders() {
    return (select(cachedDocsTable)
          ..where(
            (tbl) => tbl.uploadStatus.equals(FileUploadStatus.failed.name),
          )
          ..orderBy([(tbl) => OrderingTerm.asc(tbl.docId)]))
        .get();
  }

  Future<Map<FileUploadStatus, int>> getUploadStats() {
    return customSelect(
          'SELECT upload_status, COUNT(*) as count FROM cached_docs_table GROUP BY upload_status',
          readsFrom: {cachedDocsTable},
        )
        .map(
          (row) => MapEntry(
            FileUploadStatus.values.firstWhere(
              (e) => e.name == row.read<String>('upload_status'),
              orElse: () => FileUploadStatus.init,
            ),
            row.read<int>('count') ?? 0,
          ),
        )
        .get()
        .then((rows) => Map.fromEntries(rows));
  }

  Future<void> batchUpdateStatus(
    List<int> docIds,
    FileUploadStatus status,
  ) async {
    await transaction(() async {
      for (final docId in docIds) {
        await (update(
          cachedDocsTable,
        )..where((tbl) => tbl.docId.equals(docId))).write(
          CachedDocsTableCompanion(
            uploadStatus: Value(status.name),
            uploadProgress: const Value(0.0),
          ),
        );
      }
    });
  }
}
