// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../../l10n/app_localizations.dart';
// import '../blocs/progress_tracking/upload_progress_tracking_bloc.dart';
// import '../blocs/upload_task/docs_upload_task_bloc.dart';
// import 'widgets/chached_docs_widgets/upload_progress_card.dart';
// import 'widgets/chached_docs_widgets/upload_queue_list.dart';
// import 'widgets/chached_docs_widgets/upload_stats_card.dart';

// /// شاشة مراقبة الرفع والتقدم
// class UploadMonitoringView extends StatefulWidget {
//   const UploadMonitoringView({super.key});

//   static const String routeName = 'upload-monitoring';

//   @override
//   State<UploadMonitoringView> createState() => _UploadMonitoringViewState();
// }

// class _UploadMonitoringViewState extends State<UploadMonitoringView>
//     with WidgetsBindingObserver {
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addObserver(this);

//     // بدء مراقبة التقدم
//     context.read<UploadProgressTrackingBloc>().add(
//           const UploadProgressTrackingEvent.startMonitoring(),
//         );

//     // تهيئة BLoC الرئيسي
//     context.read<UploadTaskBloc>().add(
//           const UploadTaskEvent.initialize(),
//         );

//     // تحديث البيانات كل 2 ثانية
//     _startPeriodicUpdate();
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     super.dispose();
//   }

//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     super.didChangeAppLifecycleState(state);

//     // إيقاف المراقبة عندما ينتقل التطبيق للخلفية
//     if (state == AppLifecycleState.paused) {
//       context.read<UploadProgressTrackingBloc>().add(
//             const UploadProgressTrackingEvent.stopMonitoring(),
//           );
//     }

//     // إعادة بدء المراقبة عند العودة للمقدمة
//     if (state == AppLifecycleState.resumed) {
//       context.read<UploadProgressTrackingBloc>().add(
//             const UploadProgressTrackingEvent.startMonitoring(),
//           );
//       // تحديث البيانات عند العودة
//       _refreshData();
//     }
//   }

//   /// بدء التحديث الدوري للبيانات
//   void _startPeriodicUpdate() {
//     Future.delayed(const Duration(seconds: 2), () {
//       if (mounted) {
//         context.read<UploadTaskBloc>().state.whenOrNull(
//           loaded: (
//             docs,
//             pendingUploads,
//             failedUploads,
//             completedUploads,
//             isProcessing,
//             error,
//           ) {
//             if (docs.isNotEmpty) {
//               _refreshData();
//             }
//           },
//         );
//         _startPeriodicUpdate();
//       }
//     });
//   }

//   /// تحديث البيانات
//   void _refreshData() {
//     context.read<UploadTaskBloc>().add(
//           const UploadTaskEvent.getLocalDocs(),
//         );
//     context.read<UploadProgressTrackingBloc>().add(
//           const UploadProgressTrackingEvent.updateProgress(),
//         );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('مراقبة الرفع'),
//         actions: [
//           IconButton(
//             onPressed: () => _showUploadOptions(context),
//             icon: const Icon(Icons.more_vert),
//           ),
//         ],
//       ),
//       body: BlocBuilder<UploadTaskBloc, UploadTaskState>(
//         builder: (context, uploadState) {
//           return BlocBuilder<UploadProgressTrackingBloc,
//               UploadProgressTrackingState>(
//             builder: (context, progressState) {
//               return RefreshIndicator(
//                 onRefresh: () async {
//                   _refreshData();
//                   await Future.delayed(const Duration(milliseconds: 500));
//                 },
//                 child: SingleChildScrollView(
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   padding: EdgeInsets.all(16.w),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // إحصائيات الرفع
//                       progressState.maybeWhen(
//                         monitoring: (
//                           totalDocs,
//                           pendingCount,
//                           uploadingCount,
//                           failedCount,
//                           completedCount,
//                           currentUploading,
//                           progressPercentage,
//                           orderTracking,
//                           error,
//                         ) =>
//                             Column(
//                           children: [
//                             UploadStatsCard(
//                               totalDocs: totalDocs ?? 0,
//                               pendingCount: pendingCount ?? 0,
//                               uploadingCount: uploadingCount ?? 0,
//                               failedCount: failedCount ?? 0,
//                               completedCount: completedCount ?? 0,
//                             ),
//                             SizedBox(height: 16.h),
//                           ],
//                         ),
//                         orElse: () => const SizedBox.shrink(),
//                       ),

