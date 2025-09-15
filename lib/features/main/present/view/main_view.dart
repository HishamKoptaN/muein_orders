import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../core/di/get_it_instance.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../../../auth/sign_in/present/views/sign_in_view.dart';
import '../bloc/main_bloc.dart';
import '../bloc/main_event.dart';
import '../bloc/main_state.dart';

class MainView extends StatelessWidget {
  const MainView({
    super.key,
  });
  static const String routeName = "MainView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => MainBloc(
            auth: getIt(),
            mainUseCasess: getIt(),
          )..add(
              const MainEvent.check(),
            ),
          child: BlocBuilder<MainBloc, MainState>(
            builder: (context, state) {
              return state.maybeWhen(
                logedIn: () => SignInView(),
                logedOut: () {
                  return SignInView();
                  // if (kReleaseMode) {
                  // } else {
                  //   return SignInView(
                  //       // index: 1,
                  //       );
                  // }
                },
                // PdfPreviewPage(
                //   printedName:
                //       'عن عواطف العمودي ووالديها وعن صديقتها فاطمه ابو خبر وأعنا أخوها عبدالله العمودي وعن امة محمد جميعا',
                //   executionNum: 'Z4632',
                // ),
                // const LoginView(),
                orElse: () => const CustomCircularProgress(),
              );
            },
          ),
        ),
      ),
    );
  }
}
