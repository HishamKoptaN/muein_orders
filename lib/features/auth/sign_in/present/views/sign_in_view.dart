import 'package:go_router/go_router.dart';

import '../../../../../core/all_imports.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../onboarding/present/pages/onboarding_view.dart';
import '../bloc/sign_in_bloc.dart';
import 'widgets/sign_in_actions.dart';
import 'widgets/sign_in_background.dart';
import 'widgets/sign_in_form.dart';
import 'widgets/sign_in_header.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const String routeName = 'SignInView';
  @override
  Widget build(BuildContext context) => BlocProvider<SignInBloc>(
        create: (context) => getIt<SignInBloc>(),
        child: BlocConsumer<SignInBloc, SignInState>(
          listener: (context, state) {
            state.whenOrNull(
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
              success: () {
                context.goNamed(
                  OnboardingView.routeName,
                );
              },
            );
          },
          builder: (context, state) {
            state.whenOrNull(
              loading: () => const Center(child: CustomCircularProgress()),
            );

            return const Scaffold(
              backgroundColor: Color(0xFF003A46),
              body: SignInBackground(child: _SignInBody()),
            );
          },
        ),
      );
}

class _SignInBody extends StatelessWidget {
  const _SignInBody();

  @override
  Widget build(BuildContext context) => Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 375),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.5),
              child: BlocBuilder<SignInBloc, SignInState>(
                builder: (context, state) => state.maybeWhen(
                  loaded: (
                    email,
                    password,
                    rememberMe,
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
                          rememberMe: rememberMe,
                          formzSubmissionStatus: formzSubmissionStatus,
                        ),
                        const SizedBox(height: 24),
                        const SignInActions(
                          isLoading: false,
                          isValid: false,
                        ),
                        const SizedBox(height: 24),
                      ],
                    );
                  },
                  loading: () => const Center(child: CustomCircularProgress()),
                  orElse: () => const SizedBox.shrink(),
                ),
              ),
            ),
          ),
        ),
      );
}
