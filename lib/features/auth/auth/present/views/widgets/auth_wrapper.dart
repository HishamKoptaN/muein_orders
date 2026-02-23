// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mueinorders/features/auth/auth/present/bloc/auth_bloc.dart';

// class AuthWrapper extends StatelessWidget {
//   final Widget authenticatedChild;
//   final Widget unauthenticatedChild;

//   const AuthWrapper({
//     Key? key,
//     required this.authenticatedChild,
//     required this.unauthenticatedChild,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<AuthBloc, AuthState>(
//       builder: (context, state) {
//         return state.maybeWhen(
//           loading: () => const Scaffold(
//             body: Center(child: CircularProgressIndicator()),
//           ),
//           authenticated: () => authenticatedChild,
//           unauthenticated: () => unauthenticatedChild,
//           failure: (message) => Scaffold(
//             body: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Authentication Error: $message'),
//                   const SizedBox(height: 16),
//                   ElevatedButton(
//                     onPressed: () {
//                       conte  xt.read<AuthBloc>().add(const AuthEvent.check());
//                     },
//                     child: const Text('Retry'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           orElse: () => const SizedBox.shrink(),
//         );
//       },
//     );
//   }
// }
