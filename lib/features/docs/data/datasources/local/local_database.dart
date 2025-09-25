// import 'dart:io';

// import 'package:drift/drift.dart';
// import 'package:drift_sqflite/drift_sqflite.dart';
// import 'package:injectable/injectable.dart';
// import 'package:path/path.dart' as p;
// import 'package:path_provider/path_provider.dart';
// import '../../../../../domain/entities/local_doc_entity.dart';
// part 'local_database.g.dart';

// class LocalDocs extends Table {
//   IntColumn get id => integer().autoIncrement()();
//   IntColumn get orderId => integer()();
//   TextColumn get imageOne => text().nullable()();
//   TextColumn get imageTwo => text().nullable()();
//   TextColumn get videoOne => text().nullable()();
//   TextColumn get videoTwo => text().nullable()();
//   RealColumn get latitude => real().nullable()();
//   RealColumn get longitude => real().nullable()();
//   RealColumn get shippingCost => real().nullable()();
//   TextColumn get uploadStatus => text()();
//   RealColumn get uploadProgress => real()();
//   DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
//   DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
// }

// /// جدول تتبع الرفع
// class UploadProgress extends Table {
//   IntColumn get id => integer().autoIncrement()();
//   IntColumn get docId => integer().references(LocalDocs, #id)();
//   TextColumn get uploadType => text()(); // 'image', 'video', 'location'
//   RealColumn get progress => real().withDefault(const Constant(0.0))();
//   TextColumn get status => text()();
//   TextColumn get errorMessage => text().nullable()();
//   DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
//   DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
// }

// @DriftDatabase(tables: [LocalDocs, UploadProgress])
// @lazySingleton
// class LocalDatabase extends _$LocalDatabase {
//   LocalDatabase() : super(_openConnection());

//   @override
//   int get schemaVersion => 1;

//   /// إدراج توثيق محلي جديد
//   Future<int> insertLocalDoc(LocalDocsCompanion doc) {
//     return into(localDocs).insert(doc);
//   }

//   /// تحديث حالة الرفع
//   Future<bool> updateUploadStatus(int docId, UploadStatus status,
//       {double? progress}) {
//     return (update(localDocs)..where((tbl) => tbl.id.equals(docId)))
//         .write(
//           LocalDocsCompanion(
//             uploadStatus: Value(status),
//             uploadProgress:
//                 progress != null ? Value(progress) : const Value.absent(),
//             updatedAt: Value(DateTime.now()),
//           ),
//         )
//         .then((rowsAffected) => rowsAffected > 0);
//   }

//   /// الحصول على جميع التوثيقات المعلقة
//   Future<List<LocalDoc>> getPendingDocs() {
//     return (select(localDocs)
//           ..where((tbl) => tbl.uploadStatus.equals(UploadStatus.pending.value))
//           ..orderBy([(tbl) => OrderingTerm.desc(tbl.createdAt)]))
//         .get();
//   }

//   /// الحصول على توثيق طلب معين
//   Future<LocalDoc?> getDocByOrderId(int orderId) {
//     return (select(localDocs)
//           ..where((tbl) => tbl.orderId.equals(orderId))
//           ..limit(1))
//         .getSingleOrNull();
//   }

//   /// حذف توثيق بعد نجاح الرفع
//   Future<int> deleteCompletedDoc(int docId) {
//     return (delete(localDocs)..where((tbl) => tbl.id.equals(docId))).go();
//   }

//   /// إدراج سجل تقدم الرفع
//   Future<int> insertUploadProgress(UploadProgressCompanion progress) {
//     return into(uploadProgress).insert(progress);
//   }

//   /// تحديث تقدم الرفع
//   Future<bool> updateUploadProgress(int progressId, UploadStatus status,
//       {double? progressValue}) {
//     return (update(uploadProgress)..where((tbl) => tbl.id.equals(progressId)))
//         .write(
//           UploadProgressCompanion(
//             status: Value(status),
//             progress: progressValue != null
//                 ? Value(progressValue)
//                 : const Value.absent(),
//             updatedAt: Value(DateTime.now()),
//           ),
//         )
//         .then((rowsAffected) => rowsAffected > 0);
//   }

//   /// الحصول على تقدم الرفع لتوثيق معين
//   Future<List<UploadProgress>> getUploadProgress(int docId) {
//     return (select(uploadProgress)
//           ..where((tbl) => tbl.docId.equals(docId))
//           ..orderBy([(tbl) => OrderingTerm.desc(tbl.createdAt)]))
//         .get();
//   }
// }

// LazyDatabase _openConnection() {
//   return LazyDatabase(() async {
//     final dbFolder = await getApplicationDocumentsDirectory();
//     final file = File(p.join(dbFolder.path, 'mubin_orders_local.db'));

//     final queryExecutor = SqfliteQueryExecutor.inDatabaseFolder(
//       path: file.path,
//       logStatements: true,
//     );

//     return queryExecutor;
//   });
// }
