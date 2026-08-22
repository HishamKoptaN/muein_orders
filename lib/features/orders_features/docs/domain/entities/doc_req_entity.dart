import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../cached_docs/present/view/widgets/file_picker_utils.dart';
import 'doc_entity.dart';
part 'doc_req_entity.freezed.dart';

@freezed
abstract class DocReqEntity with _$DocReqEntity {
  const factory DocReqEntity({
    required int id,
    required List<DocMediaEntity> files,
    required LocationDocEntity location,
  }) = _DocReqEntity;
}

@freezed
abstract class DocMediaReqEntity with _$DocMediaReqEntity {
  const factory DocMediaReqEntity({
    required int id,
    required int docId,
    required String filePath,
    required String thumbnail,
    required FileType fileType,
  }) = _DocMediaReqEntity;
}
