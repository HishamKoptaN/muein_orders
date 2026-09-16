import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../sign_up/present/views/sign_up_view.dart';
import '../../bloc/sign_in_bloc.dart';

class SignInActions extends StatelessWidget {
  final FormzSubmissionStatus formzSubmissionStatus;
  const SignInActions({super.key, required this.formzSubmissionStatus});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(
          onPressed: formzSubmissionStatus.isSuccess
              ? () {
                  getIt<SignInBloc>().add(const .signIn());
                }
              : null,
          child: formzSubmissionStatus.isInProgress
              ? const CustomCircularProgress()
              : const TrText('تسجيل الدخول'),
        ),
        TextButton(
          onPressed: () {
            context.go(SignUpView.routeName);
          },
          child: const TrText('إنشاء حساب'),
        ),
      ],
    );
  }
}
