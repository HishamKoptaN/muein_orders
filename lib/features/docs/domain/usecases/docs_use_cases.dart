import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../cached_docs/domain/repo/cached_docs_repo.dart';
import '../../../orders/domain/entities/orders_res_entity.dart';
import '../entities/create_doc_entity.dart';
import '../entities/docs_res_entity.dart';
import '../repo/docs_repo.dart';

@lazySingleton
class DocsUseCase {
  final DocsRepo docsRepo;
  final CachedDocsRepo cachedDocsRepo;
  DocsUseCase({required this.docsRepo, required this.cachedDocsRepo});
  Future<ApiResult<List<DocEntity>?>> get({required int orderId}) async {
    return await docsRepo.get(orderId: orderId);
  }

  Future<ApiResult<DocEntity?>> createDoc({
    required CreateDocEntity doc,
  }) async {
    return await docsRepo.createDoc(doc: doc);
  }

  Future<ApiResult<void>> startUpload({required int docId}) async {
    return await docsRepo.startUpload(docId: docId);
  }

  Future<ApiResult<void>> retryUpload({required int docId}) async {
    return await docsRepo.retryUpload(docId: docId);
  }
}
