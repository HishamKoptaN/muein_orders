import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mubin_orders/features/docs/domain/entities/docs_res_entity.dart';
import '../../../../../core/errors/api_error_model.dart';
import 'package:formz/formz.dart';
import 'package:form_inputs/form_inputs.dart';

part 'docs_state.freezed.dart';

@freezed
class DocsState with _$DocsState {
  const factory DocsState.initial() = _Initial;
  const factory DocsState.loading() = _LoadInProgress;
  const factory DocsState.success() = _Success;
  const factory DocsState.loaded({
    @Default([]) List<DocEntity>? docs,
    @Default(false) bool? hasMore,
    required GenericFormzInput? orderId,
    required FileFormzInput videoOne,
    required FileFormzInput videoTwo,
    required FileFormzInput imageOne,
    required FileFormzInput imageTwo,
    required GenericFormzInput latitude,
    required GenericFormzInput longitude,
    required FormzSubmissionStatus formzSubmissionStatus,
    required String? uploadingProgress,
  }) = _Loaded;
  const factory DocsState.getDocsfailure({
    required ApiErrorModel apiErrorModel,
  }) = _GetDocsFailure;
  const factory DocsState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
