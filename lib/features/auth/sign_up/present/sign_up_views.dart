import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mubin_orders/core/helpers/snackbar_helper.dart';
import '../../../../../core/di/dependency_injection.dart';
import 'bloc/sign_up_bloc.dart';
import 'bloc/sign_up_event.dart';
import 'bloc/sign_up_state.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const String routeName = 'sign-up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003A46),
      body: BlocProvider(
        create: (context) => getIt<SignUpBloc>(),
        child: const SignUpFeedbackListener(
          child: SignUpFormContainer(),
        ),
      ),
    );
  }
}

class SignUpFormContainer extends StatelessWidget {
  const SignUpFormContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Add your sign-up form fields here
            // Example:
            // EmailField(),
            // PasswordField(),
            // etc.
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle sign up
                context.read<SignUpBloc>().add(SignUpEvent.signUp(),);
              },
              child: const Text('تسجيل حساب جديد'),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpFeedbackListener extends StatelessWidget {
  final Widget child;

  const SignUpFeedbackListener({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () {
            SnackbarHelper.showSuccessSnackBar(
              context,
              message: 'تم التسجيل بنجاح',
            );
            // Optionally navigate to another screen on success
            // Navigator.of(context).pushReplacementNamed('/home');
          },
          failure: (error) {
            SnackbarHelper.showErrorSnackBar(
              context,
              message: error.message ?? 'حدث خطأ ما',
            );
          },
          orElse: () {},
        );
      },
      child: child,
    );
  }
}
