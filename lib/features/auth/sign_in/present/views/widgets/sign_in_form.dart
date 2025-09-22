import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs/email_input.dart';
import 'package:form_inputs/form_inputs/generic_formz_input.dart';
import 'package:form_inputs/form_inputs/password_input.dart';
import 'package:formz/formz.dart';

import '../../../../../../core/routing/navigation_service.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../../l10n/app_localizations.dart';
import '../../../../forgot_password/present/views/forgot_pass_view.dart';
import '../../bloc/sign_in_bloc.dart';

class SignInForm extends StatelessWidget {
  final EmailInput email;
  final PasswordInput password;
  final GenericFormzInput obscurePassword;
  final FormzSubmissionStatus formzSubmissionStatus;

  const SignInForm({
    super.key,
    required this.email,
    required this.password,
    required this.obscurePassword,
    required this.formzSubmissionStatus,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) => Form(
        child: Column(
          children: [
            // Email Field
            CustomTextFormField(
              key: const Key('email_field'),
              initialValue: email.value,
              hintText: t.emailHint,
              prefixIcon: const Icon(Icons.email_outlined),
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) => context.read<SignInBloc>().add(
                    SignInEvent.dataChanged(email: EmailInput.dirty(value)),
                  ),
            ),
            const SizedBox(height: 16),
            // Password Field
            CustomTextFormField(
              key: const Key('password_field'),
              initialValue: password.value,
              hintText: t.password,
              prefixIcon: const Icon(Icons.lock_outline),
              isPassword: true,
              obscureText: obscurePassword.value ?? true,
              showPasswordToggle: true,
              onToggleObscure: () => context.read<SignInBloc>().add(
                    SignInEvent.dataChanged(
                      obscurePassword: GenericFormzInput.dirty(
                        obscurePassword.value,
                      ),
                    ),
                  ),
              onChanged: (v) => context.read<SignInBloc>().add(
                    SignInEvent.dataChanged(
                      password: PasswordInput.dirty(
                        v,
                      ),
                    ),
                  ),
              // validator: (value) => state.password.error?.message,
            ),
            const SizedBox(height: 16),
            // Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    NavigationService.navigateTo(
                      context: context,
                      routeName: ForgotPassView.routeName,
                    );
                  },
                  child: Text(
                    t.forgotPassword,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
