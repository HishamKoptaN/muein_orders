import 'package:flutter/foundation.dart';
import 'package:form_inputs/form_inputs.dart';

import '../../../../../core/all_imports.dart';
import '../../../../../core/routing/navigation_service.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../home/present/home_view.dart';
import '../bloc/sign_in_bloc.dart';
import 'widgets/sign_in_actions.dart';
import 'widgets/sign_in_background.dart';
import 'widgets/sign_in_form.dart';
import 'widgets/sign_in_header.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const String routeName = 'sign-in';
  @override
  Widget build(BuildContext context) {
    return DebugAutoFill(
      child: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              if (context.mounted) {
                NavigationService.navigateAndRemoveUntil(
                  context: context,
                  routeName: HomeView.routeName,
                );
              }
            },
            failure: (failure) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(
                SnackBar(
                  content: Text(
                    failure,
                  ),
                ),
              );
            },
          );
        },
        builder: (context, state) {
          state.whenOrNull(
            loading: () => const Center(
              child: CustomCircularProgress(),
            ),
          );
          return const Scaffold(
            backgroundColor: Color(0xFF003A46),
            body: SignInBackground(child: _SignInBody()),
          );
        },
      ),
    );
  }
}

class _SignInBody extends StatelessWidget {
  const _SignInBody();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 375),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.5),
            child: BlocBuilder<SignInBloc, SignInState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (
                    email,
                    password,
                    obscurePassword,
                    formzSubmissionStatus,
                  ) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SignInHeader(),
                        const SizedBox(height: 26),
                        SignInForm(
                          email: email,
                          password: password,
                          obscurePassword: obscurePassword,
                          formzSubmissionStatus: formzSubmissionStatus,
                        ),
                        const SizedBox(height: 24),
                        SignInActions(
                          formzSubmissionStatus: formzSubmissionStatus,
                        ),
                        const SizedBox(height: 24),
                      ],
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

    // Reset tap count if more than 1 second has passed since last tap
    if (_lastTap != null &&
        now.difference(_lastTap!) > const Duration(seconds: 1)) {
      _tapCount = 0;
    }

    _lastTap = now;
    _tapCount++;

    // Debug output to verify tap counting
    debugPrint('Tap detected! Count: $_tapCount');

    if (_tapCount >= 3) {
      debugPrint('✅ Triple tap detected! Running login scenario...');
      _tapCount = 0;
      _runLoginScenario(context);
    }
  }

  void _runLoginScenario(BuildContext context) {
    debugPrint('🚀 Running Debug AutoFill Login with BLoC...');
    context.read<SignInBloc>()
      ..add(
        const SignInEvent.dataChanged(
          email: EmailInput.dirty('msaad@gmail.com'),
        ),
      )
      ..add(
        const SignInEvent.dataChanged(
          password: PasswordInput.dirty('password'),
        ),
      )
      ..add(const SignInEvent.signInWithCredentialsPressed());
    debugPrint('✅ AutoFill Login Done (via BLoC)');
  }

  @override
  Widget build(BuildContext context) {
    if (kReleaseMode) return widget.child;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => _handleTap(context), // 👈 3 ضغطات سريعة
      child: widget.child,
    );
  }
}
