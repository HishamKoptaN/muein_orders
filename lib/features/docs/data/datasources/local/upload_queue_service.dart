// import 'dart:async';
// import 'dart:collection';

// import 'package:flutter/foundation.dart';
// import 'package:injectable/injectable.dart';
// import 'background_upload_service.dart';
// import 'local_docs_service.dart';

// @lazySingleton
// class UploadQueueService {
//   final LocalDocsService _localDocsService;
//   final BackgroundUploadService _backgroundUploadService;
//   final Queue<UploadTask> _uploadQueue = Queue<UploadTask>();
//   final StreamController<UploadProgressInfo> _uploadProgressController =
//       StreamController<UploadProgressInfo>.broadcast();
//   bool _isUploading = false;
//   Timer? _periodicCheckTimer;

//   UploadQueueService(
//     this._localDocsService,
//     this._backgroundUploadService,
//   ) {
//     _startPeriodicCheck();
//     _startBackgroundUpload();
//   }

//   Stream<UploadProgressInfo> get uploadProgress =>
//       _uploadProgressController.stream;

//   Future<void> addUploadTask(UploadTask task) async {
//     _uploadQueue.add(task);
//     if (!_isUploading) {
//       _processNextTask();
//     }
//   }

//   void _startBackgroundUpload() {
//     // Start background upload service
//     _backgroundUploadService.start();
//   }

//   void _startPeriodicCheck() {
//     _periodicCheckTimer = Timer.periodic(const Duration(seconds: 30), (timer) {
//       _checkForPendingTasks();
//     });
//   }

//   Future<void> _processNextTask() async {
//     if (_uploadQueue.isEmpty || _isUploading) {
//       return;
//     }

//     _isUploading = true;
//     final task = _uploadQueue.removeFirst();

//     try {
//       await _uploadTask(task);
//     } catch (e) {
//       debugPrint('خطأ في رفع المهمة: $e');
//       await _localDocsService.updateUploadStatus(
//         task.docId,
//         UploadStatus.failed,
//       );
//     } finally {
//       _isUploading = false;

//       if (_uploadQueue.isNotEmpty) {
//         _processNextTask();
//       }
//     }
//   }

//   Future<void> _uploadTask(UploadTask task) async {
//     await _localDocsService.updateUploadStatus(
//       task.docId,
//       UploadStatus.uploading,
//       progress: 0.0,
//     );

//     _uploadProgressController.add(
//       UploadProgressInfo(
//         docId: task.docId,
//         progress: 0.0,
//         status: UploadStatus.uploading,
//         message: 'بدء الرفع...',
//       ),
//     );

//     try {
//       // Send to background service for processing
//       _backgroundUploadService.addUploadTask(task);

//       // Simulate upload process with progress updates
//       await _simulateFileUpload(task.docId, 'صورة 1', task.imageOne);
//       await _simulateFileUpload(task.docId, 'صورة 2', task.imageTwo);
//       await _simulateFileUpload(task.docId, 'فيديو 1', task.videoOne);
//       await _simulateFileUpload(task.docId, 'فيديو 2', task.videoTwo);
//       await _simulateLocationUpload(task.docId, task.latitude, task.longitude);
//       await _simulateShippingCostUpload(task.docId, task.shippingCost);

//       await _localDocsService.updateUploadStatus(
//         task.docId,
//         UploadStatus.completed,
//         progress: 100.0,
//       );

//       _uploadProgressController.add(
//         UploadProgressInfo(
//           docId: task.docId,
//           progress: 100.0,
//           status: UploadStatus.completed,
//           message: 'تم الرفع بنجاح!',
//         ),
//       );

//       await _updateOrderDistributionStatus(task.orderId);
//       await _localDocsService.deleteCompletedDoc(task.docId);
//     } catch (e) {
//       await _localDocsService.updateUploadStatus(
//         task.docId,
//         UploadStatus.failed,
//       );

//       _uploadProgressController.add(
//         UploadProgressInfo(
//           docId: task.docId,
//           progress: 0.0,
//           status: UploadStatus.failed,
//           message: 'فشل في الرفع: $e',
//         ),
//       );

