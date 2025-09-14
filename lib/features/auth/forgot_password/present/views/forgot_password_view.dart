import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../sign_in/present/bloc/sign_in_bloc.dart';

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
          create: (_) => getIt<SignInBloc>(),
          child: BlocConsumer<SignInBloc, SignInState>(
            listener: (context, state) {
              // state.whenOrNull(
              //   linkSent: () async {
              //     ScaffoldMessenger.of(context).showSnackBar(
              //       const SnackBar(
              //           content:
              //               Text('تم إرسال التعليمات إلى بريدك الإلكتروني')),
              //     );
              //     // Show confirmation dialog before leaving the screen
              //     await showDialog(
              //       context: context,
              //       builder: (ctx) => AlertDialog(
              //         key: const Key('reset_dialog'),
              //         title: const Text('إعادة ضبط كلمة المرور'),
              //         content: const Text(
              //             'تم إرسال رابط ضبط كلمة المرور إلى بريدك الإلكتروني'),
              //         actions: [
              //           TextButton(
              //             key: const Key('reset_dialog_ok'),
              //             onPressed: () => Navigator.of(ctx).pop(),
              //             child: const Text('حسناً'),
              //           ),
              //         ],
              //       ),
              //     );
              //     if (mounted) {
              //       Navigator.of(context).pop();
              //     }
              //   },
              //   failure: (apiError) {
              //     final message = apiError.error ?? 'حدث خطأ ما';
              //     ScaffoldMessenger.of(context).showSnackBar(
              //       SnackBar(content: Text(message)),
              //     );
              //   },
              // );
            },
            builder: (context, state) {
              final isLoading = state.maybeWhen(
                loading: () => true,
                orElse: () => false,
              );
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
                          if (val == null || val.isEmpty)
                            return 'الرجاء إدخال البريد الإلكتروني';
                          if (!val.contains('@'))
                            return 'بريد إلكتروني غير صالح';
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
                                    // update email then fire reset event
                                    // context.read<SignInBloc>().add(
                                    //       SignInEvent.updateData(email: email),
                                    //     );
                                    // context.read<SignInBloc>().add(
                                    //       SignInEvent.resetPass(),
                                    //     );
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
