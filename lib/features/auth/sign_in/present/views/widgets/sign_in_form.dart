import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs/email_input.dart';
import 'package:form_inputs/form_inputs/generic_formz_input.dart';
import 'package:form_inputs/form_inputs/password_input.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/extensions/app_localizations_extension.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../../l10n/app_localizations.dart';
import '../../../domain/repo/sign_in_repo.dart';
import '../../bloc/sign_in_bloc.dart';

class SignInForm extends StatefulWidget {
  final EmailInput email;
  final PasswordInput password;
  final GenericFormzInput obscurePassword;
  final GenericFormzInput rememberMe;
  final FormzSubmissionStatus formzSubmissionStatus;

  const SignInForm({
    super.key,
    required this.email,
    required this.password,
    required this.obscurePassword,
    required this.rememberMe,
    required this.formzSubmissionStatus,
  });

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  void initState() {
    super.initState();
    _loadRemember();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _loadRemember() async {
    final repository = getIt<SignInRepo>();
    final savedData = await repository.getSavedCredentials();
    if (savedData != null && mounted) {
      setState(
        () {
          if (widget.rememberMe.value) {
            context.read<SignInBloc>().add(
                  SignInEvent.dataChanged(
                    email: EmailInput.dirty(savedData.email),
                    password: PasswordInput.dirty(savedData.password),
                    rememberMe:
                        GenericFormzInput.dirty(widget.rememberMe.value),
                    obscurePassword:
                        GenericFormzInput.dirty(widget.obscurePassword.value),
                  ),
                );
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) => Form(
        child: Column(
          children: [
            // Email Field
            CustomTextFormField(
              initialValue: widget.email.value,
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
              initialValue: widget.password.value,
              hintText: t.password,
              prefixIcon: const Icon(Icons.lock_outline),
              isPassword: true,
              obscureText: widget.obscurePassword.value ?? true,
              showPasswordToggle: true,
              onToggleObscure: () => context.read<SignInBloc>().add(
                    SignInEvent.dataChanged(
                      obscurePassword: GenericFormzInput.dirty(
                        widget.obscurePassword.value,
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
                // Remember Me Checkbox
                Row(
                  children: [
                    Checkbox(
                      value: widget.rememberMe.value ?? false,
                      onChanged: (value) => context.read<SignInBloc>().add(
                            SignInEvent.dataChanged(
                              rememberMe:
                                  GenericFormzInput.dirty(value ?? false),
                            ),
                          ),
                    ),
                    Text(
                      t.rememberMe,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
                // Forgot Password
                TextButton(
                  onPressed: () => context.go('/forgot-password'),
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
