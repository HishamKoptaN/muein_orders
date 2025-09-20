import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/app_snackbar.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../../../onboarding/present/pages/onboarding_view.dart';
import '../../sign_in/present/views/widgets/sign_in_background.dart';
import 'bloc/sign_up_bloc.dart';
import 'views/widgets/sign_in_actions.dart';
import 'views/widgets/sign_up_form.dart';
import 'views/widgets/sign_up_header.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = 'sign-up';

  @override
  Widget build(BuildContext context) {
    return DebugIntegrationRunner(
      child: Scaffold(
        backgroundColor: const Color(0xFF003A46),
        body: BlocConsumer<SignUpBloc, SignUpState>(
          listener: (context, state) async {
            await state.whenOrNull(
              failure: (failure) {
                AppSnackBar.show(
                  context: context,
                  title: 'Error',
                  message: failure,
                  type: AppSnackBarType.error,
                );
              },
              success: () {
                debugPrint(
                  '[Navigation] Navigating to ${OnboardingView.routeName}',
                );
                // Use GoRouter to navigate and remove all previous routes
                context.goNamed(OnboardingView.routeName);
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (
                name,
                email,
                phone,
                password,
                confirmPassword,
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
              loading: () => const Center(
                child: CustomCircularProgress(),
              ),
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
    required this.obscurePassword,
    required this.formzSubmissionStatus,
  });

  final GenericFormzInput name;
  final PhoneNumberInput phone;
  final EmailInput email;
  final PasswordInput password;
  final ConfirmPasswordInput confirmPassword;
  final GenericFormzInput obscurePassword;
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const SizedBox(height: 50),
            const SignUpHeader(),
            const SizedBox(height: 26),
            SignUpForm(
              name: name,
              email: email,
              phone: phone,
              password: password,
              confirmPassword: confirmPassword,
              obscurePassword: obscurePassword,
            ),
            const SizedBox(height: 24),
            SignUpActions(
              formzSubmissionStatus: formzSubmissionStatus,
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class DebugIntegrationRunner extends StatefulWidget {
  final Widget child;

  const DebugIntegrationRunner({super.key, required this.child});

  @override
  State<DebugIntegrationRunner> createState() => _DebugIntegrationRunnerState();
}

class _DebugIntegrationRunnerState extends State<DebugIntegrationRunner> {
  int _tapCount = 0;
  DateTime? _lastTap;

  void _handleTap() {
    final now = DateTime.now();
    if (_lastTap == null ||
        now.difference(_lastTap!) > const Duration(seconds: 1)) {
      _tapCount = 0;
    }
    _lastTap = now;
    _tapCount++;

    if (_tapCount == 3) {
      _tapCount = 0;
      _runSignUpScenario();
    }
  }

  Future<void> _runSignUpScenario() async {
    debugPrint('🚀 Running Sign Up Scenario...');

    try {
      // نستخدم GlobalKey علشان نلاقي الـ form fields
      final nameField = findInputByKey('name_field');
      final emailField = findInputByKey('email_field');
      final phoneField = findInputByKey('phone_field');
      final passwordField = findInputByKey('password_field');
      final confirmPasswordField = findInputByKey('confirm_password_field');
      final signUpButton = findButtonByKey('signUp_button');

      nameField?.controller?.text = 'Attach User';
      emailField?.controller?.text = 'attach@example.com';
      phoneField?.controller?.text = '0100000000';
      passwordField?.controller?.text = 'P@ssw0rd123';
      confirmPasswordField?.controller?.text = 'P@ssw0rd123';

      // Simulate pressing Sign Up button
      signUpButton?.onPressed?.call();

      debugPrint('✅ Sign Up Scenario finished successfully');
    } catch (e, st) {
      debugPrint('❌ Error in scenario: $e\n$st');
    }
  }

  /// Helper: يبحث عن TextFormField/CustomTextFormField بالـ Key
  _InputElement? findInputByKey(String key) {
    final element = findElementByKey(key);
    if (element == null) return null;

    TextEditingController? controller;

    if (element.widget is TextFormField) {
      controller = (element.widget as TextFormField).controller;
    } else if (element.widget is TextField) {
      controller = (element.widget as TextField).controller;
    } else {
      debugPrint("⚠️ Widget with key '$key' is not a TextField/TextFormField");
    }

    return _InputElement(controller);
  }

  /// Helper: يبحث عن ElevatedButton بالـ Key
  ElevatedButton? findButtonByKey(String key) {
    final element = findElementByKey(key);
    if (element == null) return null;

    if (element.widget is ElevatedButton) {
      return element.widget as ElevatedButton;
    }
    debugPrint("⚠️ Widget with key '$key' is not an ElevatedButton");
    return null;
  }

  /// Helper عام
  Element? findElementByKey(String valueKey) {
    Element? result;
    void finder(Element element) {
      if (element.widget.key == Key(valueKey)) {
        result = element;
      }
      element.visitChildren(finder);
    }

    WidgetsBinding.instance.rootElement?.visitChildren(finder);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    if (kReleaseMode) return widget.child; // ممنوع في الإنتاج
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: _handleTap,
      child: widget.child,
    );
  }
}

class _InputElement {
  final TextEditingController? controller;
  _InputElement(this.controller);
}
