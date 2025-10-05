part of 'docs_bloc.dart';

@freezed
class DocsEvent with _$DocsEvent {

  const factory DocsEvent.getDocs({
    required int orderId,
  }) = _GetDocs;
  const factory DocsEvent.startUpload({
    required int orderId,
  }) = _StartUpload;
  const factory DocsEvent.retryUpload({
    required int docId,
  }) = _RetryUpload;
  const factory DocsEvent.startBackgroundMonitoring() =
      _StartBackgroundMonitoring;
  const factory DocsEvent.stopBackgroundMonitoring() =
      _StopBackgroundMonitoring;
  const factory DocsEvent.checkPendingUploads() = _CheckPendingUploads;
}
