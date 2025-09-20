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
  final ConfirmPasswordInput confirmPassword;
  final GenericFormzInput obscurePassword;

  const SignUpForm({
    super.key,
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.obscurePassword,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) => Form(
        child: Column(
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
              validator: (value) =>
                  EmailInput.dirty(value ?? '').error?.message,
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
              keyboardType: TextInputType.phone,
              validator: (value) =>
                  PhoneNumberInput.dirty(value ?? '').error?.message,
            ),
            const SizedBox(height: 8),
            // Password Field
            CustomTextFormField(
              key: const Key('password_field'),
              initialValue: password.value,
              hintText: t.password,
              prefixIcon: const Icon(Icons.lock_outline),
              isPassword: true,
              obscureText: obscurePassword.value ?? true,
              showPasswordToggle: true,
              onToggleObscure: () => context.read<SignUpBloc>().add(
                    SignUpEvent.dataChanged(
                      obscurePassword: GenericFormzInput.dirty(
                        obscurePassword.value,
                      ),
                    ),
                  ),
              onChanged: (v) => context.read<SignUpBloc>().add(
                    SignUpEvent.dataChanged(
                      password: PasswordInput.dirty(
                        v,
                      ),
                    ),
                  ),
              validator: (value) =>
                  PasswordInput.dirty(value ?? '').error?.message,
            ),
            const SizedBox(height: 8),
            // Confirm Password Field
            CustomTextFormField(
              key: const Key('confirm_password_field'),
              initialValue: confirmPassword.value,
              hintText: t.confirmPasswordHint,
              prefixIcon: const Icon(Icons.lock_outline),
              isPassword: true,
              obscureText: obscurePassword.value ?? true,
              showPasswordToggle: true,
              onToggleObscure: () => context.read<SignUpBloc>().add(
                    SignUpEvent.dataChanged(
                      obscurePassword: GenericFormzInput.dirty(
                        obscurePassword.value,
                      ),
                    ),
                  ),
              onChanged: (v) => context.read<SignUpBloc>().add(
                    SignUpEvent.dataChanged(
                      confirmPassword: ConfirmPasswordInput.dirty(
                        value: v,
                        password: password.value,
                      ),
                    ),
                  ),
              validator: (value) =>
                  value == password.value ? null : 'كلمات المرور غير متطابقة',
            ),
          ],
        ),
      ),
    );
  }
}
