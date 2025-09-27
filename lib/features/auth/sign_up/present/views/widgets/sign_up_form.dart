import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';

import '../../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../../l10n/app_localizations.dart';
import '../../bloc/sign_up_bloc.dart';

class SignUpForm extends StatelessWidget {
  final GenericFormzInput name;
  final PhoneNumberInput phone;
  final EmailInput email;
  final PasswordInput password;
  final PasswordInput confirmPassword;
  final ConfirmPasswordInput confirmPasswordInput;

  final bool obscurePassword;

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
    final t = AppLocalizations.of(context);
    return Column(
      children: [
        // Name Field
        CustomTextFormField(
          key: const Key('name_field'),
          initialValue: name.value,
          hintText: t.name,
          prefixIcon: const Icon(Icons.person_outline),
          onChanged: (v) => context.read<SignUpBloc>().add(
                SignUpEvent.dataChanged(name: GenericFormzInput.dirty(v)),
              ),
          validator: (value) =>
              value?.isNotEmpty == true ? null : 'الاسم مطلوب',
        ),
        const SizedBox(height: 8),
        // Email Field
        CustomTextFormField(
          key: const Key('email_field'),
          initialValue: email.value,
          hintText: t.emailHint,
          prefixIcon: const Icon(Icons.email_outlined),
          keyboardType: TextInputType.emailAddress,
          onChanged: (v) => context.read<SignUpBloc>().add(
                SignUpEvent.dataChanged(email: EmailInput.dirty(v)),
              ),
          validator: (value) => EmailInput.dirty(value ?? '').error?.message,
        ),
        const SizedBox(height: 8),
        // Phone Field
        CustomTextFormField(
          key: const Key('phone_field'),
          initialValue: phone.value,
          hintText: t.phone,
          prefixIcon: const Icon(Icons.phone_outlined),
          onChanged: (v) => context.read<SignUpBloc>().add(
                SignUpEvent.dataChanged(phone: PhoneNumberInput.dirty(v)),
              ),
        ),
        const SizedBox(height: 8),
        CustomTextFormField(
          key: const Key('password_field'),
          hintText: 'كلمة المرور',
          initialValue: password.value,
          prefixIcon: const Icon(Icons.lock_outline),
          isPassword: true,
          obscureText: obscurePassword,
          showPasswordToggle: true,
          onChanged: (v) => context.read<SignUpBloc>().add(
                SignUpEvent.dataChanged(
                  password: PasswordInput.dirty(
                    v,
                  ),
                ),
              ),
        ),
        // Confirm Password Field
        CustomTextFormField(
          key: const Key('confirm_password_field'),
          initialValue: confirmPassword.value,
          hintText: 'تأكيد كلمة المرور',
          prefixIcon: const Icon(Icons.lock_outline),
          isPassword: true,
          obscureText: obscurePassword,
          showPasswordToggle: true,
          onChanged: (v) => context.read<SignUpBloc>().add(
                SignUpEvent.dataChanged(
                  confirmPassword: PasswordInput.dirty(
                    v,
                  ),
                ),
              ),
        ),
      ],
    );
  }
}
