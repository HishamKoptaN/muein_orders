import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/di/dependency_injection.dart';
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
          prefixIcon: const Icon(Icons.email_outlined),
          keyboardType: .emailAddress,
          onChanged: (v) {
            getIt<SignInBloc>().add(
              .dataChanged(signInReq: signInReq.copyWith(email: .dirty(v))),
            );
          },
        ),
        SizedBox(height: 10.h),
        CustomAuthTextFormField(
          key: const Key('password_field'),
          hintText: 'كلمة المرور',
          onChanged: (v) {
            getIt<SignInBloc>().add(
              .dataChanged(signInReq: signInReq.copyWith(password: .dirty(v))),
            );
          },
          prefixIcon: const Icon(Icons.phone_outlined),
          obscureText: signInReq.obscurePassword,
          showPasswordToggle: true,
          suffixIcon: IconButton(
            icon: Icon(
              (signInReq.obscurePassword)
                  ? Icons.visibility_off
                  : Icons.visibility,
              size: 26.r,
            ),
            onPressed: () {
              getIt<SignInBloc>().add(
                .dataChanged(
                  signInReq: signInReq.copyWith(
                    obscurePassword: !signInReq.obscurePassword,
                  ),
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: .spaceBetween,
          crossAxisAlignment: .start,
          children: [
            TextButton(
              onPressed: () {
                context.push(ForgotPassView.routeName);
              },
              child: const TrText('نسيت كلمة المرور'),
            ),
          ],
        ),
      ],
    );
  }
}
