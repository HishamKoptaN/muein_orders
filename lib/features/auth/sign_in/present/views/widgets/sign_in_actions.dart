import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:mubin_orders/core/extensions/app_localizations_extension.dart';
import 'package:mubin_orders/core/widgets/custom_circular_progress.dart';
import 'package:mubin_orders/l10n/app_localizations.dart';

import '../../../../../orders/present/views/orders_view.dart';
import '../../bloc/sign_in_bloc.dart';

class SignInActions extends StatelessWidget {
  const SignInActions({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () => context.goNamed(OrdersView.routeName),
          failure: (error) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                error.message ?? 'Failed to sign in. Please try again.',
              ),
            ),
          ),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (
            email,
            password,
            isValid,
            isPasswordVisible,
            status,
            errorMessage,
          ) {
            return Column(
              children: [
                SizedBox(
                  width: 332,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: isValid &&
                            status != FormzSubmissionStatus.inProgress
                        ? () => context.read<SignInBloc>().add(
                            const SignInEvent.signInWithCredentialsPressed())
                        : null,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith(
                        (states) {
                          return const Color(0xFF83BEA8);
                        },
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      elevation: WidgetStateProperty.all(0),
                    ),
                    child: status == FormzSubmissionStatus.inProgress
                        ? const CustomCircularProgress()
                        : Text(
                            t.login,
                            style: const TextStyle(
                              fontFamily: 'Almarai',
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      t.notHaveAccount,
                      style: const TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => context.go('/sign-up'),
                      child: Text(
                        t.signUp,
                        style: const TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
