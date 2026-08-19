import 'package:freezed_annotation/freezed_annotation.dart';
part 'doc_req_model.freezed.dart';
part 'doc_req_model.g.dart';

@freezed
abstract class DocReqModel with _$DocReqModel {
  const factory DocReqModel({
    @JsonKey(name: 'doc_id') required int docId,
    @JsonKey(name: 'latitude', includeIfNull: false) String? latitude,
    @JsonKey(name: 'longitude', includeIfNull: false) String? longitude,
  }) = _DocReqModel;

  factory DocReqModel.fromJson(Map<String, dynamic> json) =>
      _$DocReqModelFromJson(json);
}
