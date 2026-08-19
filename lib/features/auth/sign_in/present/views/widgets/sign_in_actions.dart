import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/routing/navigation_service.dart';
import '../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../sign_up/present/views/sign_up_views.dart';
import '../../bloc/sign_in_bloc.dart';

class SignInActions extends StatelessWidget {
  final FormzSubmissionStatus formzSubmissionStatus;
  const SignInActions({super.key, required this.formzSubmissionStatus});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBtnWidget(
          text: 'تسجيل الدخول',
          formzSubmissionStatus: formzSubmissionStatus,
          onPressed: () {
            if (formzSubmissionStatus.isSuccess) {
              getIt<SignInBloc>().add(const .signIn());
            }
          },
        ),
        TextButton(
          onPressed: () {
            NavigationService.push(
              context: context,
              routeName: SignUpView.routeName,
            );
          },
          child: const TrText(
            'إنشاء حساب',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
