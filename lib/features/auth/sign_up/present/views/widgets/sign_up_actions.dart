import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/routing/navigation_service.dart';
import '../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../../../l10n/app_localizations.dart';
import '../../../../sign_in/present/views/sign_in_view.dart';
import '../../bloc/sign_up_bloc.dart';

class SignUpActions extends StatelessWidget {
  const SignUpActions({super.key, required this.formzSubmissionStatus});
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) => Column(
        children: [
          CustomBtnWidget(
            key: const Key('signUp_button'),
            onPressed: () {
              if (formzSubmissionStatus.isSuccess) {
                getIt<SignUpBloc>().add(const SignUpEvent.signUp());
              }
            },
            text: 'إنشاء حساب',
            formzSubmissionStatus: formzSubmissionStatus,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TrText(
                'لديك حساب بالفعل؟',
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {
                  NavigationService.navigateAndRemoveUntil(
                    context: context,
                    routeName: SignInView.routeName,
                  );
                },
                child: const TrText(
                  'تسجيل الدخول',
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
        ],
      ),
    );
  }
}
