
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/debug_widget.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
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
        //  getIt<SignInBloc>()
        //  ..add(
        //    const SignInEvent.dataChanged(signInReq: .dirty('waleed@gmail.com')),
        //  )
        //  ..add(const SignInEvent.dataChanged(password: .dirty('password')))
        //  ..add(const SignInEvent.signIn());
      },
      child: BlocConsumer<SignInBloc, SignInState>(
        bloc: getIt<SignInBloc>(),
        listener: (context, state) async {
          await state.mapOrNull(
            failure: (f) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: TrText(f.errorMessage),
                  backgroundColor: Colors.red,
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: state.maybeMap(
              loaded: (loaded) {
                return SignInBody(
                  signInReq: loaded.signInReq,
                  formzSubmissionStatus: loaded.formzSubmissionStatus,
                );
              },
              loading: (s) {
                return const Center(child: CustomCircularProgress());
              },
              orElse: () {
                return const SizedBox.shrink();
              },
            ),
          );
        },
      ),
    );
  }
}
