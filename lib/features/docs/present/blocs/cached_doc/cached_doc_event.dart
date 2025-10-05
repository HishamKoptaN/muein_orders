part of 'cached_doc_bloc.dart';

@freezed
class CachedDocEvent with _$CachedDocEvent {
  //   const factory DocsEvent.started() = _Started;
  // const factory DocsEvent.docsUpdated(List<CachedDocEntity> docs) =
  //     _DocsUpdated;
  const factory CachedDocEvent.initialize() = _Initialize;
  const factory CachedDocEvent.updateData({
    GenericFormzInput<int>? orderId,
    FileFormzInput? imageOne,
    FileFormzInput? imageTwo,
    FileFormzInput? videoOne,
    FileFormzInput? videoTwo,
    GenericFormzInput<double>? latitude,
    GenericFormzInput<double>? longitude,
    GenericFormzInput<double>? shippingCost,
  }) = _UpdateData;
  const factory CachedDocEvent.cachedDoc() = _CachedDoc;
}
