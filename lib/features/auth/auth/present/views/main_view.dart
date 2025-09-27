// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../../core/di/dependency_injection.dart';
// import '../../../../../core/widgets/custom_circular_progress.dart';
// import '../../../sign_in/present/views/sign_in_view.dart';
// import '../bloc/auth_bloc.dart';

// class AuthView extends StatelessWidget {
//   const AuthView.AuthView({
//     super.key,
//   });
//   static const String routeName = 'auth';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: BlocProvider(
//           create: (context) => getIt<AuthBloc>()
//             ..add(
//               const AuthEvent.check(),
//             ),
//           child: BlocBuilder<AuthBloc, AuthState>(
//             builder: (context, state) {
//               return state.maybeWhen(
//                 authenticated: () => const SignInView(),
//                 unauthenticated: () {
//                   return const SignInView();
//                   // if (kReleaseMode) {
//                   // } else {
//                   //   return SignInView(
//                   //       // index: 1,
//                   //       );
//                   // }
//                 },
//                 // PdfPreviewPage(
//                 //   printedName:
//                 //       'عن عواطف العمودي ووالديها وعن صديقتها فاطمه ابو خبر وأعنا أخوها عبدالله العمودي وعن امة محمد جميعا',
//                 //   executionNum: 'Z4632',
//                 // ),
//                 // const LoginView(),
//                 orElse: () => const CustomCircularProgress(),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
