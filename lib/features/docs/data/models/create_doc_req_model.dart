import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_doc_req_model.freezed.dart';
part 'create_doc_req_model.g.dart';

@freezed
abstract class CreateDocReqModel with _$CreateDocReqModel {
  const factory CreateDocReqModel({
    @JsonKey(name: 'doc_id') required int? docId,
    @JsonKey(name: 'video_one') String? videoOne,
    @JsonKey(name: 'video_two') String? videoTwo,
    @JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,
    @JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,
    @JsonKey(name: 'image_one') String? imageOne,
    @JsonKey(name: 'image_two') String? imageTwo,
    @JsonKey(name: 'latitude') String? latitude,
    @JsonKey(name: 'longitude') String? longitude,
  }) = _CreateDocReqModel;

  factory CreateDocReqModel.fromJson(Map<String, dynamic> json) =>
      _$CreateDocReqModelFromJson(json);
}
