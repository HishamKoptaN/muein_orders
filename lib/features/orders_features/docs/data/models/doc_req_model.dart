import 'package:freezed_annotation/freezed_annotation.dart';
part 'doc_req_model.freezed.dart';
part 'doc_req_model.g.dart';

@freezed
abstract class DocReqModel with _$DocReqModel {
  const factory DocReqModel({
    @Default(0) @JsonKey(name: 'doc_id') int docId,
    @Default('') @JsonKey(name: 'latitude') String latitude,
    @Default('') @JsonKey(name: 'longitude') String longitude,
  }) = _DocReqModel;

  factory DocReqModel.fromJson(Map<String, dynamic> json) =>
      _$DocReqModelFromJson(json);
}

@freezed
abstract class DocMediaReqModel with _$DocMediaReqModel {
  const factory DocMediaReqModel({
    @Default(0) int id,
    @Default(0) int docId,
    @Default('') String filePath,
    @Default('') String fileType,
    @Default('') String thumbnail,
  }) = _DocMediaReqModel;

  factory DocMediaReqModel.fromJson(Map<String, dynamic> json) =>
      _$DocMediaReqModelFromJson(json);
}
