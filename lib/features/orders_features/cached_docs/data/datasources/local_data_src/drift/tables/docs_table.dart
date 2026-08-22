import 'dart:convert';

import 'package:drift/drift.dart';

import '../../../../../../docs/data/models/docs_res_model.dart';
import '../../../../models/cached_doc_model.dart';
import 'items_table.dart';

enum DocMediaType { image, video }

enum UploadStatus { init, pending, uploading, uploaded, failed }

@DataClassName('DocEntry')
class DocsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get serverMediaId => integer().nullable()();
  IntColumn get unitId =>
      integer().references(ItemUnitsTable, #id, onDelete: KeyAction.cascade)();
  TextColumn get location =>
      text().map(const LocationDocConverter()).nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  @override
  List<Index> get indexes => [
    Index(
      'unit_id_idx',
      'CREATE INDEX IF NOT EXISTS unit_id_idx ON docs_table (unit_id);',
    ),
  ];
}

class DocFilesConverter extends TypeConverter<List<DocMediaModel>?, String?> {
  const DocFilesConverter();

  @override
  List<DocMediaModel>? fromSql(String? fromDb) {
    if (fromDb == null || fromDb.isEmpty) {
      return null;
    }

    try {
      final List<dynamic> list = jsonDecode(fromDb);

      return list.map((e) => DocMediaModel.fromJson(e)).toList();
    } catch (_) {
      return null;
    }
  }

  @override
  String? toSql(List<DocMediaModel>? value) {
    if (value == null) {
      return null;
    }

    return jsonEncode(value.map((e) => e.toJson()).toList());
  }
}

class LocationDocConverter extends TypeConverter<LocationDocModel?, String?> {
  const LocationDocConverter();

  @override
  LocationDocModel? fromSql(String? fromDb) {
    if (fromDb == null || fromDb.isEmpty) {
      return null;
    }

    try {
      return LocationDocModel.fromJson(jsonDecode(fromDb));
    } catch (_) {
      return null;
    }
  }

  @override
  String? toSql(LocationDocModel? value) {
    if (value == null) {
      return null;
    }

    return jsonEncode(value.toJson());
  }
}
