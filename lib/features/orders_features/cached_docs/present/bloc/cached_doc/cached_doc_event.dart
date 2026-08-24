part of 'cached_doc_bloc.dart';

@freezed
abstract class CachedDocEvent with _$CachedDocEvent {
  const factory CachedDocEvent.updateData({
    required CreateCachedDocEntity createCachedDoc,
  }) = _UpdateData;
  const factory CachedDocEvent.cachedDoc() = _CachedDoc;
}
