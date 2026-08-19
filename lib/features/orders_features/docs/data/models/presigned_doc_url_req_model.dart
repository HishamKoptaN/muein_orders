import 'package:freezed_annotation/freezed_annotation.dart';

part 'presigned_doc_url_req_model.freezed.dart';
part 'presigned_doc_url_req_model.g.dart';

@freezed
abstract class PresignedDocUrlReqModel with _$PresignedDocUrlReqModel {
  const factory PresignedDocUrlReqModel({
    @JsonKey(name: 'doc_id') required int? docId,
    @JsonKey(name: 'file_type') required String? fileType,
    @JsonKey(name: 'extension') required String? extension,
  }) = _PresignedDocUrlReqModel;
  factory PresignedDocUrlReqModel.fromJson(Map<String, Object?> json) =>
      _$PresignedDocUrlReqModelFromJson(json);
}