//                       // تقدم الرفع الحالي
//                       progressState.maybeWhen(
//                         monitoring: (
//                           totalDocs,
//                           pendingCount,
//                           uploadingCount,
//                           failedCount,
//                           completedCount,
//                           currentUploading,
//                           progressPercentage,
//                           orderTracking,
//                           error,
//                         ) =>
//                             currentUploading != null
//                                 ? Column(
//                                     children: [
//                                       // UploadProgressCard(
//                                       //   currentDoc: currentUploading,
//                                       //   progressPercentage:
//                                       //       progressPercentage ?? 0.0,
//                                       // ),
//                                       SizedBox(height: 16.h),
//                                     ],
//                                   )
//                                 : const SizedBox.shrink(),
//                         orElse: () => const SizedBox.shrink(),
//                       ),
//                       Text(
//                         'التوثيقات المحلية',
//                         style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                               fontWeight: FontWeight.bold,
//                             ),
//                       ),
//                       SizedBox(height: 8.h),
//                       // عرض حالة التحميل أو الخطأ أو القائمة
//                       uploadState.when(
//                         initial: () => const Center(
//                           child: CircularProgressIndicator(),
//                         ),
//                         loading: () => const Center(
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               CircularProgressIndicator(),
//                               SizedBox(height: 16),
//                               Text('جارٍ التحديث...'),
//                             ],
//                           ),
//                         ),
//                         loaded: (
//                           localDocs,
//                           pendingUploads,
//                           failedUploads,
//                           completedUploads,
//                           isProcessing,
//                           error,
//                         ) {
//                           if (error != null && error.isNotEmpty) {
//                             return Center(
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   Icon(
//                                     Icons.error_outline,
//                                     size: 48.w,
//                                     color: Theme.of(context).colorScheme.error,
//                                   ),
//                                   SizedBox(height: 16.h),
//                                   Text(
//                                     'حدث خطأ',
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .titleMedium
//                                         ?.copyWith(
//                                           color: Theme.of(context)
//                                               .colorScheme
//                                               .error,
//                                         ),
//                                   ),
//                                   SizedBox(height: 8.h),
//                                   Text(error),
//                                   SizedBox(height: 16.h),
//                                   ElevatedButton(
//                                     onPressed: _refreshData,
//                                     child: const Text('إعادة المحاولة'),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           }
//                           if (localDocs.isEmpty) {
//                             return Center(
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   Icon(
//                                     Icons.upload_file,
//                                     size: 64.w,
//                                     color:
//                                         Theme.of(context).colorScheme.outline,
//                                   ),
//                                   SizedBox(height: 16.h),
//                                   Text(
//                                     'لا توجد توثيقات للرفع',
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .titleMedium
//                                         ?.copyWith(
//                                           color: Theme.of(context)
//                                               .colorScheme
//                                               .outline,
//                                         ),
//                                   ),
//                                   SizedBox(height: 8.h),
//                                   Text(
//                                     'قم بإضافة توثيق جديد ليظهر هنا',
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .bodyMedium
//                                         ?.copyWith(
//                                           color: Theme.of(context)
//                                               .colorScheme
//                                               .outline,
//                                         ),
//                                   ),
//                                   SizedBox(height: 16.h),
//                                   ElevatedButton.icon(
//                                     onPressed: () {
//                                       context.read<UploadTaskBloc>().add(
//                                             const UploadTaskEvent
//                                                 .getLocalDocs(),
//                                           );
//                                     },
//                                     icon: const Icon(Icons.refresh),
//                                     label: const Text('تحديث'),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           }

//                           return Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               // معلومات إضافية
//                               Container(
//                                 padding: EdgeInsets.all(12.w),
//                                 decoration: BoxDecoration(
//                                   color: Theme.of(context)
//                                       .colorScheme
//                                       .primaryContainer
//                                       .withOpacity(0.3),
//                                   borderRadius: BorderRadius.circular(8.r),
//                                   border: Border.all(
//                                     color: Theme.of(context)
//                                         .colorScheme
//                                         .primary
//                                         .withOpacity(0.3),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   children: [
//                                     Icon(
//                                       Icons.info_outline,
//                                       size: 20.w,
//                                       color:
//                                           Theme.of(context).colorScheme.primary,
//                                     ),
//                                     SizedBox(width: 8.w),
//                                     Expanded(
//                                       child: Text(
//                                         'تم العثور على ${localDocs.length} توثيق محلي',
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .bodyMedium
//                                             ?.copyWith(
//                                               color: Theme.of(context)
//                                                   .colorScheme
//                                                   .primary,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(height: 16.h),

//                               // قائمة التوثيقات
//                               UploadQueueList(
//                                 localDocs: localDocs,
//                                 isProcessing: isProcessing ?? false,
//                                 onStartUpload: (orderId) {
//                                   context.read<UploadTaskBloc>().add(
//                                         UploadTaskEvent.startUpload(
//                                           orderId: orderId,
//                                         ),
//                                       );
//                                 },
//                                 onCancelUpload: (orderId) {
//                                   context.read<UploadTaskBloc>().add(
//                                         UploadTaskEvent.cancelUpload(
//                                           orderId: orderId,
//                                         ),
//                                       );
//                                 },
//                                 onRetryUpload: (orderId) {
//                                   context.read<UploadTaskBloc>().add(
//                                         UploadTaskEvent.startUpload(
//                                           orderId: orderId,
//                                         ),
//                                       );
//                                 },
//                               ),
//                             ],
//                           );
//                         },
//                         failure: (error) => Center(
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.error,
//                                 size: 48.w,
//                                 color: Theme.of(context).colorScheme.error,
//                               ),
//                               SizedBox(height: 16.h),
//                               Text(
//                                 'حدث خطأ في التحميل',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .titleMedium
//                                     ?.copyWith(
//                                       color:
//                                           Theme.of(context).colorScheme.error,
//                                     ),
//                               ),
//                               SizedBox(height: 8.h),
//                               Text(error),
//                               SizedBox(height: 16.h),
//                               ElevatedButton(
//                                 onPressed: () {
//                                   context.read<UploadTaskBloc>().add(
//                                         const UploadTaskEvent.initialize(),
//                                       );
//                                 },
//                                 child: const Text('إعادة المحاولة'),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () => _showRetryFailedDialog(context),
//         icon: const Icon(Icons.refresh),
//         label: const Text('إعادة المحاولة للفاشلة'),
//       ),
//     );
//   }

//   /// عرض خيارات الرفع
//   void _showUploadOptions(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (context) {
//         final t = AppLocalizations.of(context);
//         return Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ListTile(
//               leading: const Icon(Icons.refresh),
//               title: const Text('إعادة المحاولة للفاشلة'),
//               onTap: () {
//                 Navigator.pop(context);
//                 context.read<UploadTaskBloc>().add(
//                       const UploadTaskEvent.retryFailedUploads(),
//                     );
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.cancel),
//               title: const Text('إلغاء جميع الرفع'),
//               onTap: () {
//                 Navigator.pop(context);
//                 // إضافة منطق إلغاء جميع الرفع
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.stop_circle),
//               title: const Text('إيقاف المراقبة'),
//               onTap: () {
//                 Navigator.pop(context);
//                 context.read<UploadProgressTrackingBloc>().add(
//                       const UploadProgressTrackingEvent.stopMonitoring(),
//                     );
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   /// عرض حوار إعادة المحاولة للفاشلة
//   void _showRetryFailedDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('إعادة المحاولة للفاشلة'),
//           content: const Text(
//             'هل تريد إعادة محاولة رفع جميع الطلبات الفاشلة؟',
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text('إلغاء'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 context.read<UploadTaskBloc>().add(
//                       const UploadTaskEvent.retryFailedUploads(),
//                     );
//               },
//               child: const Text('إعادة المحاولة'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
