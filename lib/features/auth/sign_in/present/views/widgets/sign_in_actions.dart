import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../../../core/routing/navigation_service.dart';
import '../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../l10n/app_localizations.dart';
import '../../../../sign_up/present/views/sign_up_views.dart';
import '../../bloc/sign_in_bloc.dart';

class SignInActions extends StatelessWidget {
  const SignInActions({super.key, required this.formzSubmissionStatus});
  final FormzSubmissionStatus formzSubmissionStatus;
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return Column(
          children: [
            CustomBtnWidget(
              text: t.login,
              formzSubmissionStatus: formzSubmissionStatus,
              onPressed: () {
                if (formzSubmissionStatus.isSuccess) {
                  context.read<SignInBloc>().add(
                    const SignInEvent.signInWithCredentialsPressed(),
                  );
                }
              },
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
                    t.registerAnAccount,
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
    );
  }
}
