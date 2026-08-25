import 'package:flutter/foundation.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../../data/datasources/local_data_src/drift/tables/items_table.dart';
part 'create_cached_doc_entity.freezed.dart';

@freezed
abstract class CreateCachedDocEntity with _$CreateCachedDocEntity {
  const factory CreateCachedDocEntity({
    int? id,
    int? itemId,
    int? unitId,
    @Default(<UpdateDocMediaEntity>[]) List<UpdateDocMediaEntity> files,
    @Default(GenericFormInput.pure()) GenericFormInput latitude,
    @Default(GenericFormInput.pure()) GenericFormInput longitude,
    @Default(UploadStatus.init) UploadStatus locationUploadStatus,
    @Default(DocEntity()) DocEntity original,
  }) = _CreateCachedDocEntity;
}

@freezed
abstract class UpdateDocMediaEntity with _$UpdateDocMediaEntity {
  const factory UpdateDocMediaEntity({
    int? id,
    int? docId,
    @Default(GenericFormInput.pure()) GenericFormInput localFilePath,
    @Default('') String filePath,
    @Default('') String thumbnail,
    @Default(DocMediaType.image) DocMediaType docMediaType,
    @Default(UploadStatus.init) UploadStatus fileUploadStatus,
    @Default(false) bool isEdited,
  }) = _UpdateDocMediaEntity;
}
