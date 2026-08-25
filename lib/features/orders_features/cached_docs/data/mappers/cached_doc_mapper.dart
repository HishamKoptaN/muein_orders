import 'package:form_inputs/form_inputs/generic_form_input.dart';

import '../../../docs/domain/entities/doc_entity.dart';
import '../../domain/entities/create_cached_doc_entity.dart';
import '../datasources/local_data_src/drift/app_database.dart';
import '../datasources/local_data_src/drift/tables/items_table.dart';

extension DocEntryMapper on DocEntry {
  DocEntity toDocEntity() {
    return DocEntity(id: id.toInt(), unitId: unitId.toInt());
  }
}

extension CreateCachedDocMapper on CreateCachedDocEntity {
  CreateCachedDocEntity toCreateCachedDocEntity({
    required DocsTable cachedDocEntry,
  }) {
    return CreateCachedDocEntity(
      id: id,
      itemId: itemId,
      unitId: unitId,
      files: files.map((file) {
        return UpdateDocMediaEntity(
          id: file.id,
          docId: file.docId,
          localFilePath: file.localFilePath,
          filePath: file.filePath,
          docMediaType: file.docMediaType,
          fileUploadStatus: file.fileUploadStatus,
        );
      }).toList(),
      latitude: GenericFormInput.dirty(value: latitude.toString()),
      longitude: GenericFormInput.dirty(value: longitude.toString()),
    );
  }
}
