import 'package:injectable/injectable.dart';

import '../../../../../../core/networking/api_result.dart';
import '../../../cached_docs/domain/repo/cached_docs_repo.dart';
import '../../../salla_orders_items/domain/entities/salla_order_items_res_entity.dart';
import '../entities/doc_req_entity.dart';
import '../repo/docs_repo.dart';

@lazySingleton
class DocsUseCase {
  final DocsRepo docsRepo;
  final CachedDocsRepo cachedDocsRepo;
  DocsUseCase({required this.docsRepo, required this.cachedDocsRepo});
  Future<ApiResult<SallaOrderItemUnitEntity?>> createDoc({
    required DocReqEntity doc,
  }) async {
    return await docsRepo.createDoc(doc: doc);
  }

  Future<ApiResult<void>> startUpload({required int id}) async {
    return await docsRepo.startUpload(id: id);
  }

  Future<ApiResult<void>> retryUpload({required int id}) async {
    return await docsRepo.retryUpload(id: id);
  }
}
