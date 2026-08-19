import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_req_entity.freezed.dart';

@freezed
abstract class SignInReqEntity with _$SignInReqEntity {
  const SignInReqEntity._();
  const factory SignInReqEntity({
    EmailFormInput? email,
    PasswordFormInput? password,
    @Default(true) bool obscurePassword,
    @Default(false) bool rememberMe,
    GenericFormInput? phoneNumber,
    GenericFormInput? dialCode,
    GenericFormInput? isoCode,
    bool? isValidNumber,
    String? verificationId,
    String? smsCode,
  }) = _SignInReqEntity;
}
