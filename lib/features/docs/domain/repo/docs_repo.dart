import 'package:dio/dio.dart';
import 'package:mubin_orders/features/docs/domain/entities/docs_res_entity.dart';
import '../../../../../core/networking/api_result.dart';
import '../entities/add_doc_req_entity.dart';

abstract class DocsRepo {
  Future<ApiResult<DocsResEntity?>> getDocs({required int clientId});
  Future<({double lat, double lng})> getCurrentLocation();
  Future<ApiResult<DocEntity?>> createDoc({
    required AddDocReqEntity addDocReqEntity,
    required ProgressCallback? onSendProgress,
  });
}
