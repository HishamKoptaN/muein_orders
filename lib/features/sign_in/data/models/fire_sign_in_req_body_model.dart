import 'package:freezed_annotation/freezed_annotation.dart';
part 'fire_sign_in_req_body_model.freezed.dart';
part 'fire_sign_in_req_body_model.g.dart';

@freezed
class FireSignInReqBodyModel with _$FireSignInReqBodyModel {
  const factory FireSignInReqBodyModel({
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "password") String? password,
  }) = _FireSignInReqBodyModel;
  factory FireSignInReqBodyModel.fromJson(Map<String, dynamic> json) =>
      _$FireSignInReqBodyModelFromJson(json);
}
