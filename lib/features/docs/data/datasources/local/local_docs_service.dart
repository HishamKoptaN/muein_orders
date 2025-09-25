// import 'package:drift/drift.dart';
// import 'package:injectable/injectable.dart';
// import '../../models/local_models.dart';
// import 'local_database.dart';

// @lazySingleton
// class LocalDocsService {
//   final LocalDatabase _db;

//   LocalDocsService(this._db);

//   /// حفظ توثيق محلي جديد
//   Future<int> saveLocalDoc({
//     required int orderId,
//     String? imageOne,
//     String? imageTwo,
//     String? videoOne,
//     String? videoTwo,
//     double? latitude,
//     double? longitude,
//     double? shippingCost,
//   }) async {
//     return await _db.insertLocalDoc(
//       LocalDocsCompanion(
//         orderId: Value(orderId),
//         imageOne: Value(imageOne),
//         imageTwo: Value(imageTwo),
//         videoOne: Value(videoOne),
//         videoTwo: Value(videoTwo),
//         latitude: Value(latitude),
//         longitude: Value(longitude),
//         shippingCost: Value(shippingCost),
//         uploadStatus: const Value(UploadStatus.pending),
//         uploadProgress: const Value(0.0),
//       ),
//     );
//   }

//   /// تحديث حالة الرفع
//   Future<bool> updateUploadStatus(int docId, UploadStatus status, {double? progress}) async {
//     return await _db.updateUploadStatus(docId, status, progress: progress);
//   }

//   /// الحصول على توثيق طلب معين
//   Future<LocalDoc?> getDocByOrderId(int orderId) async {
//     final result = await _db.getDocByOrderId(orderId);
//     return result;
//   }

//   /// الحصول على جميع التوثيقات المعلقة
//   Future<List<LocalDoc>> getPendingDocs() async {
//     return await _db.getPendingDocs();
//   }

//   /// تحديث تقدم الرفع
//   Future<bool> updateUploadProgress(int docId, String uploadType, double progress, UploadStatus status) async {
//     // إدراج سجل تقدم جديد
//     final progressId = await _db.insertUploadProgress(
//       UploadProgressCompanion(
//         docId: Value(docId),
//         uploadType: Value(uploadType),
//         progress: Value(progress),
//         status: Value(status),
//       ),
//     );

//     // تحديث حالة التوثيق الرئيسية
//     return await _db.updateUploadStatus(docId, status, progress: progress);
//   }

//   /// حذف توثيق مكتمل
//   Future<bool> deleteCompletedDoc(int docId) async {
//     final result = await _db.deleteCompletedDoc(docId);
//     return result > 0;
//   }

//   /// الحصول على تقدم الرفع لتوثيق معين
//   Future<List<UploadProgressData>> getUploadProgress(int docId) async {
//     return await _db.getUploadProgress(docId);
//   }

//   /// حساب النسبة المئوية للتقدم العام لتوثيق معين
//   Future<double> getOverallProgress(int docId) async {
//     final doc = await _db.getDocByOrderId(docId);
//     if (doc == null) return 0.0;

//     return doc.uploadProgress;
//   }

//   /// التحقق من وجود توثيق معلق لطلب معين
//   Future<bool> hasPendingDoc(int orderId) async {
//     final doc = await _db.getDocByOrderId(orderId);
//     return doc != null && doc.uploadStatus == UploadStatus.pending;
//   }
// }
