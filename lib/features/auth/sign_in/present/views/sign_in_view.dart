import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';

import '../../../../../core/debug_widget.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/translated_text.dart';
import '../bloc/sign_in_bloc.dart';
import 'widgets/sign_in_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const String routeName = 'sign-in';
  @override
  Widget build(BuildContext context) {
    return DebugTapTrigger(
      onTriggered: () {
        getIt<SignInBloc>()
          ..add(
            const SignInEvent.dataChanged(
              email: EmailInput.dirty('waleed@gmail.com'),
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
          await state.maybeMap(
            success: (s) async {},
            failure: (f) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: TrText(f.errorMessage),
                  backgroundColor: Colors.red,
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return const Scaffold(
            backgroundColor: Color(0xFF003A46),
            resizeToAvoidBottomInset: false,
            body: SignInBody(),
          );
        },
      ),
    );
  }
}
