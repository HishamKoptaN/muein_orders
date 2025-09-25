// import 'dart:async';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';

// import '../../../domain/entities/cached_doc_entity.dart';
// import '../../../domain/repo/cached_docs_repo.dart';
// import '../../../domain/usecases/docs_use_cases.dart';

// part 'docs_upload_task_bloc.freezed.dart';
// part 'docs_upload_task_event.dart';
// part 'docs_upload_task_state.dart';

// @injectable
// class UploadTaskBloc extends Bloc<UploadTaskEvent, UploadTaskState> {
//   final CachedDocsRepo _localDocsRepo;
//   final DocsUseCase _docsUseCase;
//   Timer? _progressTimer;

//   UploadTaskBloc(
//     this._localDocsRepo,
//     this._docsUseCase,
//   ) : super(
//           const UploadTaskState.initial(),
//         ) {
//     on<UploadTaskEvent>(
//       (event, emit) => event.when(
//         initialize: () => _onInitialize(const _Initialize(), emit),
//         startUpload: (orderId) =>
//             _onStartUpload(_StartUpload(orderId: orderId), emit),
//         cancelUpload: (orderId) =>
//             _onCancelUpload(_CancelUpload(orderId: orderId), emit),
//         checkUploadProgress: (orderId) => _onCheckUploadProgress(
//           _CheckUploadProgress(orderId: orderId),
//           emit,
//         ),
//         retryFailedUploads: () =>
//             _onRetryFailedUploads(const _RetryFailedUploads(), emit),
//         getLocalDocs: () => _onGetLocalDocs(const _GetLocalDocs(), emit),
//       ),
//     );
//   }

//   @override
//   Future<void> close() async {
//     _progressTimer?.cancel();
//     super.close();
//   }

//   /// تهيئة الـ BLoC
//   Future<void> _onInitialize(
//     _Initialize event,
//     Emitter<UploadTaskState> emit,
//   ) async {
//     emit(const UploadTaskState.loading());
//     try {
//       // الحصول على جميع التوثيق المحلي
//       final result = await _localDocsRepo.getAllLocalDocs();

//       result.when(
//         success: (docs) {
//           emit(
//             UploadTaskState.loaded(
//               localDocs: docs ?? [],
//               pendingUploads: docs
//                       ?.where((doc) => doc.uploadStatus == UploadStatus.pending)
//                       .length ??
//                   0,
//               failedUploads: docs
//                       ?.where((doc) => doc.uploadStatus == UploadStatus.failure)
//                       .length ??
//                   0,
//               completedUploads: docs
//                       ?.where(
//                         (doc) => doc.uploadStatus == UploadStatus.success,
//                       )
//                       .length ??
//                   0,
//             ),
//           );

//           // بدء Timer لتحديث التقدم كل 30 ثانية
//           _startProgressTimer();
//         },
//         failure: (error) {
//           emit(UploadTaskState.failure(error: error.error ?? ''));
//         },
//       );
//     } catch (e) {
//       emit(UploadTaskState.failure(error: e.toString()));
//     }
//   }

//   /// بدء رفع توثيق
//   Future<void> _onStartUpload(
//     _StartUpload event,
//     Emitter<UploadTaskState> emit,
//   ) async {
//     final currentState = state;
//     if (currentState is _Loaded) {
//       emit(currentState.copyWith(isProcessing: true));

//       try {
//         // بدء الرفع مباشرة
//         await _performUpload(event.orderId);
//         emit(currentState.copyWith(isProcessing: false));
//       } catch (e) {
//         emit(
//           currentState.copyWith(
//             isProcessing: false,
//             error: e.toString(),
//           ),
//         );
//       }
//     }
//   }

//   /// إلغاء رفع توثيق
//   Future<void> _onCancelUpload(
//     _CancelUpload event,
//     Emitter<UploadTaskState> emit,
//   ) async {
//     final currentState = state;
//     if (currentState is _Loaded) {
//       emit(currentState.copyWith(isProcessing: true));

//       try {
//         // تحديث حالة التوثيق إلى ملغي
//         await _localDocsRepo.updateUploadStatus(
//           event.orderId,
//           UploadStatus.failure,
//         );
//         emit(currentState.copyWith(isProcessing: false));
//       } catch (e) {
//         emit(
//           currentState.copyWith(
//             isProcessing: false,
//             error: e.toString(),
//           ),
//         );
//       }
//     }
//   }

//   /// فحص تقدم الرفع
//   Future<void> _onCheckUploadProgress(
//     _CheckUploadProgress event,
//     Emitter<UploadTaskState> emit,
//   ) async {
//     final currentState = state;
//     if (currentState is _Loaded) {
//       try {
//         final result = await _localDocsRepo.getDoc(orderId: event.orderId);

//         result.when(
//           success: (doc) {
//             if (doc != null) {
//               final updatedDocs = currentState.localDocs
//                   .map(
//                     (d) => d.orderId == event.orderId ? doc : d,
//                   )
//                   .toList();

//               emit(
//                 currentState.copyWith(
//                   localDocs: updatedDocs,
//                   pendingUploads: updatedDocs
//                       .where((doc) => doc.uploadStatus == UploadStatus.pending)
//                       .length,
//                   failedUploads: updatedDocs
//                       .where((doc) => doc.uploadStatus == UploadStatus.failure)
//                       .length,
//                   completedUploads: updatedDocs
//                       .where(
//                         (doc) => doc.uploadStatus == UploadStatus.success,
//                       )
//                       .length,
//                 ),
//               );
//             }
//           },
//           failure: (error) {
//             emit(currentState.copyWith(error: error.error ?? ''));
//           },
//         );
//       } catch (e) {
//         emit(currentState.copyWith(error: e.toString()));
//       }
//     }
//   }

