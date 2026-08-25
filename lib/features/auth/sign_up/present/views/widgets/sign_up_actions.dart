import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/routing/navigation_service.dart';
import '../../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../sign_in/present/views/sign_in_view.dart';
import '../../bloc/sign_up_bloc.dart';

class SignUpActions extends StatelessWidget {
  const SignUpActions({super.key, required this.formzSubmissionStatus});
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(
          key: const Key('signUp_button'),
          onPressed: formzSubmissionStatus.isSuccess
              ? () {
                  getIt<SignUpBloc>().add(const SignUpEvent.signUp());
                }
              : null,
          child: formzSubmissionStatus.isInProgress
              ? const CustomCircularProgress()
              : TrText(
                  'إنشاء الحساب',
                  style: context.textTheme.labelLarge?.copyWith(
                    color: context.colorScheme.onPrimary,
                  ),
                ),
        ),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: .center,
          children: [
            TrText(
              'لديك حساب بالفعل؟',
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onPrimary,
              ),
            ),
            TextButton(
              onPressed: () {
                NavigationService.navigateAndRemoveUntil(
                  context: context,
                  routeName: SignInView.routeName,
                );
              },
              child: TrText(
                'تسجيل الدخول',
                style: context.textTheme.titleMedium?.copyWith(
                  color: context.colorScheme.onPrimary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
