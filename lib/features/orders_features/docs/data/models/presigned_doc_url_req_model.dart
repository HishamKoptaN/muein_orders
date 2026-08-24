import 'package:freezed_annotation/freezed_annotation.dart';

part 'presigned_doc_url_req_model.freezed.dart';
part 'presigned_doc_url_req_model.g.dart';

@freezed
abstract class PresignedDocUrlReqModel with _$PresignedDocUrlReqModel {
  const factory PresignedDocUrlReqModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'extension') required String extension,
  }) = _PresignedDocUrlReqModel;
  factory PresignedDocUrlReqModel.fromJson(Map<String, Object?> json) =>
      _$PresignedDocUrlReqModelFromJson(json);
}
