// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../core/di/dependency_injection.dart';
// import '../../data/models/local_models.dart';
// import '../blocs/progress_tracking/upload_progress_tracking_bloc.dart';
// import '../blocs/upload_task/docs_upload_task_bloc.dart';
// import 'upload_monitoring_view.dart';

// /// مثال على كيفية استخدام BLoCs الجديدة
// class UploadManagementExample extends StatelessWidget {
//   const UploadManagementExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const UploadMonitoringView();
//   }
// }

// /// مثال على استخدام BLoC في صفحة أخرى
// class OrderDetailsView extends StatelessWidget {
//   final int orderId;

//   const OrderDetailsView({super.key, required this.orderId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('تفاصيل الطلب $orderId'),
//         actions: [
//           BlocBuilder<UploadProgressTrackingBloc,
//               UploadProgressTrackingState>(
//             builder: (context, progressState) {
//               return progressState.maybeWhen(
//                 monitoring: (
//                   totalDocs,
//                   pendingCount,
//                   uploadingCount,
//                   failedCount,
//                   completedCount,
//                   currentUploading,
//                   progressPercentage,
//                   orderTracking,
//                   error,
//                 ) {
//                   final isOrderUploading =
//                       currentUploading?.orderId == orderId;
//                   if (isOrderUploading) {
//                     return Container(
//                       padding: const EdgeInsets.all(8),
//                       child: CircularProgressIndicator(
//                         strokeWidth: 2,
//                         valueColor: AlwaysStoppedAnimation<Color>(
//                           currentUploading?.uploadStatus ==
//                                   UploadStatus.uploading
//                               ? Colors.blue
//                               : Colors.green,
//                         ),
//                       ),
//                     );
//                   }
//                   return const SizedBox.shrink();
//                 },
//                 orElse: () {
//                   return const SizedBox.shrink();
//                 },
//               );
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           // معلومات الطلب
//           Expanded(
//             child: Center(
//               child: Text('محتوى صفحة تفاصيل الطلب $orderId'),
//             ),
//           ),
    
//           // أزرار التحكم في الرفع
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: BlocBuilder<UploadTaskBloc, UploadTaskState>(
//               builder: (context, uploadState) {
//                 return uploadState.maybeWhen(
//                   loaded: (
//                     localDocs,
//                     pendingUploads,
//                     failedUploads,
//                     completedUploads,
//                     isProcessing,
//                     error,
//                   ) {
//                     final currentDoc = localDocs
//                         .where((doc) => doc.orderId == orderId)
//                         .firstOrNull;
    
//                     if (currentDoc == null) {
//                       return ElevatedButton(
//                         onPressed: () {
//                           // فتح شاشة إضافة توثيق
//                           context.read<UploadTaskBloc>().add(
//                                 UploadTaskEvent.getLocalDocs(),
//                               );
//                         },
//                         child: const Text('إضافة توثيق'),
//                       );
//                     }
    
//                     return Column(
//                       children: [
//                         if (currentDoc.uploadStatus ==
//                             UploadStatus.pending) ...[
//                           ElevatedButton.icon(
//                             onPressed: isProcessing == true
//                                 ? null
//                                 : () {
//                                     context.read<UploadTaskBloc>().add(
//                                           UploadTaskEvent.startUpload(
//                                             orderId: orderId,
//                                           ),
//                                         );
//                                   },
//                             icon: const Icon(Icons.upload),
//                             label: const Text('بدء الرفع'),
//                           ),
//                         ],
//                         if (currentDoc.uploadStatus ==
//                             UploadStatus.failed) ...[
//                           ElevatedButton.icon(
//                             onPressed: () {
//                               context.read<UploadTaskBloc>().add(
//                                     UploadTaskEvent.startUpload(
//                                       orderId: orderId,
//                                     ),
//                                   );
//                             },
//                             icon: const Icon(Icons.refresh),
//                             label: const Text('إعادة المحاولة'),
//                           ),
//                         ],
//                         if (currentDoc.uploadStatus ==
//                             UploadStatus.uploading) ...[
//                           OutlinedButton.icon(
//                             onPressed: () {
//                               context.read<UploadTaskBloc>().add(
//                                     UploadTaskEvent.cancelUpload(
//                                       orderId: orderId,
//                                     ),
//                                   );
//                             },
//                             icon: const Icon(Icons.cancel),
//                             label: const Text('إلغاء'),
//                           ),
//                         ],
//                       ],
//                     );
//                   },
//                   orElse: () => const CircularProgressIndicator(),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// /// مثال على مراقبة تقدم طلب معين
// class OrderProgressTracker extends StatefulWidget {
//   final int orderId;

//   const OrderProgressTracker({super.key, required this.orderId});

//   @override
//   State<OrderProgressTracker> createState() => _OrderProgressTrackerState();
// }

// class _OrderProgressTrackerState extends State<OrderProgressTracker> {
//   @override
//   void initState() {
//     super.initState();
//     // بدء مراقبة تقدم هذا الطلب
//     context
//         .read<UploadProgressTrackingBloc>()
//         .startTrackingOrder(widget.orderId);
//   }

//   @override
//   void dispose() {
//     // إيقاف مراقبة هذا الطلب
//     context
//         .read<UploadProgressTrackingBloc>()
//         .stopTrackingOrder(widget.orderId);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<UploadProgressTrackingBloc, UploadProgressTrackingState>(
//       builder: (context, progressState) {
//         return progressState.maybeWhen(
//           monitoring: (
//             totalDocs,
//             pendingCount,
//             uploadingCount,
//             failedCount,
//             completedCount,
//             currentUploading,
//             progressPercentage,
//             orderTracking,
//             error,
//           ) {
//             final orderDoc = orderTracking![widget.orderId];

//             if (orderDoc == null) {
//               return const Text('لا توجد معلومات رفع لهذا الطلب');
//             }

//             return Card(
//               child: Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'طلب رقم ${widget.orderId}',
//                       style: Theme.of(context).textTheme.titleMedium,
//                     ),
//                     const SizedBox(height: 8),
//                     // LinearProgressIndicator(
//                     //   value: (orderDoc.uploadProgress ?? 0.0) / 100,
//                     //   backgroundColor: Colors.grey.withOpacity(0.3),
//                     //   valueColor: AlwaysStoppedAnimation<Color>(
//                     //       _getProgressColor(orderDoc.uploadStatus)),
//                     // ),
//                     const SizedBox(height: 8),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '${orderDoc.uploadProgress.toStringAsFixed(1) ?? 0}%',
//                         ),
//                         // Text(_getStatusText(orderDoc.uploadStatus)),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//           orElse: () {
//             return const SizedBox.shrink();
//           },
//         );
//       },
//     );
//   }

//   Color _getProgressColor(UploadStatus status) {
//     switch (status) {
//       case UploadStatus.pending:
//         return Colors.orange;
//       case UploadStatus.uploading:
//         return Colors.blue;
//       case UploadStatus.completed:
//         return Colors.green;
//       case UploadStatus.failed:
//         return Colors.red;
//     }
//   }

//   String _getStatusText(UploadStatus status) {
//     switch (status) {
//       case UploadStatus.pending:
//         return 'معلق';
//       case UploadStatus.uploading:
//         return 'يتم الرفع';
//       case UploadStatus.completed:
//         return 'مكتمل';
//       case UploadStatus.failed:
//         return 'فاشل';
//     }
//   }
// }
