import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
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
  Future<ExecuteGuard<List<DocEntity>>> getPendings() async {
    return await cachedDocsRepo.getPendings();
  }

  Future<ExecuteGuard<void>> cachedDoc({
    required CreateCachedDocEntity doc,
  }) async {
    return await cachedDocsRepo.cachedDoc(createCachedDoc: doc);
  }

  Future<ExecuteGuard<void>> startUpload({required int id}) async {
    return await docsRepo.startUpload(id: id);
  }

  Future<ExecuteGuard<void>> retryUpload({required int id}) async {
    return await docsRepo.retryUpload(id: id);
  }
}
