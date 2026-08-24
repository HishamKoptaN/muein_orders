import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../../core/widgets/translated_text.dart';
import '../bloc/auth_bloc.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});
  static const String routeName = 'auth';

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        bloc: getIt<AuthBloc>()..add(const AuthEvent.check()),
        builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return const CustomCircularProgress();
            },
            failure: (message) {
              return Center(
                child: TrText(
                  'خطأ: $message',
                  style: const TextStyle(color: Colors.red),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
