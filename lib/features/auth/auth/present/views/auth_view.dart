import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../bloc/auth_bloc.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});
  static const String routeName = 'auth';

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AuthBloc>().add(const AuthEvent.check());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003A45),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {},
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.when(
              authenticated: () => const SizedBox.shrink(),
              unauthenticated: () => const SizedBox.shrink(),
              loading: () => const CustomCircularProgress(),
              failure: (message) => Center(
                child: Text(
                  'خطأ: $message',
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
