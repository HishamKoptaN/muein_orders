import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_req_body_model.freezed.dart';
part 'sign_in_req_body_model.g.dart';

@freezed
class SignInReqBodyModel with _$SignInReqBodyModel {
  const factory SignInReqBodyModel({
    required String token,
  }) = _SignInReqBodyModel;

  factory SignInReqBodyModel.fromJson(Map<String, dynamic> json) =>
      _$SignInReqBodyModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => (this as _SignInReqBodyModel).toJson();
}
