import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/utils/app_file_manager.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../../data/datasources/local_data_src/drift/tables/items_table.dart';
import '../repo/cached_docs_repo.dart';
import '../../../docs/domain/repo/docs_repo.dart';
import '../entities/create_cached_doc_entity.dart';

@singleton
class CachedDocsUseCases {
  final DocsRepo docsRepo;
  final CachedDocsRepo cachedDocsRepo;
  final AppFileManager fileManager;

  CachedDocsUseCases({
    required this.docsRepo,
    required this.cachedDocsRepo,
    required this.fileManager,
  });
  Future<ApiResult<List<DocEntity>>> getPendings() async {
    return await cachedDocsRepo.getPendings();
  }

  Future<ApiResult<void>> cachedDoc({
    required CreateCachedDocEntity doc,
  }) async {
    return await cachedDocsRepo.cachedDoc(createCachedDoc: doc);
  }

  Future<ApiResult<void>> startUpload({required int id}) async {
    return await docsRepo.startUpload(id: id);
  }

  Future<ApiResult<void>> retryUpload({required int id}) async {
    return await docsRepo.retryUpload(id: id);
  }

  Future<ApiResult<void>> updateProgress({
    required int id,
    required UploadStatus status,
    double? progress,
  }) async {
    final result = await cachedDocsRepo.updateProgress(
      id: id,
      status: status,
      progress: progress,
    );
    result.when(
      success: (_) async {
        if (status == .uploaded) {
          try {
            // await fileManager.deleteTempFilesForOrder(docId);
          } catch (e) {}
        }
      },
      failure: (_) {},
    );

    return result;
  }

  //
  //PasteLocationFromClipboardUseCase(this._clipboardService);
  //Future<ApiResult<LatLng?>> call() async {
  //
  //}
  //
  //Future<bool> hasValidCoordinates() async {
  //  try {
  //    final text = await _clipboardService.getText();
  //    if (text == null || text.isEmpty) return false;
  //    return CoordinateParser.isValid(text);
  //  } catch (_) {
  //    return false;
  //  }
  //}
}
