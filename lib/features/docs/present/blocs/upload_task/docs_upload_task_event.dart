// part of 'docs_upload_task_bloc.dart';

// /// Events للـ UploadTaskBloc
// @freezed
// class UploadTaskEvent with _$UploadTaskEvent {
//   const factory UploadTaskEvent.initialize() = _Initialize;

//   /// بدء رفع توثيق
//   const factory UploadTaskEvent.startUpload({
//     required int orderId,
//   }) = _StartUpload;

//   /// إلغاء رفع توثيق
//   const factory UploadTaskEvent.cancelUpload({
//     required int orderId,
//   }) = _CancelUpload;

//   /// فحص تقدم رفع توثيق معين
//   const factory UploadTaskEvent.checkUploadProgress({
//     required int orderId,
//   }) = _CheckUploadProgress;

//   /// إعادة محاولة رفع الطلبات الفاشلة
//   const factory UploadTaskEvent.retryFailedUploads() = _RetryFailedUploads;

//   /// الحصول على جميع التوثيق المحلي
//   const factory UploadTaskEvent.getLocalDocs() = _GetLocalDocs;
// }
