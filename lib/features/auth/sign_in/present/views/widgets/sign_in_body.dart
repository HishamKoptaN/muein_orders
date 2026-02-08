import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../bloc/sign_in_bloc.dart';
import 'sign_in_actions.dart';
import 'sign_in_form.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 375),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.5),
            child: BlocBuilder<SignInBloc, SignInState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loaded:
                      (
                        email,
                        password,
                        obscurePassword,
                        formzSubmissionStatus,
                      ) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/logos/logo_solid.png',
                              height: 115.h,
                              width: 166.w,
                            ),
                            SizedBox(height: 50.h),
                            SignInForm(
                              email: email,
                              password: password,
                              obscurePassword: obscurePassword,
                              formzSubmissionStatus: formzSubmissionStatus,
                            ),
                            SizedBox(height: 5.h),
                            SignInActions(
                              formzSubmissionStatus: formzSubmissionStatus,
                            ),
                            SizedBox(height: 20.h),
                          ],
                        );
                      },
                  loading: () => const Center(child: CustomCircularProgress()),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
