import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/domain/entities/order_type_res_entity.dart';
import '../../data/datasources/local/drift/cached_docs_table.dart';
import 'cached_doc_entity.dart';

part 'create_cached_doc_entity.freezed.dart';

@freezed
abstract class CreateCachedDocEntity with _$CreateCachedDocEntity {
  const CreateCachedDocEntity._();
  const factory CreateCachedDocEntity({
    GenericFormzInput<int>? docId,
    DocFileEntity? imageOne,
    DocFileEntity? imageTwo,
    DocFileEntity? videoOne,
    DocFileEntity? videoTwo,
    LocationEntity? location,
    StatEntity? subCategory,
  }) = _CreateCachedDocEntity;

  CachedDocEntity toCachedDocEntity() {
    return CachedDocEntity(
      docId: docId?.value ?? 0,
      imageOne:
          imageOne?.docFile ??
          (imageOne?.file?.value != null
              ? DocFile(
                  path: imageOne!.file!.value!.path,
                  type: DocFileType.imageOne,
                )
              : null),
      imageTwo:
          imageTwo?.docFile ??
          (imageTwo?.file?.value != null
              ? DocFile(
                  path: imageTwo!.file!.value!.path,
                  type: DocFileType.imageTwo,
                )
              : null),
      videoOne:
          videoOne?.docFile ??
          (videoOne?.file?.value != null
              ? DocFile(
                  path: videoOne!.file!.value!.path,
                  type: DocFileType.videoOne,
                )
              : null),
      videoTwo:
          videoTwo?.docFile ??
          (videoTwo?.file?.value != null
              ? DocFile(
                  path: videoTwo!.file!.value!.path,
                  type: DocFileType.videoTwo,
                )
              : null),
      location:
          location?.toLocationDoc() ??
          LocationDoc(latitude: 0.0, longitude: 0.0),
    );
  }

  bool hasChanged({required CachedDocEntity? original}) {
    if (original == null) return true;
    return toCachedDocEntity() != original;
  }
}

@freezed
abstract class DocFileEntity with _$DocFileEntity {
  const factory DocFileEntity({
    FileFormzInput? file,
    DocFile? docFile,
    @Default(FileUploadStatus.init) FileUploadStatus docFileStatus,
  }) = _DocFileEntity;
}

@freezed
abstract class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
    double? latitude,
    double? longitude,
    @Default(FileUploadStatus.init) FileUploadStatus status,
  }) = _LocationEntity;

  const LocationEntity._();
  bool get hasData => latitude != null && longitude != null;
  LocationDoc toLocationDoc() {
    return LocationDoc(latitude: latitude, longitude: longitude);
  }
}
