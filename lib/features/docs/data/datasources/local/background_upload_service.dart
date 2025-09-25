// import 'dart:async';
// import 'dart:io';
// import 'dart:isolate';

// import 'package:flutter/foundation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../datasources/docs_api.dart';
// import '../local_docs_service.dart';
// import '../../../domain/repo/docs_repo.dart';
// import '../../models/local_models.dart';
// import '../../models/upload_queue_models.dart';

// /// Background upload service using Isolate
// @injectable
// class BackgroundUploadService {
//   final LocalDocsService _localDocsService;
//   final DocsRepo _docsRepo;
//   final DocsApi _docsApi;

//   Isolate? _isolate;
//   ReceivePort? _receivePort;
//   SendPort? _isolateSendPort;
//   StreamSubscription? _appLifecycleSubscription;

//   BackgroundUploadService(
//     this._localDocsService,
//     this._docsRepo,
//     this._docsApi,
//   );

//   /// Start background upload service
//   Future<void> start() async {
//     if (_isolate != null) {
//       debugPrint('Background upload service already running');
//       return;
//     }

//     _receivePort = ReceivePort();
//     _isolate = await Isolate.spawn(
//       _backgroundUploadEntry,
//       _receivePort!.sendPort,
//     );

//     _isolateSendPort = await _receivePort!.first as SendPort;
//     debugPrint('Background upload service started');

//     // Listen to app lifecycle changes
//     _setupAppLifecycleListener();
//   }

//   /// Stop background upload service
//   Future<void> stop() async {
//     if (_isolate != null) {
//       _isolateSendPort?.send('STOP');
//       _isolate?.kill(priority: Isolate.immediate);
//       _isolate = null;
//       _receivePort?.close();
//       _receivePort = null;
//       _isolateSendPort = null;
//       debugPrint('Background upload service stopped');
//     }
//   }

//   /// Setup app lifecycle listener to handle app close/open
//   void _setupAppLifecycleListener() {
//     // This would be called from the main app to listen to app lifecycle
//     // For now, we'll handle it differently
//   }

//   /// Send upload task to background isolate
//   void addUploadTask(UploadTask task) {
//     if (_isolateSendPort != null) {
//       _isolateSendPort!.send(task);
//     } else {
//       debugPrint('Background upload service not running');
//     }
//   }

//   /// Entry point for background isolate
//   static void _backgroundUploadEntry(SendPort mainSendPort) async {
//     final receivePort = ReceivePort();
//     mainSendPort.send(receivePort.sendPort);

//     await for (final message in receivePort) {
//       if (message == 'STOP') {
//         break;
//       }

//       if (message is UploadTask) {
//         await _processUploadTask(message);
//       }
//     }
//   }

//   /// Process upload task in background
//   static Future<void> _processUploadTask(UploadTask task) async {
//     try {
//       debugPrint('Processing background upload for docId: ${task.docId}');

//       // Simulate upload process
//       await _uploadFiles(task);

//       debugPrint('Background upload completed for docId: ${task.docId}');
//     } catch (e) {
//       debugPrint('Background upload failed for docId: ${task.docId}, error: $e');
//     }
//   }

//   /// Upload files (simulated)
//   static Future<void> _uploadFiles(UploadTask task) async {
//     // Simulate file upload
//     if (task.imageOne != null) {
//       await _simulateFileUpload(task.docId, 'صورة 1', task.imageOne!);
//     }

//     if (task.imageTwo != null) {
//       await _simulateFileUpload(task.docId, 'صورة 2', task.imageTwo!);
//     }

//     if (task.videoOne != null) {
//       await _simulateFileUpload(task.docId, 'فيديو 1', task.videoOne!);
//     }

//     if (task.videoTwo != null) {
//       await _simulateFileUpload(task.docId, 'فيديو 2', task.videoTwo!);
//     }

//     if (task.latitude != null && task.longitude != null) {
//       await _simulateLocationUpload(task.docId, task.latitude!, task.longitude!);
//     }

//     if (task.shippingCost != null) {
//       await _simulateShippingCostUpload(task.docId, task.shippingCost!);
//     }

//     // Mark as completed
//     await _markUploadCompleted(task.docId);
//   }

//   /// Simulate file upload
//   static Future<void> _simulateFileUpload(int docId, String fileType, String filePath) async {
//     debugPrint('Uploading $fileType for docId: $docId');

//     // Simulate upload time
//     await Future.delayed(const Duration(seconds: 2));

//     debugPrint('Completed uploading $fileType for docId: $docId');
//   }

//   /// Simulate location upload
//   static Future<void> _simulateLocationUpload(int docId, double latitude, double longitude) async {
//     debugPrint('Uploading location for docId: $docId');

//     // Simulate upload time
//     await Future.delayed(const Duration(milliseconds: 500));

//     debugPrint('Completed uploading location for docId: $docId');
//   }

//   /// Simulate shipping cost upload
//   static Future<void> _simulateShippingCostUpload(int docId, double shippingCost) async {
//     debugPrint('Uploading shipping cost for docId: $docId');

//     // Simulate upload time
//     await Future.delayed(const Duration(milliseconds: 300));

//     debugPrint('Completed uploading shipping cost for docId: $docId');
//   }

//   /// Mark upload as completed
//   static Future<void> _markUploadCompleted(int docId) async {
//     // Save completion status to shared preferences
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool('upload_completed_$docId', true);
//     await prefs.setString('upload_completed_at_$docId', DateTime.now().toIso8601String());

//     debugPrint('Marked upload completed for docId: $docId');
//   }

//   /// Check if upload is completed
//   static Future<bool> isUploadCompleted(int docId) async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getBool('upload_completed_$docId') ?? false;
//   }

//   /// Get upload completion time
//   static Future<DateTime?> getUploadCompletionTime(int docId) async {
//     final prefs = await SharedPreferences.getInstance();
//     final timeStr = prefs.getString('upload_completed_at_$docId');
//     return timeStr != null ? DateTime.parse(timeStr) : null;
//   }

//   /// Clean up completed uploads older than specified days
//   static Future<void> cleanupOldCompletedUploads({int olderThanDays = 7}) async {
//     final prefs = await SharedPreferences.getInstance();
//     final cutoffDate = DateTime.now().subtract(Duration(days: olderThanDays));

//     // Get all completed upload keys
//     final keys = prefs.getKeys().where((key) => key.startsWith('upload_completed_at_'));

//     for (final key in keys) {
//       final timeStr = prefs.getString(key);
//       if (timeStr != null) {
//         final completionTime = DateTime.parse(timeStr);
//         if (completionTime.isBefore(cutoffDate)) {
//           final docId = key.replaceFirst('upload_completed_at_', '');
//           await prefs.remove('upload_completed_$docId');
//           await prefs.remove(key);
//           debugPrint('Cleaned up old completed upload for docId: $docId');
//         }
//       }
//     }
//   }
// }
