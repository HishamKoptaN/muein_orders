// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import '../../../../../../l10n/app_localizations.dart';
// import '../../../../data/models/cached_doc.dart';
// import '../../../../domain/entities/cached_doc_entity.dart';

// /// بطاقة تقدم الرفع الحالي
// class UploadProgressCard extends StatelessWidget {
//   final CachedDocEntity currentDoc;
//   final double progressPercentage;

//   const UploadProgressCard({
//     super.key,
//     required this.currentDoc,
//     required this.progressPercentage,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final t = AppLocalizations.of(context);

//     return Card(
//       child: Padding(
//         padding: EdgeInsets.all(16.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Icon(
//                   Icons.upload,
//                   color: _getStatusColor(currentDoc.uploadStatus),
//                   size: 24.w,
//                 ),
//                 SizedBox(width: 8.w),
//                 // TrText(
//                 //   '${t.currentUpload ?? 'الرفع الحالي'} - طلب رقم ${currentDoc.orderId}',
//                 //   style: Theme.of(context).textTheme.titleMedium,
//                 // ),
//                 const Spacer(),
//                 _StatusChip(
//                   status: currentDoc.uploadStatus,
//                   progress: currentDoc.uploadProgress ?? 0.0,
//                 ),
//               ],
//             ),
//             SizedBox(height: 16.h),
//             LinearPercentIndicator(
//               lineHeight: 8.h,
//               percent: (progressPercentage / 100).clamp(0.0, 1.0),
//               backgroundColor:
//                   Theme.of(context).colorScheme.outline.withOpacity(0.3),
//               progressColor: _getStatusColor(currentDoc.uploadStatus),
//               barRadius: Radius.circular(4.r),
//             ),
//             SizedBox(height: 8.h),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TrText(
//                   '${progressPercentage.toStringAsFixed(1)}%',
//                   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                         fontWeight: FontWeight.bold,
//                       ),
//                 ),
//                 TrText(
//                   _getStatusText(t, currentDoc.uploadStatus),
//                   style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                         color: _getStatusColor(currentDoc.uploadStatus),
//                       ),
//                 ),
//               ],
//             ),
//             if (currentDoc.uploadStatus == UploadStatus.uploading) ...[
//               SizedBox(height: 8.h),
//               TrText(
//                 t.uploading ?? 'يتم الرفع...',
//                 style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       color: Theme.of(context).colorScheme.primary,
//                     ),
//               ),
//             ],
//           ],
//         ),
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

//   String _getStatusText(AppLocalizations t, UploadStatus? status) {
//     switch (status) {
//       case UploadStatus.pending:
//         return t.pending ?? 'معلق';
//       case UploadStatus.uploading:
//         return t.uploading ?? 'يتم الرفع';
//       case UploadStatus.success:
//         return t.success ?? 'مكتمل';
//       case UploadStatus.failure:
//         return t.failed ?? 'فاشل';
//       default:
//         return t.unknown ?? 'غير معروف';
//     }
//   }
// }

// /// شريحة حالة الرفع
// class _StatusChip extends StatelessWidget {
//   final UploadStatus? status;
//   final double progress;

//   const _StatusChip({
//     required this.status,
//     required this.progress,
//   });

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
