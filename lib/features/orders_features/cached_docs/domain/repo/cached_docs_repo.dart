import '../../../../../core/networking/api_result.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../entities/create_cached_doc_entity.dart';

abstract class CachedDocsRepo {
  Future<ApiResult<List<DocEntity>>> getPendings();
  Future<ApiResult<void>> cachedDoc({
    required CreateCachedDocEntity createCachedDoc,
  });
}
