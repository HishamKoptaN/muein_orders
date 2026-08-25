import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/utils/app_file_manager.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../repo/cached_docs_repo.dart';
import '../../../docs/domain/repo/docs_repo.dart';
import '../entities/create_cached_doc_entity.dart';

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
  Future<ApiResult<List<DocEntity>>> getPendings() async {
    return await cachedDocsRepo.getPendings();
  }

  Future<ApiResult<void>> cachedDoc({
    required CreateCachedDocEntity doc,
  }) async {
    return await cachedDocsRepo.cachedDoc(createCachedDoc: doc);
  }

  Future<ApiResult<void>> startUpload({required int id}) async {
    return await docsRepo.startUpload(id: id);
  }

  Future<ApiResult<void>> retryUpload({required int id}) async {
    return await docsRepo.retryUpload(id: id);
  }
}
