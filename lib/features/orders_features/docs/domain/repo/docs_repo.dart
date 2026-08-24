import '../../../../../../core/networking/api_result.dart';
import '../entities/doc_req_entity.dart';

abstract class DocsRepo {
  Future<ApiResult<void>> updateDoc({required DocReqEntity docReq});
  Future<ApiResult<void>> updateMedia({required DocMediaReqEntity docMediaReq});
  Future<ApiResult<void>> startUpload({required int id});
  Future<ApiResult<void>> retryUpload({required int id});
}
