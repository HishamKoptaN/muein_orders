import '../../../../core/networking/api_result.dart';
import '../../data/datasources/local/drift/cached_docs_table.dart';
import '../entities/cached_doc_entity.dart';
import '../entities/create_cached_doc_entity.dart';

abstract class CachedDocsRepo {
  Stream<CachedDocEntity?> watchDoc(int docId);
  Future<ApiResult<CachedDocEntity>> getCachedDoc({required int docId});
  Future<({double lat, double lng})> getCurrentLocation();
  Future<ApiResult<void>> cachedDoc({required CreateCachedDocEntity doc});
  Future<ApiResult<void>> updateProgress({
    required int docId,
    required FileUploadStatus status,
    required double? progress,
  });
  Future<bool> orderMatchesStatus(int orderId, FileUploadStatus status);
}
