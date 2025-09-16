import 'package:go_router/go_router.dart';
import 'package:mubin_orders/core/all_imports.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../orders/present/views/orders_view.dart';
import '../bloc/sign_in_bloc.dart';
import 'widgets/sign_in_actions.dart';
import 'widgets/sign_in_background.dart';
import 'widgets/sign_in_form.dart';
import 'widgets/sign_in_header.dart';

class SignInView extends StatelessWidget {
  const SignInView({
    super.key,
  });
  static const String routeName = "SignInView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (context) => getIt<SignInBloc>(),
      child: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) async {
          state.maybeWhen(
            success: () => context.goNamed(OrdersView.routeName),
            failure: (error) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text(
                      error.message ?? 'Failed to sign in. Please try again.')),
            ),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (
              email,
              password,
              isValid,
              isPasswordVisible,
              status,
              errorMessage,
            ) {
              return const Scaffold(
                backgroundColor: Color(0xFF003A46),
                body: SignInBackground(
                  child: _SignInBody(),
                ),
              );
            },
            orElse: () => const CustomCircularProgress(),
          );
        },
      ),
    );
  }
}

class _SignInBody extends StatelessWidget {
  const _SignInBody();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 375),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SignInHeader(),
                SizedBox(height: 26),
                SignInForm(),
                SizedBox(height: 24),
                SignInActions(),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
