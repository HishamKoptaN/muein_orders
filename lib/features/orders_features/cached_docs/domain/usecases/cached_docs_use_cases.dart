import 'package:injectable/injectable.dart';

import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/utils/app_file_manager.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../repo/cached_docs_repo.dart';
import '../../../docs/domain/repo/docs_repo.dart';
import '../../data/datasources/local_data_src/drift/tables/docs_table.dart';
import '../entities/cached_doc_entity.dart';
import '../entities/create_cached_doc_entity.dart';
import 'paste_location_from_clipboard_usecase.dart';

@singleton
class CachedDocsUseCases {
  final DocsRepo docsRepo;
  final CachedDocsRepo cachedDocsRepo;
  final AppFileManager fileManager;
  final PasteLocationFromClipboardUseCase pasteLocationUseCase;

  CachedDocsUseCases({
    required this.docsRepo,
    required this.cachedDocsRepo,
    required this.fileManager,
    required this.pasteLocationUseCase,
  });

  Future<ApiResult<void>> cachedDoc({
    required CreateCachedDocEntity doc,
  }) async {
    return await cachedDocsRepo.cachedDoc(doc: doc);
  }

  Future<ApiResult<DocEntity>> getCachedDoc({required int id}) async {
    return await cachedDocsRepo.getCachedDoc(id: id);
  }

  Future<ApiResult<void>> startUpload({required int id}) async {
    return await docsRepo.startUpload(id: id);
  }

  Future<ApiResult<void>> retryUpload({required int id}) async {
    return await docsRepo.retryUpload(id: id);
  }

  Future<ApiResult<void>> updateProgress({
    required int id,
    required UploadStatus status,
    double? progress,
  }) async {
    final result = await cachedDocsRepo.updateProgress(
      id: id,
      status: status,
      progress: progress,
    );
    result.when(
      success: (_) async {
        if (status == UploadStatus.uploaded) {
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