//       rethrow;
//     }
//   }

//   Future<void> _updateOrderDistributionStatus(int orderId) async {
//     try {
//       debugPrint('تم تحديث حالة الطلب $orderId إلى تم التوثيق');
//     } catch (e) {
//       debugPrint('فشل في تحديث حالة الطلب: $e');
//     }
//   }

//   /// محاكاة رفع ملف
//   Future<void> _simulateFileUpload(
//     int docId,
//     String fileType,
//     String? filePath,
//   ) async {
//     if (filePath == null || filePath.isEmpty) return;

//     _uploadProgressController.add(
//       UploadProgressInfo(
//         docId: docId,
//         progress: 0.0,
//         status: UploadStatus.uploading,
//         message: 'جارٍ رفع $fileType...',
//       ),
//     );

//     for (int i = 0; i <= 100; i += 10) {
//       await Future.delayed(const Duration(milliseconds: 100));
//       await _localDocsService.updateUploadProgress(
//         docId,
//         fileType,
//         i / 100.0,
//         UploadStatus.uploading,
//       );

//       _uploadProgressController.add(
//         UploadProgressInfo(
//           docId: docId,
//           progress: i / 100.0,
//           status: UploadStatus.uploading,
//           message: 'جارٍ رفع $fileType... $i%',
//         ),
//       );
//     }
//   }

//   Future<void> _simulateLocationUpload(
//     int docId,
//     double? latitude,
//     double? longitude,
//   ) async {
//     if (latitude == null || longitude == null) return;

//     _uploadProgressController.add(
//       UploadProgressInfo(
//         docId: docId,
//         progress: 0.0,
//         status: UploadStatus.uploading,
//         message: 'جارٍ رفع بيانات الموقع...',
//       ),
//     );

//     await Future.delayed(const Duration(milliseconds: 500));

//     await _localDocsService.updateUploadProgress(
//       docId,
//       'الموقع',
//       1.0,
//       UploadStatus.uploading,
//     );

//     _uploadProgressController.add(
//       UploadProgressInfo(
//         docId: docId,
//         progress: 1.0,
//         status: UploadStatus.uploading,
//         message: 'تم رفع بيانات الموقع بنجاح',
//       ),
//     );
//   }

//   Future<void> _simulateShippingCostUpload(
//     int docId,
//     double? shippingCost,
//   ) async {
//     if (shippingCost == null) return;

//     _uploadProgressController.add(
//       UploadProgressInfo(
//         docId: docId,
//         progress: 0.0,
//         status: UploadStatus.uploading,
//         message: 'جارٍ رفع تكلفة الشحن...',
//       ),
//     );

//     await Future.delayed(const Duration(milliseconds: 300));

//     await _localDocsService.updateUploadProgress(
//       docId,
//       'تكلفة الشحن',
//       1.0,
//       UploadStatus.uploading,
//     );

//     _uploadProgressController.add(
//       UploadProgressInfo(
//         docId: docId,
//         progress: 1.0,
//         status: UploadStatus.uploading,
//         message: 'تم رفع تكلفة الشحن بنجاح',
//       ),
//     );
//   }

//   Future<void> _checkForPendingTasks() async {
//     if (_isUploading || _uploadQueue.isNotEmpty) {
//       return;
//     }

//     final pendingDocs = await _localDocsService.getPendingDocs();

//     for (final doc in pendingDocs) {
//       // إنشاء مهمة رفع من البيانات المحلية
//       final task = UploadTask(
//         docId: doc.id,
//         orderId: doc.orderId,
//         imageOne: doc.imageOne,
//         imageTwo: doc.imageTwo,
//         videoOne: doc.videoOne,
//         videoTwo: doc.videoTwo,
//         latitude: doc.latitude,
//         longitude: doc.longitude,
//         shippingCost: doc.shippingCost,
//       );

//       await addUploadTask(task);
//     }
//   }

//   void dispose() {
//     _periodicCheckTimer?.cancel();
//     _uploadProgressController.close();
//     _backgroundUploadService.stop();
//   }

//   int get pendingTasksCount => _uploadQueue.length;
//   bool get isUploading => _isUploading;
// }
