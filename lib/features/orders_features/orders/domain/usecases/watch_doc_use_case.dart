import 'package:injectable/injectable.dart';
import '../../../../../../core/utils/stream_utils.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/app_database.dart';
import '../../../docs/domain/entities/doc_entity.dart';

@singleton
class WatchDocUseCase {
  final AppDatabase _database;

  WatchDocUseCase(this._database);

}
