import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_event.freezed.dart';

@freezed
class S3Event with _$S3Event {
  const factory S3Event.uploadFile({
    required File file,
    required String uploadUrl,
    required String contentType,
  }) = _UploadFile;
}
