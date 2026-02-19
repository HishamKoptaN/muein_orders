part of 'cached_doc_bloc.dart';

@freezed
abstract class CachedDocEvent with _$CachedDocEvent {
  const factory CachedDocEvent.initialize({required int docId}) = _Initialize;
  const factory CachedDocEvent.updateData({
    Loaded? loaded,
    required CreateCachedDocEntity createCachedDoc,
  }) = _UpdateData;
  const factory CachedDocEvent.cachedDoc({required Loaded loaded}) = _CachedDoc;
}
