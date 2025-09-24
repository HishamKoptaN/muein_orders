part of 'docs_bloc.dart';

@freezed
class DocsEvent with _$DocsEvent {
  const factory DocsEvent.getDocs({required int orderId}) = _GetDocs;
  const factory DocsEvent.orderIdChanged({required int orderId}) =
      _OrderIdChanged;
  const factory DocsEvent.videoOneChanged({required File? file}) =
      _VideoOneChanged;
  const factory DocsEvent.videoTwoChanged({required File? file}) =
      _VideoTwoChanged;
  const factory DocsEvent.imageOneChanged({required File? file}) =
      _ImageOneChanged;
  const factory DocsEvent.imageTwoChanged({required File? file}) =
      _ImageTwoChanged;
  const factory DocsEvent.updateLocation({
    required String latitude,
    required String longitude,
  }) = _UpdateLocation;
  const factory DocsEvent.shippingCostChanged({
    required String value,
  }) = _ShippingCostChanged;
  const factory DocsEvent.createDoc() = _CreateDoc;
  const factory DocsEvent.resumePendingUploads() = _ResumePendingUploads;
  const factory DocsEvent.getUploadStatusForOrder() = _GetUploadStatusForOrder;
}
