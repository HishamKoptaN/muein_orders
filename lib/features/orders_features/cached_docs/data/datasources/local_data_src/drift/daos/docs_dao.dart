import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/docs_table.dart';
import '../tables/doc_media_table.dart';
part 'docs_dao.g.dart';

@DriftAccessor(tables: [DocsTable, DocMediaTable])
class DocsDao extends DatabaseAccessor<AppDatabase> with _$DocsDaoMixin {
  DocsDao(AppDatabase db) : super(db);
  Stream<List<DocEntry>> watchDocsByUnitIds(List<int> unitIds) {
    return (select(docsTable)..where((t) => t.unitId.isIn(unitIds))).watch();
  }

  Stream<List<DocMediaEntry>> watchMediaByDocIds(List<int> ids) {
    return (select(docMediaTable)..where((t) {
          return t.docId.isIn(ids);
        }))
        .watch();
  }

  Future<int> insertDoc(DocsTableCompanion doc) {
    return into(docsTable).insert(doc);
  }

  //Future<bool> updateUploadStatus(int docId, String status) {
  //  return (update(docMediaTable)..where((t) => t.id.equals(docId)))
  //      .write(DocsTableCompanion(uploadStatus: Value(status)))
  //      .then((rows) => rows > 0);
  //}

  Future<int> deleteDoc(int docId) {
    return (delete(docsTable)..where((t) => t.id.equals(docId))).go();
  }
}
