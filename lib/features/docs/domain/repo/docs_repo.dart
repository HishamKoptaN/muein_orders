import '../../../../../core/networking/api_result.dart';
import '../../../orders/domain/entities/orders_res_entity.dart';
import '../entities/doc_req_entity.dart';
import '../entities/doc_media_req_entity.dart';

abstract class DocsRepo {
  Future<ApiResult<List<DocEntity>?>> get({required int orderId});
  Future<ApiResult<DocEntity?>> createDoc({required DocReqEntity doc});
  Future<ApiResult<DocEntity>> docMedia({
    required DocMediaReqEntity docMediaReq,
  });
  Future<ApiResult<void>> startUpload({required int docId});
  Future<ApiResult<void>> retryUpload({required int docId});
}
