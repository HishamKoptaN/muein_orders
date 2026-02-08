import 'package:freezed_annotation/freezed_annotation.dart';

part 'cached_doc_entity.freezed.dart';
part 'cached_doc_entity.g.dart';

enum UploadStatus { pending, uploading, success, failure }

@freezed
abstract class CachedDocEntity with _$CachedDocEntity {
  const factory CachedDocEntity({
    int? id,
    int? orderId,
    String? imageOne,
    String? imageTwo,
    String? videoOne,
    String? videoTwo,
    double? latitude,
    double? longitude,
    double? shippingCost,
    @Default(UploadStatus.pending) UploadStatus uploadStatus,
    @Default(0.0) double uploadProgress,
  }) = _CachedDocEntity;

  factory CachedDocEntity.fromJson(Map<String, dynamic> json) =>
      _$CachedDocEntityFromJson(json);
}
