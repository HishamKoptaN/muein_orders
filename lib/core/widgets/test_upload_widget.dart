// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../features/docs/data/datasources/local/drift/app_database.dart';
// import '../../features/docs/domain/entities/cached_doc_entity.dart';
// import '../../l10n/app_localizations.dart';
// import '../di/dependency_injection.dart';

// class TestUploadWidget extends StatefulWidget {
//   const TestUploadWidget({super.key});

//   @override
//   State<TestUploadWidget> createState() => _TestUploadWidgetState();
// }

// class _TestUploadWidgetState extends State<TestUploadWidget> {
//   late final AppDatabase _db;

//   @override
//   void initState() {
//     super.initState();
//     _db = getIt<AppDatabase>();
//   }

//   Future<void> _createTestUpload() async {
//     try {
//       // إنشاء توثيق تجريبي في حالة uploading
//       final testDoc = CachedDocEntity(
//         id: 999,
//         orderId: 12345,
//         uploadStatus: UploadStatus.uploading,
//         uploadProgress: 25.0, // بدء عند 25%
//         imageOne: '/test/path/image1.jpg',
//         latitude: 30.0444,
//         longitude: 31.2357,
//         shippingCost: 100.0,
//       );

//       // حفظ في قاعدة البيانات
//       await _db.insertDoc(
      
//       );

//       // محاكاة تحديث التقدم
//       _simulateProgress();

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('تم إنشاء توثيق تجريبي جاري رفعه'),
//           duration: Duration(seconds: 2),
//         ),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('خطأ في إنشاء التوثيق التجريبي: $e'),
//           duration: Duration(seconds: 2),
//         ),
//       );
//     }
//   }

//   void _simulateProgress() async {
//     double progress = 25.0;

//     while (progress < 100.0) {
//       await Future.delayed(Duration(seconds: 1));

//       progress += 15.0; // زيادة 15% كل ثانية

//       if (progress >= 100.0) {
//         progress = 100.0;

//         // تحديث الحالة إلى نجاح
//         await _db.update(db.cachedDocs).replace(
//           CachedDocEntity(
//             id: 999,
//             orderId: 12345,
//             uploadStatus: UploadStatus.success,
//             uploadProgress: progress,
//             imageOne: '/test/path/image1.jpg',
//             latitude: 30.0444,
//             longitude: 31.2357,
//             shippingCost: 100.0,
//           ),
//         );
//         break;
//       }

//       // تحديث التقدم في قاعدة البيانات
//       await _db.update(db.cachedDocs).replace(
//         CachedDocEntity(
//           id: 999,
//           orderId: 12345,
//           uploadStatus: UploadStatus.uploading,
//           uploadProgress: progress,
//           imageOne: '/test/path/image1.jpg',
//           latitude: 30.0444,
//           longitude: 31.2357,
//           shippingCost: 100.0,
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final t = AppLocalizations.of(context);

//     return Container(
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 4,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'اختبار إشعارات النظام',
//             style: TextStyle(
//               fontSize: 18.sp,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//             ),
//           ),
//           SizedBox(height: 12.h),
//           Text(
//             'انقر على الزر أدناه لإنشاء توثيق تجريبي جاري رفعه لرؤية إشعارات النظام',
//             style: TextStyle(
//               fontSize: 14.sp,
//               color: Colors.grey[600],
//             ),
//           ),
//           SizedBox(height: 16.h),
//           ElevatedButton.icon(
//             onPressed: _createTestUpload,
//             icon: Icon(Icons.upload_file),
//             label: Text('إنشاء توثيق تجريبي'),
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.blue,
//               foregroundColor: Colors.white,
//               padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
