import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_req_entity.freezed.dart';

@Freezed()
class SignUpReqEntity with _$SignUpReqEntity {
  const factory SignUpReqEntity({
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
    required String password,
    int? countryId,
    int? cityId,
  }) = _SignUpReqEntity;
}