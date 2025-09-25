import '../../../../domain/entities/cached_doc_entity.dart';
import 'app_database.dart';

extension CachedDocMapper on CachedDoc {
  CachedDocEntity toEntity() {
    return CachedDocEntity(
      id: id,
      orderId: orderId,
      imageOne: imageOne,
      imageTwo: imageTwo,
      videoOne: videoOne,
      videoTwo: videoTwo,
      latitude: latitude,
      longitude: longitude,
      shippingCost: shippingCost,
      uploadStatus: UploadStatus.values.firstWhere(
        (e) => e.name == uploadStatus,
        orElse: () => UploadStatus.pending,
      ),
      uploadProgress: uploadProgress,
    );
  }
}
