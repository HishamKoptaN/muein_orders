// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../features/cached_docs/data/datasources/local/drift/app_database.dart';
// import '../../../features/cached_docs/domain/entities/cached_doc_entity.dart';
// import '../../di/dependency_injection.dart';
// import '../../widgets/navigation/custom_app_bar.dart';

// part 'notifications/notification_item.dart';
// part 'notifications/notification_list.dart';
// part 'notifications/notification_stream.dart';

// class NotificationsView extends StatefulWidget {
//   const NotificationsView({super.key});

//   static const String routeName = 'notifications';

//   @override
//   State<NotificationsView> createState() => _NotificationsViewState();
// }

// class _NotificationsViewState extends State<NotificationsView> {
//   late final AppDatabase _db;
//   late final Stream<List<CachedDocEntity>> _docsStream;

//   @override
//   void initState() {
//     super.initState();
//     _db = getIt<AppDatabase>();
//     _docsStream = _db.watchAllDocs().map(
//       (docs) => docs
//           .map(
//             (doc) => CachedDocEntity(
//               id: doc.id,
//               orderId: doc.orderId,
//               imageOne: doc.imageOne,
//               imageTwo: doc.imageTwo,
//               videoOne: doc.videoOne,
//               videoTwo: doc.videoTwo,
//               latitude: doc.latitude,
//               longitude: doc.longitude,
//               shippingCost: doc.shippingCost,
//               uploadStatus: _parseUploadStatus(doc.uploadStatus),
//               uploadProgress: doc.uploadProgress,
//             ),
//           )
//           .toList(),
//     );
//   }

//   UploadStatus _parseUploadStatus(String status) {
//     switch (status.toLowerCase()) {
//       case 'pending':
//         return UploadStatus.pending;
//       case 'uploading':
//         return UploadStatus.uploading;
//       case 'success':
//         return UploadStatus.success;
//       case 'failure':
//         return UploadStatus.failure;
//       default:
//         return UploadStatus.pending;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CustomAppBar(title: 'الإشعارات'),
//       body: _NotificationStream(docsStream: _docsStream),
//     );
//   }
// }
