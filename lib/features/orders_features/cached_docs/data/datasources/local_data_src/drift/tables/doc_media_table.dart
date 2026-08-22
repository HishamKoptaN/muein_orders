import 'package:drift/drift.dart';

@DataClassName('DocMediaEntry')
class DocMediaTable extends Table {
  IntColumn get id => integer()();
  IntColumn get docId => integer().named('doc_id')();
  TextColumn get filePath => text().named('file_path').nullable()();
  TextColumn get fileType =>
      text().named('file_type').withDefault(const Constant('image'))();
  TextColumn get thumbnail => text().named('thumbnail').nullable()();
  IntColumn get sequence => integer().withDefault(const Constant(1))();
  @override
  Set<Column> get primaryKey => {id};
}
