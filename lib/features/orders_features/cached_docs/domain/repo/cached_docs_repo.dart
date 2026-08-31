import 'package:error_handler/error_handler.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../entities/create_cached_doc_entity.dart';

abstract class CachedDocsRepo {
  Future<ExecuteGuard<List<DocEntity>>> getPendings();
  Future<ExecuteGuard<void>> cachedDoc({
    required CreateCachedDocEntity createCachedDoc,
  });
}
