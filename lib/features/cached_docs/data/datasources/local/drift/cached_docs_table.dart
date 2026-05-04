import 'dart:convert';

import 'package:drift/drift.dart';

enum DocFileType { image, image_two, video_one, video_two }

enum FileUploadStatus { init, pending, uploading, uploaded, failed }

@DataClassName('CachedDocEntry')
class CachedDocsTable extends Table {
  IntColumn get docId => integer()();
  TextColumn get files => text().map(const DocFilesConverter()).nullable()();
  TextColumn get location =>
      text().map(const LocationDocConverter()).nullable()();
  TextColumn get uploadStatus =>
      text().withDefault(Constant(FileUploadStatus.init.name))();
  RealColumn get uploadProgress => real().withDefault(const Constant(0.0))();
  @override
  Set<Column> get primaryKey => {docId};
}

class DocFile {
  final String? path;
  final DocFileType type;
  final FileUploadStatus status;
  DocFile({
    required this.path,
    required this.type,
    this.status = FileUploadStatus.init,
  });
  factory DocFile.fromJson(Map<String, dynamic> json) => DocFile(
    path: json['path'],
    type: DocFileType.values.firstWhere(
      (e) => e.name == json['type'],
      orElse: () => DocFileType.image_one,
    ),
    status: FileUploadStatus.values.firstWhere(
      (e) => e.name == json['status'],
      orElse: () => FileUploadStatus.init,
    ),
  );
  Map<String, dynamic> toJson() => {
    'path': path,
    'type': type.name,
    'status': status.name,
  };
  DocFile copyWith({
    String? path,
    FileUploadStatus? status,
    DocFileType? type,
  }) {
    return DocFile(
      path: path ?? this.path,
      status: status ?? this.status,
      type: type ?? this.type,
    );
  }
}

class DocFilesConverter extends TypeConverter<List<DocFile>, String> {
  const DocFilesConverter();
  @override
  List<DocFile> fromSql(String fromDb) {
    if (fromDb.isEmpty) return [];
    try {
      final List<dynamic> list = jsonDecode(fromDb);
      return list.map((e) => DocFile.fromJson(e)).toList();
    } catch (e) {
      return [];
    }
  }

  @override
  String toSql(List<DocFile> value) =>
      jsonEncode(value.map((e) => e.toJson()).toList());
}

class LocationDocConverter extends TypeConverter<LocationDoc, String> {
  const LocationDocConverter();
  @override
  LocationDoc fromSql(String fromDb) =>
      LocationDoc.fromJson(jsonDecode(fromDb));
  @override
  String toSql(LocationDoc value) => jsonEncode(value.toJson());
}

class LocationDoc {
  final double? latitude;
  final double? longitude;
  final FileUploadStatus status;
  LocationDoc({
    this.latitude,
    this.longitude,
    this.status = FileUploadStatus.init,
  });
  factory LocationDoc.fromJson(Map<String, dynamic> json) => LocationDoc(
    latitude: json['latitude']?.toDouble(),
    longitude: json['longitude']?.toDouble(),
    status: FileUploadStatus.values.firstWhere(
      (e) => e.name == json['status'],
      orElse: () => FileUploadStatus.init,
    ),
  );
  Map<String, dynamic> toJson() => {
    'latitude': latitude,
    'longitude': longitude,
    'status': status.name,
  };
}
