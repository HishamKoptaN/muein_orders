import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_req_model.freezed.dart';
part 'update_profile_req_model.g.dart';

@freezed
abstract class UpdateProfileReqModel with _$UpdateProfileReqModel {
  const factory UpdateProfileReqModel({
    String? avatar,
    String? name,
    String? phone,
  }) = _UpdateProfileReqModel;

  factory UpdateProfileReqModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileReqModelFromJson(json);
}
