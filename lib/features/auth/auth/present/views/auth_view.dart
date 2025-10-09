import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../home/present/view/home_view.dart';
import '../../../sign_in/present/views/sign_in_view.dart';
import '../bloc/auth_bloc.dart';

class AuthView extends StatefulWidget {
  const AuthView({
    super.key,
  });
  static const String routeName = 'auth';

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003A45),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.maybeWhen(
            authenticated: () {
              if (kDebugMode) {
                return const HomeView();
              }
              return const HomeView();
            },
            unauthenticated: () {
              return const SignInView();
            },
            orElse: () {
              return const CustomCircularProgress();
              // Container(
              //   width: double.infinity,
              //   height: double.infinity,
              //   decoration: const BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage('assets/images/splash.png'),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // );
            },
          );
        },
      ),
    );
  }
}
