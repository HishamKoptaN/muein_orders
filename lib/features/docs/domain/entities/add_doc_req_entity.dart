import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_doc_req_entity.freezed.dart';

@freezed
class AddDocReqEntity with _$AddDocReqEntity {
  const factory AddDocReqEntity({
    int? orderId,
    File? videoOne,
    File? videoTwo,
    File? imageOne,
    File? imageTwo,
    String? latitude,
    String? longitude,
  }) = _AddDocReqEntity;
  static AddDocReqEntity empty() => const AddDocReqEntity();
}

extension AddOrderReqValidation on AddDocReqEntity {
  bool get isComplete {
    return orderId != null &&
        videoOne != null &&
        videoTwo != null &&
        imageOne != null &&
        imageTwo != null;
  }
}
