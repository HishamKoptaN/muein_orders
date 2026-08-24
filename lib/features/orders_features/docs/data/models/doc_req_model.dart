import 'package:freezed_annotation/freezed_annotation.dart';
part 'doc_req_model.freezed.dart';
part 'doc_req_model.g.dart';

@freezed
abstract class DocReqModel with _$DocReqModel {
  const factory DocReqModel({
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
    @Default('') @JsonKey(name: 'file_path') String filePath,
    @Default('') String thumbnail,
  }) = _DocMediaReqModel;

  factory DocMediaReqModel.fromJson(Map<String, dynamic> json) =>
      _$DocMediaReqModelFromJson(json);
}
