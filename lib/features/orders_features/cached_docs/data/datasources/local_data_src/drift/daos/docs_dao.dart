import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/items_table.dart';
part 'docs_dao.g.dart';

@DriftAccessor(tables: [DocsTable, DocMediaTable])
class DocsDao extends DatabaseAccessor<AppDatabase> with _$DocsDaoMixin {
  DocsDao(AppDatabase db) : super(db);
  Stream<Map<int, DocEntry>> watch() {
    return select(docsTable).watch().map((rows) {
      return {for (final row in rows) row.id: row};
    });
  }

  Future<void> upsert({required DocsTableCompanion doc}) async {
    await into(docsTable).insertOnConflictUpdate(doc);
  }

  Future<void> updateUploadStatus({required int id, required String status}) {
    return (update(docsTable)..where((t) {
          return t.id.equals(id);
        }))
        .write(DocsTableCompanion(uploadStatus: Value(status)));
  }

  Future<void> updateDocLocationStatus({
    required int id,
    required String status,
  }) {
    return (update(docsTable)..where((t) {
          return t.id.equals(id);
        }))
        .write(DocsTableCompanion(locationUploadStatus: Value(status)));
  }
}
