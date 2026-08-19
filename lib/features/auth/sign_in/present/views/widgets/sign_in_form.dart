import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/routing/navigation_service.dart';
import '../../../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../forgot_password/present/views/forgot_pass_view.dart';
import '../../../domain/entities/sign_in_req_entity.dart';
import '../../bloc/sign_in_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key, required this.signInReq});

  final SignInReqEntity signInReq;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAuthTextFormField(
          key: const Key('email_field'),
          initialValue: signInReq.email?.value,
          hintText: 'البريد الإلكتروني',
          keyboardType: TextInputType.emailAddress,
          onChanged: (v) {
            getIt<SignInBloc>().add(
              .dataChanged(
                signInReq: signInReq.copyWith(email: EmailFormInput.dirty(v)),
              ),
            );
          },
        ),
        SizedBox(height: 10.h),
        CustomAuthTextFormField(
          key: const Key('password_field'),
          hintText: 'كلمة المرور',
          isPassword: true,
          obscureText: signInReq.obscurePassword,
          showPasswordToggle: true,
          onChanged: (v) {
            getIt<SignInBloc>().add(
              .dataChanged(signInReq: signInReq.copyWith(password: .dirty(v))),
            );
          },
          suffixIcon: IconButton(
            icon: Icon(
              (signInReq.obscurePassword)
                  ? Icons.visibility_off
                  : Icons.visibility,
              color: Colors.white.withValues(alpha: 0.57),
              size: 26.r,
            ),
            onPressed: () {
              getIt<SignInBloc>().add(
                SignInEvent.dataChanged(
                  signInReq: signInReq.copyWith(
                    obscurePassword: !signInReq.obscurePassword,
                  ),
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                NavigationService.pushNamed(
                  context: context,
                  routeName: ForgotPassView.routeName,
                );
              },
              child: const TrText(
                'نسيت كلمة المرور',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
