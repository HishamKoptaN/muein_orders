import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../cached_docs/domain/repo/cached_docs_repo.dart';
import '../../../docs/domain/repo/docs_repo.dart';
import '../entities/cached_doc_entity.dart';
import '../../../../core/utils/app_file_manager.dart';

@singleton
class CachedDocsUseCases {
  final DocsRepo docsRepo;
  final CachedDocsRepo cachedDocsRepo;
  final AppFileManager fileManager;

  CachedDocsUseCases({
    required this.docsRepo,
    required this.cachedDocsRepo,
    required this.fileManager,
  });

  Future<ApiResult<void>> cachedDoc({
    required CachedDocEntity doc,
  }) async {
    return await cachedDocsRepo.cachedDoc(doc: doc);
  }

  Future<ApiResult<void>> startUpload({required int orderId}) async {
    return await docsRepo.startUpload(orderId: orderId);
  }

  Future<ApiResult<void>> retryUpload({required int docId}) async {
    return await docsRepo.retryUpload(docId: docId);
  }

  Stream<List<CachedDocEntity>> watchUploadingDocs() {
    return cachedDocsRepo.watchUploadingDocs();
  }

  /// تحديث حالة الرفع وحذف الملفات المؤقتة إذا نجح الرفع
  Future<ApiResult<void>> updateUploadStatus({
    required int docId,
    required UploadStatus status,
    double? progress,
  }) async {
    // تحديث حالة الرفع في قاعدة البيانات
    final result = await cachedDocsRepo.updateProgress(
      docId: docId,
      status: status,
      progress: progress,
    );

    // إذا نجح الرفع، احذف الملفات المؤقتة
    result.when(
      success: (_) async {
        if (status == UploadStatus.success) {
          try {
            // تعليق: حذف الملفات المؤقتة معلق حاليًا
            // await fileManager.deleteTempFilesForOrder(docId);
          } catch (e) {
            // تجاهل أخطاء حذف الملفات المؤقتة
          }
        }
      },
      failure: (_) {
        // لا نحذف الملفات في حالة الفشل حتى يمكن إعادة المحاولة
      },
    );

    return result;
  }
}
