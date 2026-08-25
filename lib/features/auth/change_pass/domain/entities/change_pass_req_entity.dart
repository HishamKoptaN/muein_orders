import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'change_pass_req_entity.freezed.dart';

@freezed
abstract class ChangePasswordReqEntity with _$ChangePasswordReqEntity {
  const factory ChangePasswordReqEntity({
    PasswordFormInput? oldPassword,
    PasswordFormInput? password,
    PasswordFormInput? confirmPassword,
    @Default(true) bool obscurePassword,
  }) = _ChangePasswordReqEntity;
}
