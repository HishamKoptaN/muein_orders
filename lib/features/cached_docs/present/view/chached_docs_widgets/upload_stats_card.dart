// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../../../l10n/app_localizations.dart';

// /// بطاقة إحصائيات الرفع
// class UploadStatsCard extends StatelessWidget {
//   final int totalDocs;
//   final int pendingCount;
//   final int uploadingCount;
//   final int failedCount;
//   final int completedCount;

//   const UploadStatsCard({
//     super.key,
//     required this.totalDocs,
//     required this.pendingCount,
//     required this.uploadingCount,
//     required this.failedCount,
//     required this.completedCount,
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
//             // TrText(
//             //   t.uploadStatistics ?? 'إحصائيات الرفع',
//             //   style: Theme.of(context).textTheme.titleLarge,
//             // ),
//             SizedBox(height: 16.h),
//             Row(
//               children: [
//                 _StatItem(
//                   icon: Icons.pending,
//                   label: t.pending ?? 'معلق',
//                   value: pendingCount.toString(),
//                   color: Colors.orange,
//                 ),
//                 SizedBox(width: 16.w),
//                 _StatItem(
//                   icon: Icons.upload,
//                   label: t.uploading ?? 'يتم الرفع',
//                   value: uploadingCount.toString(),
//                   color: Colors.blue,
//                 ),
//                 SizedBox(width: 16.w),
//                 _StatItem(
//                   icon: Icons.error,
//                   label: t.failed ?? 'فاشل',
//                   value: failedCount.toString(),
//                   color: Colors.red,
//                 ),
//                 SizedBox(width: 16.w),
//                 _StatItem(
//                   icon: Icons.check_circle,
//                   label: t.completed ?? 'مكتمل',
//                   value: completedCount.toString(),
//                   color: Colors.green,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// /// عنصر الإحصائية
// class _StatItem extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final String value;
//   final Color color;

//   const _StatItem({
//     required this.icon,
//     required this.label,
//     required this.value,
//     required this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Column(
//         children: [
//           Icon(icon, color: color, size: 24.w),
//           SizedBox(height: 4.h),
//           TrText(
//             value,
//             style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                   color: color,
//                   fontWeight: FontWeight.bold,
//                 ),
//           ),
//           TrText(
//             label,
//             style: Theme.of(context).textTheme.bodySmall,
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }
