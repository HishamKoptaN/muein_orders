import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../cached_docs/present/view/widgets/file_picker_utils.dart';
part 'doc_media_req_entity.freezed.dart';
part 'doc_media_req_entity.g.dart';

@freezed
abstract class DocMediaReqEntity with _$DocMediaReqEntity {
  const factory DocMediaReqEntity({
    required int docId,
    required String filePath,
    required String thumbnail,
    required FileType fileType,
  }) = _DocMediaReqEntity;

  factory DocMediaReqEntity.fromJson(Map<String, dynamic> json) =>
      _$DocMediaReqEntityFromJson(json);
}
