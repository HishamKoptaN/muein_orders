import '../../../../../../core/networking/api_result.dart';
import '../../../orders_items/domain/entities/order_items_res_entity.dart';
import '../entities/doc_req_entity.dart';
import '../entities/doc_media_req_entity.dart';

abstract class DocsRepo {
  Future<ApiResult<List<SallaOrderItemUnitEntity>?>> get({
    required int orderId,
  });
  Future<ApiResult<SallaOrderItemUnitEntity?>> createDoc({
    required DocReqEntity doc,
  });
  Future<ApiResult<SallaOrderItemUnitEntity>> docMedia({
    required DocMediaReqEntity docMediaReq,
  });
  Future<ApiResult<void>> startUpload({required int docId});
  Future<ApiResult<void>> retryUpload({required int docId});
}
