import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/cached_doc_entity.dart';

part 'cached_doc.freezed.dart';
part 'cached_doc.g.dart';

@freezed
abstract class CachedDoc with _$CachedDoc {
  const factory CachedDoc({
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
  }) = _CachedDoc;
  factory CachedDoc.fromJson(Map<String, dynamic> json) =>
      _$CachedDocFromJson(json);
}
