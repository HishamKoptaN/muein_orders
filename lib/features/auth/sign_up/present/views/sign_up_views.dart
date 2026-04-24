import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/routing/navigation_service.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../../instructions/present/view/instructions_view.dart';
import '../../../sign_in/present/views/widgets/sign_in_background.dart';
import '../bloc/sign_up_bloc.dart';
import 'widgets/debug_auto_fill.dart';
import 'widgets/sign_up_body.dart';

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
                // 🔍 Debug: Show detailed error in debug mode
                final errorMessage = kDebugMode
                    ? '❌ $failure\n\n(تفاصيل أكثر في الـ Console Logs)'
                    : failure;
                AppSnackBar.show(
                  context: context,
                  title: 'Error',
                  message: errorMessage,
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
                                child: SignUpBody(
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
