import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs/email_input.dart';
import 'package:form_inputs/form_inputs/generic_formz_input.dart';
import 'package:form_inputs/form_inputs/password_input.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/routing/navigation_service.dart';
import '../../../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../../../l10n/app_localizations.dart';
import '../../../../forgot_password/present/views/forgot_pass_view.dart';
import '../../bloc/sign_in_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return state.maybeMap(
          loaded: (loaded) => Form(
            // key: ObjectKey(loaded),
            child: Column(
              children: [
                CustomAuthTextFormField(
                  key: const Key('email_field'),
                  initialValue: loaded.email.value,
                  hintText: 'البريد الإلكتروني',
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) => getIt<SignInBloc>().add(
                    SignInEvent.dataChanged(email: EmailInput.dirty(value)),
                  ),
                ),
                SizedBox(height: 10.h),
                CustomAuthTextFormField(
                  key: const Key('password_field'),
                  hintText: 'كلمة المرور',
                  isPassword: true,
                  obscureText: loaded.obscurePassword.value ?? true,
                  showPasswordToggle: true,
                  onChanged: (v) => getIt<SignInBloc>().add(
                    SignInEvent.dataChanged(password: PasswordInput.dirty(v)),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      (loaded.obscurePassword.value ?? false)
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.white.withOpacity(0.57),
                      size: 24.sp,
                    ),
                    onPressed: () {
                      getIt<SignInBloc>().add(
                        SignInEvent.dataChanged(
                          obscurePassword: GenericFormzInput.dirty(
                            !(loaded.obscurePassword.value ?? true),
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
                      child: const TrText(
                        'نسيت كلمة المرور',
                        style: TextStyle(
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
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
