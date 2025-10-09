import 'package:drift/drift.dart';
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

extension CachedDocEntityMapper on CachedDocEntity {
  CachedDocsCompanion toCompanion() {
    return CachedDocsCompanion(
      id: id != null ? Value<int>(id!) : Value.absent(),
      orderId: Value<int>(orderId!),
      imageOne: Value<String?>(imageOne),
      imageTwo: Value<String?>(imageTwo),
      videoOne: Value<String?>(videoOne),
      videoTwo: Value<String?>(videoTwo),
      latitude: Value<double?>(latitude),
      longitude: Value<double?>(longitude),
      shippingCost: Value<double?>(shippingCost),
      uploadStatus: Value<String>(uploadStatus.name),
      uploadProgress: Value<double>(uploadProgress),
    );
  }
}
