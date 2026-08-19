import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

import 'signup_req_entity.dart';

class SignUpFormEntity {
  final GenericFormInput name;
  final PhoneNumberFormInput phone;
  final EmailFormInput email;
  final PasswordFormInput password;
  final PasswordFormInput confirmPassword;
  final BoolFormInput obscurePassword;

  const SignUpFormEntity({
    this.name = const GenericFormInput.dirty(value: ''),
    this.phone = const PhoneNumberFormInput.dirty(''),
    this.email = const EmailFormInput.dirty(''),
    this.password = const PasswordFormInput.dirty(''),
    this.confirmPassword = const PasswordFormInput.dirty(''),
    this.obscurePassword = const BoolFormInput.dirty(true),
  });

  /// إنشاء نسخة جديدة مع تغيير بعض الحقول
  SignUpFormEntity copyWith({
    GenericFormInput? name,
    PhoneNumberFormInput? phone,
    EmailFormInput? email,
    PasswordFormInput? password,
    PasswordFormInput? confirmPassword,
    BoolFormInput? obscurePassword,
  }) {
    return SignUpFormEntity(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      obscurePassword: obscurePassword ?? this.obscurePassword,
    );
  }

  /// التحقق من صحة النموذج كاملاً
  bool get isValid {
    return Formz.validate([
      name,
      email,
      phone,
      password,
      ConfirmPasswordFormInput.dirty(
        value: confirmPassword.value,
        password: password.value,
      ),
    ]);
  }

  /// الحصول على حالة الإرسال (success/failure)
  FormzSubmissionStatus get submissionStatus {
    return isValid
        ? FormzSubmissionStatus.success
        : FormzSubmissionStatus.failure;
  }

  /// إنشاء [SignUpReqEntity] من الحقول الحالية
  SignUpReqEntity toRequestEntity() {
    return SignUpReqEntity(
      name: name.value,
      phone: phone.value,
      email: email.value,
      password: password.value,
    );
  }
}
