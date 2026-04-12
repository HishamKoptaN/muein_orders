import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

import 'signup_req_entity.dart';

/// كيان يمثل حالة نموذج التسجيل
/// يحتوي على جميع الحقول المُدخلة والقيم المُشتقة منها
class SignUpFormEntity {
  final GenericFormzInput name;
  final PhoneNumberInput phone;
  final EmailInput email;
  final PasswordInput password;
  final PasswordInput confirmPassword;
  final bool obscurePassword;

  const SignUpFormEntity({
    this.name = const GenericFormzInput.dirty(''),
    this.phone = const PhoneNumberInput.dirty(''),
    this.email = const EmailInput.dirty(''),
    this.password = const PasswordInput.dirty(''),
    this.confirmPassword = const PasswordInput.dirty(''),
    this.obscurePassword = true,
  });

  /// إنشاء نسخة جديدة مع تغيير بعض الحقول
  SignUpFormEntity copyWith({
    GenericFormzInput? name,
    PhoneNumberInput? phone,
    EmailInput? email,
    PasswordInput? password,
    PasswordInput? confirmPassword,
    bool? obscurePassword,
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
      ConfirmPasswordInput.dirty(
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
