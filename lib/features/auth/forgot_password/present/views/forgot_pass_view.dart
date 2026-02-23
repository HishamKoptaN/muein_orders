import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:form_inputs/form_inputs/email_input.dart';
import 'package:formz/formz.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../../l10n/app_localizations.dart';
import '../bloc/forgot_pass_bloc.dart';

class ForgotPassView extends StatelessWidget {
  static const String routeName = 'forgot-password';
  const ForgotPassView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return DebugAutoFill(
      child: CustomScaffold(
        backgroundColor: const Color(0xFF003A46),
        appBar: CustomAppBar(title: t.forgotPassword),
        body: BlocConsumer<ForgotPassBloc, ForgotPassState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                context.showSuccessSnackBar(
                  title: t.success,
                  message: t.apPasswordResetLinkHasBeenSentToYourEmail,
                );
              },
              failure: (error) {
                context.showErrorSnackBar(title: t.error, message: error);
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (email, formzSubmissionStatus) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      CustomAuthTextFormField(
                        initialValue: email.value,
                        keyboardType: TextInputType.emailAddress,
                        labelText: t.emailHint,
                        onChanged: (value) {
                          getIt<ForgotPassBloc>().add(
                            ForgotPassEvent.dataChanged(
                              email: EmailInput.dirty(value),
                            ),
                          );
                        },
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
                      Row(
                        children: [
                          const SizedBox(width: 10),
                          const Text(
                            '*',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            t.aLinkWillBeSentToYouToResetYourPassword,
                            style: const TextStyle(
                              fontFamily: 'Almarai',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              height: 3,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      CustomBtnWidget(
                        text: t.send,
                        formzSubmissionStatus: formzSubmissionStatus,
                        onPressed: () {
                          if (formzSubmissionStatus.isSuccess) {
                            getIt<ForgotPassBloc>().add(
                              const ForgotPassEvent.sendPassResetEmail(),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}

class DebugAutoFill extends StatefulWidget {
  final Widget child;
  const DebugAutoFill({super.key, required this.child});

  @override
  State<DebugAutoFill> createState() => _DebugAutoFillState();
}

class _DebugAutoFillState extends State<DebugAutoFill> {
  int _tapCount = 0;
  DateTime? _lastTap;

  void _handleTap(BuildContext context) {
    final now = DateTime.now();

    if (_lastTap != null &&
        now.difference(_lastTap!) > const Duration(seconds: 1)) {
      _tapCount = 0;
    }

    _lastTap = now;
    _tapCount++;
    debugPrint('Tap detected! Count: $_tapCount');

    if (_tapCount >= 3) {
      debugPrint('✅ Triple tap detected! Running login scenario...');
      _tapCount = 0;
      _runLoginScenario(context);
    }
  }

  void _runLoginScenario(BuildContext context) {
    debugPrint('🚀 Running Debug Autofill Login with BLoC...');

    const testEmails = [
      'heshamkoptan@gmail.com',
      'heshamkoptan@gmail.com',
      'heshamkoptan@gmail.com',
    ];

    final testEmail = testEmails[0];

    getIt<ForgotPassBloc>()
      ..add(ForgotPassEvent.dataChanged(email: EmailInput.dirty(testEmail)))
      ..add(const ForgotPassEvent.sendPassResetEmail());

    debugPrint('✅ Autofill Login Done (via BLoC)');
    debugPrint('🔍 Check your email at: $testEmail');
    debugPrint('⚠️ Make sure this email is authorized in Firebase Console');
  }

  @override
  Widget build(BuildContext context) {
    if (kReleaseMode) return widget.child;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => _handleTap(context),
      child: widget.child,
    );
  }
}
