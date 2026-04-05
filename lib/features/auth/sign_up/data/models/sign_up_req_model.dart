import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_req_model.freezed.dart';
part 'sign_up_req_model.g.dart';

@freezed
abstract class SignUpReqModel with _$SignUpReqModel {
  const factory SignUpReqModel({
    String? name,
    String? phone,
    @JsonKey(name: 'country_id') int? countryId,
    @JsonKey(name: 'id_token') required String idToken,
    @JsonKey(name: 'fcm_token') required String fcmToken,
    @JsonKey(name: 'device_type') required String deviceType,
  }) = _SignUpReqModel;

  factory SignUpReqModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpReqModelFromJson(json);
}
