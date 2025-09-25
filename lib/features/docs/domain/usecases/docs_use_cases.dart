import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
// import '../../data/models/cached_doc.dart';
// import '../entities/cached_doc_entity.dart';
// import '../entities/docs_res_entity.dart';
import '../entities/cached_doc_entity.dart';
import '../entities/docs_res_entity.dart' show DocEntity, DocsResEntity;
import '../repo/cached_docs_repo.dart';
import '../repo/docs_repo.dart';
import '../../data/datasources/local/drift/app_database.dart';

@lazySingleton
class DocsUseCase {
  final DocsRepo ordersRepo;
  final CachedDocsRepo cachedDocsRepo;
  DocsUseCase({
    required this.ordersRepo,
    required this.cachedDocsRepo,
  });
  Future<ApiResult<DocsResEntity?>> getDocs({required int orderId}) async {
    return await ordersRepo.getDocs(orderId: orderId);
  }

  Future<({double lat, double lng})> getCurrentLocation() {
    return ordersRepo.getCurrentLocation();
  }

  Future<ApiResult<DocEntity?>> createDoc({
    required CachedDoc doc,
  }) async {
    return await ordersRepo.createDoc(
      doc: doc,
    );
  }

  Future<ApiResult<void>> cachedDoc({
    required CachedDocEntity doc,
  }) async {
    return await cachedDocsRepo.cachedDoc(doc: doc);
  }

  Future<ApiResult<void>> startUpload({required int orderId}) async {
    return await ordersRepo.startUpload(orderId: orderId);
  }

  Future<ApiResult<void>> retryUpload({required int docId}) async {
    return await ordersRepo.retryUpload(docId: docId);
  }
  // /// بدء رفع التوثيق في الخلفية
  // Future<void> startBackgroundUpload(int orderId) async {
  //   // التحقق من صحة orderId
  //   if (orderId <= 0) {
  //     throw ArgumentError('معرف الطلب غير صحيح: $orderId');
  //   }

  //   await ordersRepo.startBackgroundUpload(orderId);
  // }

  // /// الحصول على نسبة تقدم التوثيق المحلي
  // Future<double> getLocalDocProgress(int orderId) async {
  //   // التحقق من صحة orderId
  //   if (orderId <= 0) {
  //     throw ArgumentError('معرف الطلب غير صحيح: $orderId');
  //   }

  //   return await ordersRepo.getLocalDocProgress(orderId);
  // }
}
