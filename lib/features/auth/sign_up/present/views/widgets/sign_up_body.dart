import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'sign_up_actions.dart';
import 'sign_up_form.dart';
import 'sign_up_header.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.confirmPasswordInput,
    required this.obscurePassword,
    required this.formzSubmissionStatus,
  });

  final GenericFormInput name;
  final PhoneNumberFormInput phone;
  final EmailFormInput email;
  final PasswordFormInput password;
  final PasswordFormInput confirmPassword;
  final ConfirmPasswordFormInput confirmPasswordInput;
  final BoolFormInput obscurePassword;
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SignUpHeader(),
            SizedBox(height: 15.h),
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: SignUpForm(
                name: name,
                email: email,
                phone: phone,
                password: password,
                confirmPassword: confirmPassword,
                obscurePassword: obscurePassword,
                confirmPasswordInput: confirmPasswordInput,
              ),
            ),
            SizedBox(height: 25.h),
            SignUpActions(formzSubmissionStatus: formzSubmissionStatus),
            SizedBox(height: 25.h),
          ],
        ),
      ),
    );
  }
}
