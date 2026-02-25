// part of '../notifications_view_clean.dart';

// class _NotificationStream extends StatelessWidget {
//   final Stream<List<CachedDocEntity>> docsStream;

//   const _NotificationStream({
//     required this.docsStream,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<List<CachedDocEntity>>(
//       stream: docsStream,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         }

//         if (snapshot.hasError) {
//           return Center(
//             child: TrText('خطأ في تحميل البيانات: ${snapshot.error}'),
//           );
//         }

//         final docs = snapshot.data ?? [];

//         if (docs.isEmpty) {
//           return const Center(
//             child: TrText('لا توجد إشعارات حالياً'),
//           );
//         }

//         return _NotificationList(docs: docs);
//       },
//     );
//   }
// }
