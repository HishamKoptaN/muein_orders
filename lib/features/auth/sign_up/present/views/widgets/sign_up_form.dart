import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../domain/entities/sign_up_req_entity.dart';
import '../../bloc/sign_up_bloc.dart';

class SignUpForm extends StatelessWidget {
  final SignUpReqEntity signUpReq;

  const SignUpForm({super.key, required this.signUpReq});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        CustomAuthTextFormField(
          key: const Key('name_field'),
          initialValue: signUpReq.name?.value,
          hintText: 'الاسم',
          prefixIcon: const Icon(Icons.person_outline),
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(
                signUpReq: signUpReq.copyWith(name: .dirty(value: v)),
              ),
            );
          },
          validator: (value) {
            return value?.isNotEmpty == true ? null : 'الاسم مطلوب';
          },
        ),
        CustomAuthTextFormField(
          key: const Key('email_field'),
          initialValue: signUpReq.email?.value,
          hintText: 'البريد الإلكتروني',
          prefixIcon: const Icon(Icons.email_outlined),
          keyboardType: TextInputType.emailAddress,
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(signUpReq: signUpReq.copyWith(email: .dirty(v))),
            );
          },
          // validator: (value) {
          //   return .dirty(value ?? '').error?.message;
          // },
        ),
        CustomAuthTextFormField(
          key: const Key('phone_field'),
          initialValue: signUpReq.phone?.value,
          hintText: 'رقم الهاتف',
          prefixIcon: const Icon(Icons.phone_outlined),
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(signUpReq: signUpReq.copyWith(phone: .dirty(v))),
            );
          },
        ),
        CustomAuthTextFormField(
          key: const Key('password_field'),
          hintText: 'كلمة المرور',
          initialValue: signUpReq.password?.value,
          prefixIcon: const Icon(Icons.lock_outline),
          obscureText: signUpReq.obscurePassword,
          showPasswordToggle: true,
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(signUpReq: signUpReq.copyWith(password: .dirty(v))),
            );
          },
        ),
        CustomAuthTextFormField(
          key: const Key('confirm_password_field'),
          initialValue: signUpReq.confirmPassword?.value,
          hintText: 'تأكيد كلمة المرور',
          prefixIcon: const Icon(Icons.lock_outline),
          obscureText: signUpReq.obscurePassword,
          showPasswordToggle: true,
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(
                signUpReq: signUpReq.copyWith(confirmPassword: .dirty(v)),
              ),
            );
          },
          validator: (value) {
            return value == signUpReq.password?.value
                ? null
                : 'كلمتا المرور غير متطابقتين';
          },
        ),
      ],
    );
  }
}
