// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../../../core/routing/navigation_service.dart';
// import '../../../../../orders/present/views/orders_view.dart';
// import '../../../../sign_in/present/views/sign_in_view.dart';
// import '../../bloc/auth_bloc.dart';

// class AuthGuard extends StatelessWidget {
//   final Widget child;

//   const AuthGuard({
//     Key? key,
//     required this.child,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AuthBloc, AuthState>(
//       listener: (context, state) {
//         state.maybeWhen(
//           authenticated: () {
//             // Handle navigation to home when authenticated
//             NavigationService.go(
//                 context: context, routeName: OrdersView.routeName);
//           },
//           unauthenticated: () {
//             // Handle navigation to login when unauthenticated
//             NavigationService.go(
//                 context: context, routeName: SignInView.routeName);
//           },
//           loading: () {},
//           failure: (message) {
//             // Show error message if there's an authentication error
//             context.showErrorSnackBar(title: 'Error', message: message);
//             // Optionally navigate to login on error
//             NavigationService.go(
//                 context: context, routeName: SignInView.routeName);
//           },
//           orElse: () {},
//         );
//       },
//       builder: (context, state) {
//         return state.maybeWhen(
//           authenticated: () => child,
//           loading: () => const Center(child: CircularProgressIndicator()),
//           unauthenticated: () => const SizedBox.shrink(),
//           failure: (message) => Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TrText('Error: $message'),
//                 const SizedBox(height: 16),
//                 ElevatedButton(
//                   onPressed: () => context
//                       .read<AuthBloc>()
//                       .add(const AuthEvent.check()),
//                   child: const TrText('Retry'),
//                 ),
//               ],
//             ),
//           ),
//           orElse: () => const SizedBox.shrink(),
//         );
//       },
//     );
//   }
// }
