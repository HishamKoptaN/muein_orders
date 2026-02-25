// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../../../../l10n/app_localizations.dart';
// import '../../../../domain/entities/cached_doc_entity.dart';

// /// قائمة طلبات الرفع في قائمة الانتظار
// class UploadQueueList extends StatelessWidget {
//   final List<CachedDocEntity> localDocs;
//   final bool isProcessing;
//   final Function(int) onStartUpload;
//   final Function(int) onCancelUpload;
//   final Function(int) onRetryUpload;

//   const UploadQueueList({
//     super.key,
//     required this.localDocs,
//     required this.isProcessing,
//     required this.onStartUpload,
//     required this.onCancelUpload,
//     required this.onRetryUpload,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final t = AppLocalizations.of(context);

//     return ListView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: localDocs.length,
//       itemBuilder: (context, index) {
//         final doc = localDocs[index];
//         return _UploadQueueItem(
//           doc: doc,
//           isProcessing: isProcessing,
//           onStartUpload: () => onStartUpload(doc.orderId),
//           onCancelUpload: () => onCancelUpload(doc.orderId),
//           onRetryUpload: () => onRetryUpload(doc.orderId),
//         );
//       },
//     );
//   }
// }

// /// عنصر طلب في قائمة الانتظار
// class _UploadQueueItem extends StatelessWidget {
//   final CachedDocEntity doc;
//   final bool isProcessing;
//   final VoidCallback onStartUpload;
//   final VoidCallback onCancelUpload;
//   final VoidCallback onRetryUpload;

//   const _UploadQueueItem({
//     required this.doc,
//     required this.isProcessing,
//     required this.onStartUpload,
//     required this.onCancelUpload,
//     required this.onRetryUpload,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final t = AppLocalizations.of(context);

//     return Card(
//       margin: EdgeInsets.only(bottom: 8.h),
//       child: Padding(
//         padding: EdgeInsets.all(12.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Icon(
//                   _getStatusIcon(doc.uploadStatus),
//                   color: _getStatusColor(doc.uploadStatus),
//                   size: 20.w,
//                 ),
//                 SizedBox(width: 8.w),
//                 TrText(
//                   'طلب رقم ${doc.orderId}',
//                   style: Theme.of(context).textTheme.titleMedium,
//                 ),
//                 const Spacer(),
//                 _StatusChip(status: doc.uploadStatus),
//               ],
//             ),
//             SizedBox(height: 8.h),
//             TrText(
//               _getStatusDescription(t, doc.uploadStatus),
//               style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     color: Theme.of(context).colorScheme.onSurfaceVariant,
//                   ),
//             ),
//             if (doc.uploadProgress != null && doc.uploadProgress! > 0) ...[
//               SizedBox(height: 8.h),
//               LinearProgressIndicator(
//                 value: (doc.uploadProgress! / 100).clamp(0.0, 1.0),
//                 backgroundColor:
//                     Theme.of(context).colorScheme.outline.withOpacity(0.3),
//                 valueColor: AlwaysStoppedAnimation<Color>(
//                   _getStatusColor(doc.uploadStatus),
//                 ),
//               ),
//               SizedBox(height: 4.h),
//               TrText(
//                 '${doc.uploadProgress!.toStringAsFixed(1)}%',
//                 style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontWeight: FontWeight.bold,
//                     ),
//               ),
//             ],
//             SizedBox(height: 12.h),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 if (doc.uploadStatus == UploadStatus.pending) ...[
//                   TextButton.icon(
//                     onPressed: isProcessing ? null : onStartUpload,
//                     icon: const Icon(Icons.play_arrow),
//                     label: TrText(t.startUpload ?? 'بدء الرفع'),
//                   ),
//                 ],
//                 if (doc.uploadStatus == UploadStatus.uploading) ...[
//                   TextButton.icon(
//                     onPressed: onCancelUpload,
//                     icon: const Icon(Icons.cancel),
//                     label: TrText(t.cancel ?? 'إلغاء'),
//                   ),
//                 ],
//                 if (doc.uploadStatus == UploadStatus.failure) ...[
//                   TextButton.icon(
//                     onPressed: onRetryUpload,
//                     icon: const Icon(Icons.refresh),
//                     label: TrText(t.retry ?? 'إعادة المحاولة'),
//                   ),
//                 ],
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   IconData _getStatusIcon(UploadStatus? status) {
//     switch (status) {
//       case UploadStatus.pending:
//         return Icons.pending;
//       case UploadStatus.uploading:
//         return Icons.upload;
//       case UploadStatus.success:
//         return Icons.check_circle;
//       case UploadStatus.failure:
//         return Icons.error;
//       default:
//         return Icons.help;
//     }
//   }

//   Color _getStatusColor(UploadStatus? status) {
//     switch (status) {
//       case UploadStatus.pending:
//         return Colors.orange;
//       case UploadStatus.uploading:
//         return Colors.blue;
//       case UploadStatus.success:
//         return Colors.green;
//       case UploadStatus.failure:
//         return Colors.red;
//       default:
//         return Colors.grey;
//     }
//   }

//   String _getStatusDescription(AppLocalizations t, UploadStatus? status) {
//     switch (status) {
//       case UploadStatus.pending:
//         return t.pendingDescription ?? 'في انتظار الرفع';
//       case UploadStatus.uploading:
//         return t.uploadingDescription ?? 'يتم الرفع الآن';
//       case UploadStatus.success:
//         return t.success ?? 'تم الرفع بنجاح';
//       case UploadStatus.failure:
//         return t.failedDescription ?? 'فشل في الرفع';
//       default:
//         return t.unknownDescription ?? 'حالة غير معروفة';
//     }
//   }
// }

// /// شريحة الحالة
// class _StatusChip extends StatelessWidget {
//   final UploadStatus? status;

//   const _StatusChip({required this.status});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
//       decoration: BoxDecoration(
//         color: _getStatusColor(status).withOpacity(0.1),
//         borderRadius: BorderRadius.circular(12.r),
//         border: Border.all(
//           color: _getStatusColor(status),
//           width: 1.w,
//         ),
//       ),
//       child: TrText(
//         _getStatusText(status),
//         style: Theme.of(context).textTheme.bodySmall?.copyWith(
//               color: _getStatusColor(status),
//               fontWeight: FontWeight.bold,
//             ),
//       ),
//     );
//   }

//   Color _getStatusColor(UploadStatus? status) {
//     switch (status) {
//       case UploadStatus.pending:
//         return Colors.orange;
//       case UploadStatus.uploading:
//         return Colors.blue;
//       case UploadStatus.success:
//         return Colors.green;
//       case UploadStatus.failure:
//         return Colors.red;
//       default:
//         return Colors.grey;
//     }
//   }

//   String _getStatusText(UploadStatus? status) {
//     switch (status) {
//       case UploadStatus.pending:
//         return 'معلق';
//       case UploadStatus.uploading:
//         return 'يتم الرفع';
//       case UploadStatus.success:
//         return 'مكتمل';
//       case UploadStatus.failure:
//         return 'فاشل';
//       default:
//         return 'غير معروف';
//     }
//   }
// }
