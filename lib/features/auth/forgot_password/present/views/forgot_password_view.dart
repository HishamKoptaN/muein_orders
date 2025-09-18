import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../l10n/app_localizations.dart';
import '../bloc/forgot_pass_bloc.dart';

class ForgotPasswordView extends StatefulWidget {
  static const String routeName = 'forgot-password';
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: Text(t.forgotPassword)),
        body: BlocProvider(
          create: (_) => getIt<ForgotPasswordBloc>(),
          child: BlocConsumer<ForgotPasswordBloc, ForgotPassState>(
            listener: (context, state) {
              state.whenOrNull(
                success: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        t.passwordResetEmailSentTo(_emailController.text),
                      ),
                    ),
                  );
                  Navigator.of(context).pop();
                },
                failure: (error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(error)),
                  );
                },
              );
            },
            builder: (context, state) {
              state.whenOrNull(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 24),
                      Text(
                        t.emailHint,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      CustomTextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        labelText: t.emailHint,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return t.required;
                          }
                          if (!val.contains('@')) {
                            return t.invalidEmail;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: 332,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: state is ForgotPassSuccess
                              ? () {
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    final email = _emailController.text.trim();
                                    context.read<ForgotPasswordBloc>().add(
                                          ForgotPassEvent.sendPassResetEmail(
                                            email: email,
                                          ),
                                        );
                                  }
                                }
                              : null,
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.resolveWith(
                              (states) => const Color(0xFF83BEA8),
                            ),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            elevation: WidgetStateProperty.all(0),
                          ),
                          child: state is ForgotPassLoading
                              ? const CustomCircularProgress()
                              : Text(
                                  t.follow,
                                  style: TextStyle(
                                    fontFamily: 'Almarai',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: _formKey.currentState?.validate() ??
                                            false
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
