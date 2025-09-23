import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../../../core/routing/navigation_service.dart';
import '../../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../../../l10n/app_localizations.dart';
import '../../../../sign_up/present/views/sign_up_views.dart';
import '../../bloc/sign_in_bloc.dart';

class SignInActions extends StatelessWidget {
  const SignInActions({
    super.key,
    required this.formzSubmissionStatus,
  });
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) => Column(
        children: [
          SizedBox(
            width: 332,
            height: 60,
            child: ElevatedButton(
              key: const Key('signIn_button'),
              onPressed: formzSubmissionStatus.isSuccess
                  ? () => context.read<SignInBloc>().add(
                        const SignInEvent.signInWithCredentialsPressed(),
                      )
                  : null,
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith(
                  (states) => const Color(0xFF83BEA8),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                elevation: WidgetStateProperty.all(0),
              ),
              child: formzSubmissionStatus.isInProgress
                  ? const CustomCircularProgress()
                  : Text(
                      t.login,
                      style: TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: formzSubmissionStatus.isSuccess
                            ? Colors.white
                            : Colors.grey,
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
                onPressed: () {
                  NavigationService.go(
                    context: context,
                    routeName: SignUpView.routeName,
                  );
                },
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
      ),
    );
  }
}
