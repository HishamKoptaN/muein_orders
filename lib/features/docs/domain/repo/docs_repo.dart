import '../../../../../core/networking/api_result.dart';
import '../../data/datasources/local/drift/app_database.dart';
import '../entities/docs_res_entity.dart';

abstract class DocsRepo {
  Future<ApiResult<DocsResEntity?>> getDocs({required int orderId});
  Future<ApiResult<DocEntity?>> createDoc({
    required CachedDoc doc,
    required Function onSendProgress,
  });
  Future<ApiResult<void>> startUpload({required int orderId});
  Future<ApiResult<void>> retryUpload({required int docId});
}
