part of 'docs_bloc.dart';

@freezed
abstract class DocsState with _$DocsState {
  const factory DocsState.loading() = _LoadInProgress;
  const factory DocsState.success() = _Success;
  const factory DocsState.loaded({
    @Default([]) List<DocEntity>? docs,
    @Default(false) bool? hasMore,
  }) = _Loaded;
  const factory DocsState.failure({required ApiErrorModel apiErrorModel}) =
      _Failure;
}
