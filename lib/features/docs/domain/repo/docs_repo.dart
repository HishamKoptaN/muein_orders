import '../../../../../core/networking/api_result.dart';
import '../entities/create_doc_entity.dart';
import '../entities/docs_res_entity.dart';

abstract class DocsRepo {
  Future<ApiResult<List<DocEntity>?>> get({required int orderId});
  Future<ApiResult<DocEntity?>> createDoc({required CreateDocEntity doc});
  Future<ApiResult<void>> startUpload({required int docId});
  Future<ApiResult<void>> retryUpload({required int docId});
}
