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
  final DocsRepo docsRepo;
  final CachedDocsRepo cachedDocsRepo;
  DocsUseCase({
    required this.docsRepo,
    required this.cachedDocsRepo,
  });
  Future<ApiResult<DocsResEntity?>> getDocs({required int orderId}) async {
    return await docsRepo.getDocs(orderId: orderId);
  }


  Future<ApiResult<DocEntity?>> createDoc({
    required CachedDoc doc,
  }) async {
    return await docsRepo.createDoc(
      doc: doc,
    );
  }

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
}
