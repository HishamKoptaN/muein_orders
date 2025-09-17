
part of 'docs_bloc.dart';

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