//   /// إعادة محاولة الرفع للطلبات الفاشلة
//   Future<void> _onRetryFailedUploads(
//     _RetryFailedUploads event,
//     Emitter<UploadTaskState> emit,
//   ) async {
//     final currentState = state;
//     if (currentState is _Loaded) {
//       emit(currentState.copyWith(isProcessing: true));

//       try {
//         final failedDocs = currentState.localDocs
//             .where((doc) => doc.uploadStatus == UploadStatus.failure)
//             .toList();

//         for (final doc in failedDocs) {
//           await _performUpload(doc.orderId);
//         }

//         emit(currentState.copyWith(isProcessing: false));
//       } catch (e) {
//         emit(
//           currentState.copyWith(
//             isProcessing: false,
//             error: e.toString(),
//           ),
//         );
//       }
//     }
//   }

//   /// الحصول على التوثيق المحلي
//   Future<void> _onGetLocalDocs(
//     _GetLocalDocs event,
//     Emitter<UploadTaskState> emit,
//   ) async {
//     try {
//       final result = await _localDocsRepo.getAllLocalDocs();

//       result.when(
//         success: (docs) {
//           emit(
//             UploadTaskState.loaded(
//               localDocs: docs ?? [],
//               pendingUploads: docs
//                       ?.where(
//                         (doc) => doc.uploadStatus == UploadStatus.pending,
//                       )
//                       .length ??
//                   0,
//               failedUploads: docs
//                       ?.where(
//                         (doc) => doc.uploadStatus == UploadStatus.failure,
//                       )
//                       .length ??
//                   0,
//               completedUploads: docs
//                       ?.where(
//                         (doc) => doc.uploadStatus == UploadStatus.success,
//                       )
//                       .length ??
//                   0,
//             ),
//           );
//         },
//         failure: (error) {
//           emit(UploadTaskState.failure(error: error.error ?? ''));
//         },
//       );
//     } catch (e) {
//       emit(UploadTaskState.failure(error: e.toString()));
//     }
//   /// بدء Timer لتحديث التقدم كل 30 ثانية
//   void _startProgressTimer() {
//     _progressTimer?.cancel();
//     _progressTimer = Timer.periodic(
//       const Duration(seconds: 30),
//       (timer) {
//         // إرسال حدث لتحديث التقدم
//         add(const UploadTaskEvent.getLocalDocs());
//       },
//     );
//   }
//   Future<void> _performUpload(int orderId) async {
//     try {
//       // الحصول على التوثيق المحلي
//       final result = await _localDocsRepo.getDoc(orderId: orderId);

//       await result.when(
//         success: (doc) async {
//           if (doc == null) return;

//           // تحديث حالة التوثيق إلى يتم الرفع
//           await _localDocsRepo.updateUploadStatus(
//             doc.id,
//             UploadStatus.uploading,
//           );
//           // إنشاء كائنات File فقط للملفات الموجودة
//           final files = _createFileObjects(doc);

//           // محاولة الرفع
//           final uploadResult = await _docsUseCase.createDoc(
//             orderId: orderId,
//             imageOne: files.imageOne,
//             imageTwo: files.imageTwo,
//             videoOne: files.videoOne,
//             videoTwo: files.videoTwo,
//             latitude: doc.latitude?.toString() ?? '',
//             longitude: doc.longitude?.toString() ?? '',
//             shippingCosts: doc.shippingCost?.toString() ?? '0',
//             onSendProgress: (count, total) {
//               // تحديث التقدم - سيتم التعامل معه بواسطة UploadProgressBloc
//               debugPrint('التقدم: $count / $total');
//             },
//           );

//           await uploadResult.when(
//             success: (data) async {
//               // تحديث حالة التوثيق إلى مكتمل
//               await _localDocsRepo.updateUploadStatus(
//                 doc.id,
//                 UploadStatus.success,
//                 progress: 100.0,
//               );

//               // حذف التوثيق المحلي بعد النجاح
//               await _localDocsRepo.deleteDoc(orderId: orderId);
//             },
//             failure: (error) async {
//               // تحديث حالة التوثيق إلى فاشل
//               await _localDocsRepo.updateUploadStatus(
//                 doc.id,
//                 UploadStatus.failure,
//               );
//             },
//           );
//         },
//         failure: (error) {
//           debugPrint('فشل في الحصول على التوثيق للطلب رقم: $orderId');
//         },
//       );
//     } catch (e) {
//       debugPrint('خطأ في تنفيذ الرفع: $e');
//     }
//   }

//   ({File? imageOne, File? imageTwo, File? videoOne, File? videoTwo})
//       _createFileObjects(CachedDocEntity doc) {
//     return (
//       imageOne: doc.imageOne != null ? File(doc.imageOne!) : null,
//       imageTwo: doc.imageTwo != null ? File(doc.imageTwo!) : null,
//       videoOne: doc.videoOne != null ? File(doc.videoOne!) : null,
//       videoTwo: doc.videoTwo != null ? File(doc.videoTwo!) : null,
//     );
//   }
// }
