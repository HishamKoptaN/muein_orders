import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

import '../../../domain/entities/sign_in_req_entity.dart';
import 'sign_in_actions.dart';
import 'sign_in_form.dart';

class SignInBody extends StatelessWidget {
  final SignInReqEntity signInReq;
  final FormzSubmissionStatus formzSubmissionStatus;
  const SignInBody({
    super.key,
    required this.signInReq,
    required this.formzSubmissionStatus,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        mainAxisSize: .min,
        children: [
          SizedBox(height: 140.h),
          Image.asset('assets/logos/logo_solid.png'),
          SizedBox(height: 50.h),
          SignInForm(signInReq: signInReq),
          SizedBox(height: 10.h),
          SignInActions(formzSubmissionStatus: formzSubmissionStatus),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
