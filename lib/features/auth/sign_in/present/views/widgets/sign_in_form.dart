import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs/email_input.dart';
import 'package:form_inputs/form_inputs/generic_formz_input.dart';
import 'package:form_inputs/form_inputs/password_input.dart';
import 'package:formz/formz.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/routing/navigation_service.dart';
import '../../../../../../core/widgets/forms/auth_text_form_field.dart';
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
    final t = AppLocalizations.of(context);
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) => Form(
        child: Column(
          children: [
            CustomAuthTextFormField(
              key: const Key('email_field'),
              initialValue: email.value,
              hintText: t.emailHint,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) => getIt<SignInBloc>().add(
                SignInEvent.dataChanged(email: EmailInput.dirty(value)),
              ),
            ),
            SizedBox(height: 10.h),
            CustomAuthTextFormField(
              key: const Key('password_field'),
              initialValue: password.value,
              hintText: t.password,
              isPassword: true,
              obscureText: obscurePassword.value ?? true,
              showPasswordToggle: true,
              onToggleObscure: () => getIt<SignInBloc>().add(
                SignInEvent.dataChanged(
                  obscurePassword: GenericFormzInput.dirty(
                    obscurePassword.value ?? true,
                  ),
                ),
              ),
              onChanged: (v) => getIt<SignInBloc>().add(
                SignInEvent.dataChanged(password: PasswordInput.dirty(v)),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  (obscurePassword.value ?? false)
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: Colors.white.withOpacity(0.57),
                  size: 24.sp,
                ),
                onPressed: () {
                  getIt<SignInBloc>().add(
                    SignInEvent.dataChanged(
                      obscurePassword: GenericFormzInput.dirty(
                        obscurePassword.value ?? true,
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    NavigationService.pushNamed(
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
