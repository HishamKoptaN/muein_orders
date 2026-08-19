part of 'cached_doc_bloc.dart';

@freezed
abstract class CachedDocState with _$CachedDocState {
  const factory CachedDocState.loading() = _Loading;
  const factory CachedDocState.loaded({
    required CreateCachedDocEntity createCachedDoc,
    int? subCategoryId,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = Loaded;
  const factory CachedDocState.success() = _Success;
  const factory CachedDocState.failure({required String error}) = _Failure;
}
