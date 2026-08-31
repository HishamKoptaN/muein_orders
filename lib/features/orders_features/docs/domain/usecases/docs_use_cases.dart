import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import '../../../cached_docs/domain/repo/cached_docs_repo.dart';
import '../entities/doc_req_entity.dart';
import '../repo/docs_repo.dart';

@lazySingleton
class DocsUseCase {
  final DocsRepo docsRepo;
  final CachedDocsRepo cachedDocsRepo;
  DocsUseCase({required this.docsRepo, required this.cachedDocsRepo});

  Future<ExecuteGuard<void>> updateDoc({required DocReqEntity docReq}) async {
    return await docsRepo.updateDoc(docReq: docReq);
  }

  Future<ExecuteGuard<void>> startUpload({required int id}) async {
    return await docsRepo.startUpload(id: id);
  }

  Future<ExecuteGuard<void>> retryUpload({required int id}) async {
    return await docsRepo.retryUpload(id: id);
  }
}
