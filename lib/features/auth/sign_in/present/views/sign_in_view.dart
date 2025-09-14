import 'package:go_router/go_router.dart';
import 'package:mubin_orders/core/all_imports.dart';
import 'package:mubin_orders/core/di/dependency_injection.dart';
import 'package:mubin_orders/core/widgets/custom_text_form_field.dart';
import 'package:mubin_orders/gen/assets.gen.dart';
import 'package:mubin_orders/l10n/app_localizations.dart';

import '../bloc/sign_in_bloc.dart';

class SignInView extends StatelessWidget {
  final void Function(String token)? onSuccess;
  final dynamic customToast;
  final dynamic toastType;
  final Widget? customLogoImage;
  final SignInBloc? bloc;
  const SignInView({
    super.key,
    this.onSuccess,
    this.customToast,
    this.toastType,
    this.customLogoImage,
    this.bloc,
  });
  static const String routeName = "SignInView";
  @override
  Widget build(BuildContext context) {
    return _SignInConsumer(
      key: key,
      onSuccess: onSuccess,
      customLogoImage: customLogoImage,
      bloc: bloc,
    );
  }
}

class _SignInConsumer extends StatelessWidget {
  const _SignInConsumer({
    super.key,
    required this.onSuccess,
    this.customLogoImage,
    this.bloc,
  });

  final void Function(String token)? onSuccess;
  final Widget? customLogoImage;
  final SignInBloc? bloc;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final size = MediaQuery.of(context).size;

    return BlocProvider<SignInBloc>(
      create: (context) => bloc ?? getIt<SignInBloc>(),
      child: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          // if (state.status == FormzSubmissionStatus.success) {
          //   if (onSuccess != null) {
          //     onSuccess!('token_here'); // Replace with actual token
          //   } else {
          //     context.goNamed(MainView.routeName);
          //   }
          // } else if (state.status == FormzSubmissionStatus.failure &&
          //     state.errorMessage != null) {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(content: Text(state.errorMessage!)),
          //   );
          // }
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: SizedBox(
                height: size.height,
                child: Stack(
                  children: [
                    // Background image
                    Positioned.fill(
                      child: Image.asset(
                        Assets.images.signInBackground.path,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Content
                    Positioned.fill(
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Logo
                              customLogoImage ??
                                  Image.asset(
                                    Assets.logos.secondLogoPng.path,
                                    height: 100,
                                  ),
                              const SizedBox(height: 32),
                              // Email field
                              CustomTextFormField(
                                hintText: t?.emailHint ?? 'Email',
                                prefixIcon: const Icon(Icons.email_outlined),
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) => context
                                    .read<SignInBloc>()
                                    .add(SignInEvent.emailChanged(value)),
                                // errorText: state.email?.error,
                              ),
                              const SizedBox(height: 16),
                              // Password field
                              CustomTextFormField(
                                hintText: t?.password ?? 'Password',
                                prefixIcon: const Icon(Icons.lock_outline),
                                // obscureText:
                                //     !(state.isPasswordVisible ?? false),
                                // suffixIcon: IconButton(
                                // icon: Icon(
                                //   (state.isPasswordVisible ?? false)
                                //       ? Icons.visibility_off
                                //       : Icons.visibility,
                                // ),
                                // onPressed: () => context
                                //     .read<SignInBloc>()
                                //     .add(const TogglePasswordVisibility()),
                                // ),
                                // onChanged: (value) => context
                                //     .read<SignInBloc>()
                                //     .add(SignInEvent.passwordChanged(value)),
                                // errorText: state.password?.error,
                              ),
                              const SizedBox(height: 8),
                              // Forgot password
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () =>
                                      context.go('/forgot-password'),
                                  child: Text(
                                      t?.forgotPassword ?? 'Forgot Password?'),
                                ),
                              ),
                              const SizedBox(height: 24),
                              // Sign in button
                              // SizedBox(
                              //   width: double.infinity,
                              //   height: 50,
                              //   child: ElevatedButton(
                              //     onPressed: state.isValid &&
                              //             state.status != SignInStatus.loading
                              //         ? () => context.read<SignInBloc>().add(
                              //             const SignInWithCredentialsPressed())
                              //         : null,
                              //     child: state.status == SignInStatus.loading
                              //         ? const CircularProgressIndicator()
                              //         : Text(l10n?.login ?? 'Login'),
                              //   ),
                              // ),
                              const SizedBox(height: 16),
                              // Or continue with
                              Row(
                                children: [
                                  const Expanded(child: Divider()),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Text(t?.or ?? 'or'),
                                  ),
                                  const Expanded(child: Divider()),
                                ],
                              ),
                              const SizedBox(height: 16),
                              // Social login buttons
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Google
                                  // IconButton(
                                  //   onPressed: () => context
                                  //       .read<SignInBloc>()
                                  //       .add(const SignInWithGooglePressed()),
                                  //   icon: Image.asset(
                                  //     Assets.icons.google.path,
                                  //     width: 24,
                                  //     height: 24,
                                  //   ),
                                  // ),
                                  // const SizedBox(width: 16),
                                  // // Apple
                                  // IconButton(
                                  //   onPressed: () => context
                                  //       .read<SignInBloc>()
                                  //       .add(const SignInWithApplePressed()),
                                  //   icon: const Icon(Icons.apple, size: 28),
                                  // ),
                                ],
                              ),
                              const Spacer(),
                              // Sign up link
                              // TextButton(
                              //   onPressed: () => context.go('/sign-up'),
                              //   child: Text.rich(
                              //     TextSpan(
                              //       text: t.dontHaveAnAccount,
                              //       children: [
                              //         TextSpan(
                              //           text: ' ${t.signUp}',
                              //           style: const TextStyle(
                              //             fontWeight: FontWeight.bold,
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
