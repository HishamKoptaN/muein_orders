part of 'cached_doc_bloc.dart';
@freezed
class CachedDocEvent with _$CachedDocEvent {
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
    PackageEntity? package,
  }) = _UpdateData;
  const factory CachedDocEvent.cachedDoc() = _CachedDoc;
}
