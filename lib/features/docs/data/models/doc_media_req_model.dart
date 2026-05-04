import 'package:freezed_annotation/freezed_annotation.dart';
part 'doc_media_req_model.freezed.dart';
part 'doc_media_req_model.g.dart';

@freezed
abstract class DocMediaReqModel with _$DocMediaReqModel {
  const factory DocMediaReqModel({
    required int docId,
    required String filePath,
    String? thumbnail,
    required String fileType,
  }) = _DocMediaReqModel;

  factory DocMediaReqModel.fromJson(Map<String, dynamic> json) =>
      _$DocMediaReqModelFromJson(json);
}
