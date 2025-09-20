import 'package:go_router/go_router.dart';

import '../../../features/onboarding/present/pages/onboarding_view.dart';
import '../route_utils.dart';

final List<RouteBase> onboardingRoutes = [
  createRoute(
    routeName: OnboardingView.routeName,
    builder: (context, state) => const OnboardingView(),
    useFullPath: true,
  ),
];
