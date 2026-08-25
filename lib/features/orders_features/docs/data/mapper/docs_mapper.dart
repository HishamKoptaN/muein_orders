import 'package:form_inputs/form_inputs/generic_form_input.dart';

import '../../../cached_docs/domain/entities/create_cached_doc_entity.dart';
import '../../domain/entities/doc_entity.dart';
import '../../domain/entities/doc_req_entity.dart';
import '../models/docs_res_model.dart';

extension DocSallaMapper on DocModel {
  DocEntity toEntity({required int itemId, required int unitId}) {
    return DocEntity(
      id: id,
      itemId: itemId,
      unitId: unitId,
      files: files.map((e) {
        return e.toEntity();
      }).toList(),
    );
  }
}

extension DocReqMapper on DocEntity {
  DocReqEntity toUpdateDocReq() {
    return DocReqEntity(
      id: id,
      latitude: double.tryParse(latitude.toString()) ?? 0.0,
      longitude: double.tryParse(longitude.toString()) ?? 0.0,
    );
  }
}

extension DocMediaModelMapper on DocMediaModel {
  DocMediaEntity toEntity() {
    return DocMediaEntity(
      id: id,
      docId: documentationId,
      filePath: filePath,
      docMediaType: fileType == 'video' ? .video : .image,
      thumbnail: thumbnail,
      sequence: sequence,
      fileUploadStatus: .init,
    );
  }
}

extension CreateCachedDocEntityMapper on DocEntity {
  CreateCachedDocEntity toCreateCachedDocEntity() {
    return CreateCachedDocEntity(
      id: id,
      itemId: itemId,
      unitId: unitId,
      files: files.map((file) {
        return UpdateDocMediaEntity(
          id: file.id,
          docId: id,
          localFilePath: GenericFormInput.dirty(value: file.localFilePath),
          filePath: file.filePath,
          thumbnail: file.thumbnail,
          docMediaType: file.docMediaType,
          fileUploadStatus: file.fileUploadStatus,
        );
      }).toList(),
      latitude: GenericFormInput.dirty(value: latitude.toString()),
      longitude: GenericFormInput.dirty(value: longitude.toString()),
    );
  }
}
