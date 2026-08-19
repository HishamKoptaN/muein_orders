// part of 'upload_progress_tracking_bloc.dart';

// /// States للـ UploadProgressBloc
// @freezed
// class UploadProgressTrackingState with _$UploadProgressTrackingState {
//   const factory UploadProgressTrackingState.initial() = _Initial;

//   const factory UploadProgressTrackingState.monitoring({
//     int? totalDocs,
//     int? pendingCount,
//     int? uploadingCount,
//     int? failedCount,
//     int? completedCount,
//     CachedDocEntity? currentUploading,
//     double? progressPercentage,
//     Map<int, CachedDocEntity>? orderTracking,
//     String? error,
//   }) = _Monitoring;

//   const factory UploadProgressTrackingState.stopped() = _Stopped;

//   const factory UploadProgressTrackingState.error({
//     required String error,
//   }) = _Error;
// }
