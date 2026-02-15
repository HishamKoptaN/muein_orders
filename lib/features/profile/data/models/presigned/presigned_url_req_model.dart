import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'presigned_url_req_model.freezed.dart';
part 'presigned_url_req_model.g.dart';

@freezed
abstract class PresignedUrlReqModel with _$PresignedUrlReqModel {
  const factory PresignedUrlReqModel({
    @JsonKey(name: 'extension') String? extensionProperty,
  }) = _PresignedUrlReqModel;
  factory PresignedUrlReqModel.fromJson(Map<String, Object?> json) =>
      _$PresignedUrlReqModelFromJson(json);
}
