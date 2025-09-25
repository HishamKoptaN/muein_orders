// import '../../domain/entities/local_doc_entity.dart';
// import '../models/local_models.dart';

// extension LocalDocMapper on LocalDoc {
//   LocalDocEntity toEntity() {
//     return LocalDocEntity(
//       id: id,
//       orderId: orderId,
//       imageOne: imageOne,
//       imageTwo: imageTwo,
//       videoOne: videoOne,
//       videoTwo: videoTwo,
//       latitude: latitude,
//       longitude: longitude,
//       shippingCost: shippingCost,
//       uploadStatus: uploadStatus,
//       uploadProgress: uploadProgress,
//       createdAt: createdAt,
//       updatedAt: updatedAt,
//     );
//   }
// }

// extension UploadProgressMapper on UploadProgres {
//   LocalDocEntity toEntity() {
//     return LocalDocEntity(
//       id: id,
//       orderId: docId, // Assuming docId is the orderId
//       imageOne: null, // This needs to be properly mapped
//       imageTwo: null,
//       videoOne: null,
//       videoTwo: null,
//       latitude: null,
//       longitude: null,
//       shippingCost: null,
//       uploadStatus: status,
//       uploadProgress: progress,
//       createdAt: createdAt,
//       updatedAt: updatedAt,
//     );
//   }
// }

// extension LocalDocEntityMapper on LocalDocEntity {
//   LocalDoc toModel() {
//     return LocalDoc(
//       id: id,
//       orderId: orderId,
//       imageOne: imageOne,
//       imageTwo: imageTwo,
//       videoOne: videoOne,
//       videoTwo: videoTwo,
//       latitude: latitude,
//       longitude: longitude,
//       shippingCost: shippingCost,
//       uploadStatus: uploadStatus,
//       uploadProgress: uploadProgress,
//       createdAt: createdAt,
//       updatedAt: updatedAt,
//     );
//   }
// }
