import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mubin_orders/features/docs/domain/entities/docs_res_entity.dart';
import '../../../../core/errors/api_error_model.dart';
import '../../domain/entities/add_doc_req_entity.dart';
part 'docs_state.freezed.dart';

@freezed
class DocsState with _$DocsState {
  const factory DocsState.initial() = _Initial;
  const factory DocsState.loading() = _LoadInProgress;
  const factory DocsState.success() = _Success;
  const factory DocsState.loaded({
    required List<DocEntity>? docs,
    required bool? hasMore,
    required AddDocReqEntity? addDocReqEntity,
    required String? uploadingProgress,
  }) = _Loaded;
  const factory DocsState.getDocsfailure({
    required ApiErrorModel apiErrorModel,
  }) = _GetDocsFailure;
  const factory DocsState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
