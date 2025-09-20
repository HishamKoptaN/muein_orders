import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../../../core/navigation/app_router.dart';
import '../../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../../../l10n/app_localizations.dart';
import '../../../../sign_in/present/views/sign_in_view.dart';
import '../../bloc/sign_up_bloc.dart';

class SignUpActions extends StatelessWidget {
  const SignUpActions({
    super.key,
    required this.formzSubmissionStatus,
  });
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) => Column(
        children: [
          SizedBox(
            width: 332,
            height: 60,
            child: ElevatedButton(
              key: const Key('signUp_button'),
              onPressed: formzSubmissionStatus.isSuccess
                  ? () => context.read<SignUpBloc>().add(
                        const SignUpEvent.signUp(),
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
                      t.signUp,
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
                t.alreadyHaveAccount,
                style: const TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {
                  AppRouter.navigateAndRemoveUntil(
                    context: context,
                    routeName: SignInView.routeName,
                  );
                },
                child: Text(
                  t.signIn,
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
