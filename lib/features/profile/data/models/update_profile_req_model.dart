import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/file_converter.dart';

part 'update_profile_req_model.freezed.dart';
part 'update_profile_req_model.g.dart';

@freezed
abstract class UpdateProfileReqModel with _$UpdateProfileReqModel {
  const factory UpdateProfileReqModel({
    @FileConverter() File? image,
    String? name,
    String? phone,
  }) = _UpdateProfileReqModel;

  factory UpdateProfileReqModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileReqModelFromJson(json);
}
