import '../../../../core/networking/api_result.dart';
import '../entities/cached_doc_entity.dart';

abstract class CachedDocsRepo {
  Future<({double lat, double lng})> getCurrentLocation();

  Future<ApiResult<void>> cachedDoc({
    required CachedDocEntity doc,
  });
  Stream<CachedDocEntity?> watchDoc(int orderId);
  Future<ApiResult<CachedDocEntity?>> getDoc({required int orderId});
  Future<ApiResult<bool>> deleteDoc({required int orderId});
  Future<ApiResult<void>> updateProgress({
    required int docId,
    required UploadStatus status,
    required double? progress,
  });
  Stream<List<CachedDocEntity>> watchUploadingDocs();
}
