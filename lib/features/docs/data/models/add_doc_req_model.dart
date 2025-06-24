import 'dart:io';
import 'package:dio/dio.dart';
import '../../domain/entities/add_doc_req_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_doc_req_model.freezed.dart';

@freezed
class AddDocReqModel with _$AddDocReqModel {
  const AddDocReqModel._();
  const factory AddDocReqModel({
    @JsonKey(name: "order_id") int? orderId,
    @JsonKey(ignore: true) File? videoOne,
    @JsonKey(ignore: true) File? videoTwo,
    @JsonKey(ignore: true) File? imageOne,
    @JsonKey(ignore: true) File? imageTwo,
    @JsonKey(name: "latitude") String? latitude,
    @JsonKey(name: "longitude") String? longitude,
  }) = _AddDocReqModel;
  factory AddDocReqModel.fromEntity(AddDocReqEntity entity) => AddDocReqModel(
        orderId: entity.orderId,
        videoOne: entity.videoOne,
        videoTwo: entity.videoOne,
        imageOne: entity.imageOne,
        imageTwo: entity.imageTwo,
        latitude: entity.latitude,
        longitude: entity.longitude,
      );
  FormData toFormData(ProgressCallback? onSendProgress) {
    return FormData.fromMap({
      'orderـid': orderId ?? '0',
      'latitude': latitude ?? '0.0',
      'longitude': longitude ?? '0.0',
      'video_one':
          videoOne != null ? MultipartFile.fromFileSync(videoOne!.path) : null,
      'video_two':
          videoTwo != null ? MultipartFile.fromFileSync(videoTwo!.path) : null,
      'imageOne':
          imageOne != null ? MultipartFile.fromFileSync(imageOne!.path) : null,
      'imageTwo':
          imageTwo != null ? MultipartFile.fromFileSync(imageTwo!.path) : null,
    });
  }
}
