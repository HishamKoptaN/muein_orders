import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_req_entity.freezed.dart';

@freezed
class UpdateProfileReqEntity with _$UpdateProfileReqEntity {
  const factory UpdateProfileReqEntity({
    File? image,
    String? name,
    String? phone,
  }) = _UpdateProfileReqEntity;
}
