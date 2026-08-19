import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../../../../l10n/app_localizations.dart';
import '../../bloc/sign_up_bloc.dart';

class SignUpForm extends StatelessWidget {
  final GenericFormInput name;
  final PhoneNumberFormInput phone;
  final EmailFormInput email;
  final PasswordFormInput password;
  final PasswordFormInput confirmPassword;
  final ConfirmPasswordFormInput confirmPasswordInput;

  final BoolFormInput obscurePassword;

  const SignUpForm({
    super.key,
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.confirmPasswordInput,
    required this.obscurePassword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        CustomAuthTextFormField(
          key: const Key('name_field'),
          initialValue: name.value,
          hintText: 'الاسم',
          prefixIcon: const Icon(Icons.person_outline, color: Colors.white),
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              SignUpEvent.dataChanged(name: .dirty(value: v)),
            );
          },
          validator: (value) =>
              value?.isNotEmpty == true ? null : 'الاسم مطلوب',
        ),
        CustomAuthTextFormField(
          key: const Key('email_field'),
          initialValue: email.value,
          hintText: 'البريد الإلكتروني',
          prefixIcon: const Icon(Icons.email_outlined, color: Colors.white),
          keyboardType: TextInputType.emailAddress,
          onChanged: (v) => getIt<SignUpBloc>().add(
            SignUpEvent.dataChanged(email: .dirty(v)),
          ),
          // validator: (value) {
          //   return .dirty(value ?? '').error?.message;
          // },
        ),
        CustomAuthTextFormField(
          key: const Key('phone_field'),
          initialValue: phone.value,
          hintText: 'رقم الهاتف',
          prefixIcon: const Icon(Icons.phone_outlined, color: Colors.white),
          onChanged: (v) => getIt<SignUpBloc>().add(
            SignUpEvent.dataChanged(phone: .dirty(v)),
          ),
        ),
        CustomAuthTextFormField(
          key: const Key('password_field'),
          hintText: 'كلمة المرور',
          initialValue: password.value,
          prefixIcon: const Icon(Icons.lock_outline, color: Colors.white),
          isPassword: true,
          obscureText: obscurePassword.value,
          showPasswordToggle: true,
          onChanged: (v) => getIt<SignUpBloc>().add(
            SignUpEvent.dataChanged(password: .dirty(v)),
          ),
        ),
        CustomAuthTextFormField(
          key: const Key('confirm_password_field'),
          initialValue: confirmPassword.value,
          hintText: 'تأكيد كلمة المرور',
          prefixIcon: const Icon(Icons.lock_outline, color: Colors.white),
          isPassword: true,
          obscureText: obscurePassword.value,
          showPasswordToggle: true,
          onChanged: (v) => getIt<SignUpBloc>().add(
            SignUpEvent.dataChanged(confirmPassword: .dirty(v)),
          ),
          validator: (value) =>
              value == password.value ? null : 'كلمتا المرور غير متطابقتين',
        ),
      ],
    );
  }
}
