import 'package:go_router/go_router.dart';

import '../../../features/auth/auth_choice/present/views/auth_choice_view.dart';
import '../../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../../features/auth/sign_up/present/sign_up_views.dart';
import '../route_utils.dart';

final List<RouteBase> authRoutes = [
  createRoute(
    routeName: AuthChoiceView.routeName,
    builder: (context, state) => const AuthChoiceView(),
    useFullPath: true,
  ),
  createRoute(
    routeName: SignInView.routeName,
    builder: (context, state) => const SignInView(),
    useFullPath: true,
  ),
  createRoute(
    routeName: SignUpView.routeName,
    builder: (context, state) => const SignUpView(),
    useFullPath: true,
  ),
];
