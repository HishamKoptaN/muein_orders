import 'package:injectable/injectable.dart';
import '../../../../../../core/utils/stream_utils.dart';
import '../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../cached_docs/domain/entities/cached_doc_entity.dart';

@singleton
class WatchDocUseCase {
  final AppDatabase _database;

  WatchDocUseCase(this._database);

  Stream<CachedDocEntity?> call({required int docId}) {
    return createThrottledStream(
      _database.watchDoc(docId: docId).distinct(),
      throttleDuration: const Duration(milliseconds: 800),
    );
  }
}
