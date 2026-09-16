import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/theme/core/themes/auth_light_theme.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../bloc/sign_in_bloc.dart';
import 'widgets/sign_in_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const String routeName = 'sign-in';
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: authlightTheme(context: context),
      child: CustomScaffold(
        body: BlocConsumer<SignInBloc, SignInState>(
          bloc: getIt<SignInBloc>(),
          listener: (context, state) async {
            await state.mapOrNull(
              failure: (state) {
                context.showErrorSnackBar(
                  title: '',
                  message: state.errorMessage,
                );
              },
            );
          },
          builder: (context, state) {
            return state.maybeMap(
              loaded: (loaded) {
                return SignInBody(
                  signInReq: loaded.signInReq,
                  formzSubmissionStatus: loaded.formzSubmissionStatus,
                );
              },
              orElse: () {
                return const Center(child: CustomCircularProgress());
              },
            );
          },
        ),
      ),
    );
  }
}
