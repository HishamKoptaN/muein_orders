import 'dart:developer';
import '../../../features/orders_features/cached_docs/data/datasources/local_data_src/drift/app_database.dart';
import '../../../features/orders_features/cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
import '../../../features/orders_features/cached_docs/domain/usecases/cached_docs_use_cases.dart';
import '../../../features/orders_features/docs/data/mapper/docs_mapper.dart';
import '../../../features/orders_features/docs/domain/entities/doc_entity.dart';
import '../../../features/orders_features/docs/domain/usecases/docs_use_cases.dart';
import '../../di/dependency_injection.dart';
import '../../networking/api_result.dart';

Future<void> startUploadDocs() async {
  final db = getIt<AppDatabase>();
  final docsUseCase = getIt<DocsUseCase>();
  await getIt<CachedDocsUseCases>().getPendings().then((res) async {
    await res.when(
      success: (docs) async {
        for (final DocEntity doc in docs ?? []) {
          try {
            await docsUseCase.updateDoc(docReq: doc.toUpdateDocReq());
          } on Exception catch (e) {
            await db.docsDao.updateUploadStatus(
              id: doc.id,
              status: UploadStatus.failed.name,
            );
          }
        }
      },
      failure: (error) {
        log('error: $error');
      },
    );
  });
}
