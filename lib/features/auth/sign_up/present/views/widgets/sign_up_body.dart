import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import '../../../domain/entities/sign_up_req_entity.dart';
import 'sign_up_actions.dart';
import 'sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
    required this.signUpReq,
    required this.formzSubmissionStatus,
  });

  final SignUpReqEntity signUpReq;
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Gap(75.h),
          Image.asset('assets/logos/logo_solid.png'),
          SizedBox(height: 15.h),
          Form(
            autovalidateMode: .onUserInteraction,
            child: SignUpForm(signUpReq: signUpReq),
          ),
          SizedBox(height: 25.h),
          SignUpActions(formzSubmissionStatus: formzSubmissionStatus),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}
