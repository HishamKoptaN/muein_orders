import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/di/get_it_instance.dart';
import '../bloc/forgot_password_bloc.dart';
import '../bloc/forgot_password_event.dart';
import '../bloc/forgot_password_state.dart';

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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('هل نسيت كلمة المرور؟')),
        body: BlocProvider(
          create: (_) => getIt<ForgotPasswordBloc>(),
          child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
            listener: (context, state) {
              state.whenOrNull(
                success: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content:
                            Text('تم إرسال التعليمات إلى بريدك الإلكتروني')),
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
              final isLoading = state is ForgotPasswordLoading;
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 24),
                      const Text(
                        'أدخل بريدك الإلكتروني لإرسال رابط استعادة كلمة المرور',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'البريد الإلكتروني',
                          border: OutlineInputBorder(),
                        ),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'الرجاء إدخال البريد الإلكتروني';
                          }
                          if (!val.contains('@')) {
                            return 'بريد إلكتروني غير صالح';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        height: 48,
                        child: ElevatedButton(
                          onPressed: isLoading
                              ? null
                              : () {
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    final email = _emailController.text.trim();
                                    context.read<ForgotPasswordBloc>().add(
                                          ForgotPasswordEvent
                                              .sendPasswordResetEmail(email),
                                        );
                                  }
                                },
                          child: isLoading
                              ? const SizedBox(
                                  width: 22,
                                  height: 22,
                                  child:
                                      CircularProgressIndicator(strokeWidth: 2),
                                )
                              : const Text('إرسال'),
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
