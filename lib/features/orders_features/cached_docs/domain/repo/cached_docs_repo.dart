import '../../../../../core/networking/api_result.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../../data/datasources/local_data_src/drift/tables/items_table.dart';
import '../entities/create_cached_doc_entity.dart';

abstract class CachedDocsRepo {
  Future<ApiResult<List<DocEntity>>> getPendings();
  Future<({double lat, double lng})> getCurrentLocation();
  Future<ApiResult<void>> cachedDoc({
    required CreateCachedDocEntity createCachedDoc,
  });
  Future<ApiResult<void>> updateProgress({
    required int id,
    required UploadStatus status,
    required double? progress,
  });
  Future<bool> orderMatchesStatus({
    required int id,
    required UploadStatus status,
  });
}
