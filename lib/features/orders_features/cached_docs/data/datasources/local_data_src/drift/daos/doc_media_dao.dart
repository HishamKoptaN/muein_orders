import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/items_table.dart';
part 'doc_media_dao.g.dart';

@DriftAccessor(tables: [DocMediaTable])
class DocMediaDao extends DatabaseAccessor<AppDatabase>
    with _$DocMediaDaoMixin {
  DocMediaDao(AppDatabase db) : super(db);
  Stream<Map<int, DocMediaEntry>> watch() {
    return select(docMediaTable).watch().map((rows) {
      return {for (final row in rows) row.id: row};
    });
  }

  Future<void> upsert(DocMediaTableCompanion doc) {
    return into(docMediaTable).insertOnConflictUpdate(doc);
  }

  Future<void> updateUploadStatus({required int id, required String status}) {
    return (update(docMediaTable)..where((t) {
          return t.id.equals(id);
        }))
        .write(DocMediaTableCompanion(uploadStatus: Value(status)));
  }
}
