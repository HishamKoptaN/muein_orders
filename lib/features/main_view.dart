import 'package:auth/auth/present/bloc/main_bloc.dart';
import 'package:auth/auth/present/bloc/main_event.dart';
import 'package:auth/auth/present/bloc/main_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../SignInUi.dart';
import '../core/widgets/custom_circular_progress.dart';
import '../core/widgets/custom_logo_image.dart';
import '../core/widgets/snacke_bar.dart';
import 'home/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const String routeName = "MainView";

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  void initState() {
    super.initState();
    context.read<MainBloc>().add(MainEvent.check());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return state.maybeWhen(
              logedIn: () => HomeView(),
              logedOut: () {
                if (kReleaseMode) {
                  return SignInView(
                    customLogoImage: CustomLogoImage(width: 180),
                    toastType: ToastType,
                    customToast: CustomToast(),
                    onSuccess: (
                      token,
                    ) {
                      // context.read<AuthBloc>().add(
                      //       AuthEvent.setToken(
                      //         token: token,
                      //       ),
                      //     );
                    },
                  );
                } else {
                  return SignInView(
                    customLogoImage: CustomLogoImage(width: 180),
                    toastType: ToastType,
                    customToast: CustomToast(),
                    onSuccess: (token) {
                      // context.read<AuthBloc>().add(
                      //       AuthEvent.setToken(
                      //         token: token,
                      //       ),
                      //     );
                    },
                  );
                }
              },
              orElse: () => const CustomCircularProgress(),
            );
          },
        ),
      ),
    );
  }
}
