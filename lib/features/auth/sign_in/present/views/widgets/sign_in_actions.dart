import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/routing/navigation_service.dart';
import '../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../../../l10n/app_localizations.dart';
import '../../../../sign_up/present/views/sign_up_views.dart';
import '../../bloc/sign_in_bloc.dart';

class SignInActions extends StatelessWidget {
  const SignInActions({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return state.maybeMap(
          loaded: (loaded) => Column(
            children: [
              CustomBtnWidget(
                text: 'تسجيل الدخول',
                formzSubmissionStatus: loaded.formzSubmissionStatus,
                onPressed: () {
                  if (loaded.formzSubmissionStatus.isSuccess) {
                    getIt<SignInBloc>().add(
                      const SignInEvent.signInWithCredentialsPressed(),
                    );
                  }
                },
              ),
              TextButton(
                onPressed: () {
                  NavigationService.go(
                    context: context,
                    routeName: SignUpView.routeName,
                  );
                },
                child: const TrText(
                  'إنشاء حساب',
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
