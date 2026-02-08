import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';

import '../../../../../core/debug_widget.dart';
import '../../../../../core/routing/navigation_service.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../instructions/present/view/instructions_view.dart';
import '../bloc/sign_in_bloc.dart';
import 'widgets/sign_in_background.dart';
import 'widgets/sign_in_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const String routeName = 'sign-in';
  @override
  Widget build(BuildContext context) {
    return DebugTapTrigger(
      onTriggered: () {
        context.read<SignInBloc>()
          ..add(
            const SignInEvent.dataChanged(
              email: EmailInput.dirty('msaad@gmail.com'),
            ),
          )
          ..add(
            const SignInEvent.dataChanged(
              password: PasswordInput.dirty('password'),
            ),
          )
          ..add(const SignInEvent.signInWithCredentialsPressed());
      },
      child: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) async {
          await state.whenOrNull(
            success: () {
              NavigationService.navigateAndRemoveUntil(
                context: context,
                routeName: InstructionsView.routeName,
              );
            },
            failure: (failure) {
              context.showErrorSnackBar(title: 'خطأ', message: failure);
            },
          );
        },
        builder: (context, state) {
          state.whenOrNull(
            loading: () => const Center(child: CustomCircularProgress()),
          );
          return const Scaffold(
            backgroundColor: Color(0xFF003A46),
            resizeToAvoidBottomInset: false,
            body: SignInBackground(child: SignInBody()),
          );
        },
      ),
    );
  }
}
