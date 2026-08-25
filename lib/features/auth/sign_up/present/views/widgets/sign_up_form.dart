import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/theme/core/extensions/theme_ext.dart';
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
          prefixIcon: Icon(
            Icons.person_outline,
            color: context.colorScheme.onPrimary,
          ),
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              SignUpEvent.dataChanged(
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
          prefixIcon: Icon(
            Icons.email_outlined,
            color: context.colorScheme.onPrimary,
          ),
          keyboardType: TextInputType.emailAddress,
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              SignUpEvent.dataChanged(
                signUpReq: signUpReq.copyWith(email: .dirty(v)),
              ),
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
          prefixIcon: Icon(
            Icons.phone_outlined,
            color: context.colorScheme.onPrimary,
          ),
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              SignUpEvent.dataChanged(
                signUpReq: signUpReq.copyWith(phone: .dirty(v)),
              ),
            );
          },
        ),
        CustomAuthTextFormField(
          key: const Key('password_field'),
          hintText: 'كلمة المرور',
          initialValue: signUpReq.password?.value,
          prefixIcon: Icon(
            Icons.lock_outline,
            color: context.colorScheme.onPrimary,
          ),
          isPassword: true,
          obscureText: signUpReq.obscurePassword,
          showPasswordToggle: true,
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              SignUpEvent.dataChanged(
                signUpReq: signUpReq.copyWith(password: .dirty(v)),
              ),
            );
          },
        ),
        CustomAuthTextFormField(
          key: const Key('confirm_password_field'),
          initialValue: signUpReq.confirmPassword?.value,
          hintText: 'تأكيد كلمة المرور',
          prefixIcon: Icon(
            Icons.lock_outline,
            color: context.colorScheme.onPrimary,
          ),
          isPassword: true,
          obscureText: signUpReq.obscurePassword,
          showPasswordToggle: true,
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              SignUpEvent.dataChanged(
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
