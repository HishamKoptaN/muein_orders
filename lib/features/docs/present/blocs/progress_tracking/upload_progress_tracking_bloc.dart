// import 'dart:async';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import '../../../domain/entities/cached_doc_entity.dart';
// import '../../../domain/repo/cached_docs_repo.dart';
// part 'upload_progress_tracking_bloc.freezed.dart';
// part 'upload_progress_tracking_event.dart';
// part 'upload_progress_tracking_state.dart';

// @injectable
// class UploadProgressTrackingBloc
//     extends Bloc<UploadProgressTrackingEvent, UploadProgressTrackingState> {
//   final CachedDocsRepo _localDocsRepo;
//   Timer? _progressTimer;
//   final Map<int, StreamSubscription> _progressSubscriptions = {};

//   UploadProgressTrackingBloc({
//     required CachedDocsRepo localDocsRepo,
//   })  : _localDocsRepo = localDocsRepo,
//         super(const UploadProgressTrackingState.initial()) {
//     on<UploadProgressTrackingEvent>(
//       (event, emit) => event.when(
//         startMonitoring: () => _onStartMonitoring(emit),
//         stopMonitoring: () => _onStopMonitoring(emit),
//         updateProgress: () => _onUpdateProgress(emit),
//         trackOrderProgress: (orderId) => _onTrackOrderProgress(orderId, emit),
//       ),
//     );
//   }

//   @override
//   Future<void> close() async {
//     _progressTimer?.cancel();
//     for (final subscription in _progressSubscriptions.values) {
//       await subscription.cancel();
//     }
//     _progressSubscriptions.clear();
//     super.close();
//   }

//   Future<void> _onStartMonitoring(
//     Emitter<UploadProgressTrackingState> emit,
//   ) async {
//     emit(const UploadProgressTrackingState.monitoring());

//     // بدء مراقبة التقدم كل 2 ثانية
//     _progressTimer = Timer.periodic(
//       const Duration(seconds: 2),
//       (timer) {
//         add(const UploadProgressTrackingEvent.updateProgress());
//       },
//     );
//   }

//   /// إيقاف مراقبة التقدم
//   Future<void> _onStopMonitoring(
//     Emitter<UploadProgressTrackingState> emit,
//   ) async {
//     _progressTimer?.cancel();
//     _progressTimer = null;

//     for (final subscription in _progressSubscriptions.values) {
//       await subscription.cancel();
//     }
//     _progressSubscriptions.clear();

//     emit(const UploadProgressTrackingState.stopped());
//   }

//   /// تحديث التقدم
//   Future<void> _onUpdateProgress(
//     Emitter<UploadProgressTrackingState> emit,
//   ) async {
//     final currentState = state;
//     if (currentState is _Monitoring) {
//       try {
//         final result = await _localDocsRepo.getAllLocalDocs();

//         result.when(
//           success: (docs) {
//             final allDocs = docs ?? [];
//             final pendingDocs = allDocs
//                 .where((doc) => doc.uploadStatus == UploadStatus.pending)
//                 .toList();
//             final uploadingDocs = allDocs
//                 .where((doc) => doc.uploadStatus == UploadStatus.uploading)
//                 .toList();
//             final failedDocs = allDocs
//                 .where((doc) => doc.uploadStatus == UploadStatus.failure)
//                 .toList();
//             final completedDocs = allDocs
//                 .where((doc) => doc.uploadStatus == UploadStatus.success)
//                 .toList();

//             emit(
//               currentState.copyWith(
//                 totalDocs: allDocs.length,
//                 pendingCount: pendingDocs.length,
//                 uploadingCount: uploadingDocs.length,
//                 failedCount: failedDocs.length,
//                 completedCount: completedDocs.length,
//                 currentUploading:
//                     uploadingDocs.isNotEmpty ? uploadingDocs.first : null,
//                 progressPercentage: _calculateOverallProgress(allDocs),
//               ),
//             );
//           },
//           failure: (error) {
//             emit(currentState.copyWith(error: error.error));
//           },
//         );
//       } catch (e) {
//         emit(currentState.copyWith(error: e.toString()));
//       }
//     }
//   }

//   /// تتبع تقدم طلب معين
//   Future<void> _onTrackOrderProgress(
//     int orderId,
//     Emitter<UploadProgressTrackingState> emit,
//   ) async {
//     final currentState = state;
//     if (currentState is _Monitoring) {
//       try {
//         final result = await _localDocsRepo.getDoc(orderId: orderId);

//         result.when(
//           success: (doc) {
//             if (doc != null) {
//               final updatedTracking = currentState.orderTracking != null
//                   ? Map<int, CachedDocEntity>.from(
//                       currentState.orderTracking as Map,
//                     )
//                   : <int, CachedDocEntity>{};
//               updatedTracking[orderId] = doc;

//               emit(
//                 currentState.copyWith(
//                   orderTracking: updatedTracking,
//                 ),
//               );
//             }
//           },
//           failure: (error) {
//             emit(currentState.copyWith(error: error.error));
//           },
//         );
//       } catch (e) {
//         emit(currentState.copyWith(error: e.toString()));
//       }
//     }
//   }

//   /// حساب التقدم العام
//   double _calculateOverallProgress(List<CachedDocEntity> docs) {
//     if (docs.isEmpty) return 0.0;

//     final totalProgress = docs.fold<double>(
//       0.0,
//       (sum, doc) => sum + (doc.uploadProgress),
//     );

//     return totalProgress / docs.length;
//   }

//   /// بدء مراقبة طلب معين
//   void startTrackingOrder(int orderId) {
//     // إلغاء الاشتراك السابق إن وجد
//     _progressSubscriptions[orderId]?.cancel();

//     // إنشاء اشتراك جديد لمراقبة تقدم هذا الطلب
//     _progressSubscriptions[orderId] = Stream.periodic(
//       const Duration(seconds: 1),
//     ).listen((_) {
//       add(UploadProgressTrackingEvent.trackOrderProgress(orderId: orderId));
//     });
//   }

//   /// إيقاف مراقبة طلب معين
//   void stopTrackingOrder(int orderId) {
//     _progressSubscriptions[orderId]?.cancel();
//     _progressSubscriptions.remove(orderId);
//   }
// }
