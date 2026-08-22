import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/datasources/local_data_src/drift/tables/docs_table.dart';
part 'cached_doc_entity.freezed.dart';

@freezed
abstract class LocationDocEntity with _$LocationDocEntity {
  const factory LocationDocEntity({
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    @Default(UploadStatus.init) UploadStatus status,
  }) = _LocationDocEntity;
}
