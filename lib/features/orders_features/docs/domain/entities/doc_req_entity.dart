import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
part 'doc_req_entity.freezed.dart';

@freezed
abstract class DocReqEntity with _$DocReqEntity {
  const factory DocReqEntity({
    required int id,
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    @Default(UploadStatus.init) UploadStatus locationUploadStatus,
  }) = _DocReqEntity;
}

@freezed
abstract class DocMediaReqEntity with _$DocMediaReqEntity {
  const factory DocMediaReqEntity({
    required int id,
    required int docId,
    required String filePath,
    required String thumbnail,
    required DocMediaType fileType,
  }) = _DocMediaReqEntity;
}
