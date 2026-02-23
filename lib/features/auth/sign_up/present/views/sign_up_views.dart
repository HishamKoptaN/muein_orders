import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/routing/navigation_service.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../../instructions/present/view/instructions_view.dart';
import '../../../sign_in/present/views/widgets/sign_in_background.dart';
import '../bloc/sign_up_bloc.dart';
import 'widgets/sign_up_actions.dart';
import 'widgets/sign_up_form.dart';
import 'widgets/sign_up_header.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = 'sign-up';

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return DebugAutoFill(
      child: Scaffold(
        backgroundColor: const Color(0xFF003A46),
        body: BlocConsumer<SignUpBloc, SignUpState>(
          listener: (context, state) async {
            await state.whenOrNull(
              success: () {
                NavigationService.navigateAndRemoveUntil(
                  context: context,
                  routeName: InstructionsView.routeName,
                );
              },
              failure: (failure) {
                AppSnackBar.show(
                  context: context,
                  title: 'Error',
                  message: failure,
                  type: AppSnackBarType.error,
                );
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loaded:
                  (
                    name,
                    email,
                    phone,
                    password,
                    confirmPassword,
                    confirmPasswordInput,
                    obscurePassword,
                    formzSubmissionStatus,
                  ) {
                    return LayoutBuilder(
                      builder: (context, constraints) {
                        return SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constraints.maxHeight,
                              minWidth: constraints.maxWidth,
                            ),
                            child: IntrinsicHeight(
                              child: SignInBackground(
                                child: _SignUpBody(
                                  name: name,
                                  phone: phone,
                                  email: email,
                                  password: password,
                                  confirmPassword: confirmPassword,
                                  confirmPasswordInput: confirmPasswordInput,
                                  obscurePassword: obscurePassword,
                                  formzSubmissionStatus: formzSubmissionStatus,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
              loading: () => const Center(child: CustomCircularProgress()),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}

class _SignUpBody extends StatelessWidget {
  const _SignUpBody({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.confirmPasswordInput,
    required this.obscurePassword,
    required this.formzSubmissionStatus,
  });

  final GenericFormzInput name;
  final PhoneNumberInput phone;
  final EmailInput email;
  final PasswordInput password;
  final PasswordInput confirmPassword;
  final ConfirmPasswordInput confirmPasswordInput;
  final bool obscurePassword;
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SignUpHeader(),
            const SizedBox(height: 26),
            SignUpForm(
              name: name,
              email: email,
              phone: phone,
              password: password,
              confirmPassword: confirmPassword,
              obscurePassword: obscurePassword,
              confirmPasswordInput: confirmPasswordInput,
            ),
            const SizedBox(height: 24),
            SignUpActions(formzSubmissionStatus: formzSubmissionStatus),
            const SizedBox(height: 24),
          ],
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
    debugPrint('🚀 Running Debug AutoFill Login with BLoC...');
    getIt<SignUpBloc>().add(
      const SignUpEvent.dataChanged(
        email: EmailInput.dirty('heshamkoptan@gmail.com'),
        name: GenericFormzInput.dirty('hisham'),
        phone: PhoneNumberInput.dirty('4567894566123'),
        password: PasswordInput.dirty('password'),
        confirmPassword: PasswordInput.dirty('Password123@'),
      ),
    )
    // ..add(const SignUpEvent.signUp())
    ;
    debugPrint('✅ AutoFill Login Done (via BLoC)');
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
