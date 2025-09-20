import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_req_entity.freezed.dart';

@Freezed()
class SignUpReqEntity with _$SignUpReqEntity {
  const factory SignUpReqEntity({
    required String name,
    required String phone,
    String? email,
    String? password,
    String? fcmToken,
  }) = _SignUpReqEntity;
}
