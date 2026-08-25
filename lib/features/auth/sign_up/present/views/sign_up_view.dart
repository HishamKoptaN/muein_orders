import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../bloc/sign_up_bloc.dart';
import 'widgets/sign_up_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = 'sign-up';

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: context.colorScheme.primary,
      body: BlocConsumer<SignUpBloc, SignUpState>(
        bloc: getIt<SignUpBloc>(),
        listener: (context, state) async {
          await state.whenOrNull(
            failure: (failure) {
              AppSnackBar.show(
                context: context,
                title: 'Error',
                message: failure,
                type: AppSnackBarType.error,
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            loaded: (state) {
              return SignUpBody(
                signUpReq: state.signUpReq,
                formzSubmissionStatus: state.formzSubmissionStatus,
              );
            },
            orElse: () {
              return const  CustomCircularProgress();
            },
          );
        },
      ),
    );
  }
}
