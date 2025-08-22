// import 'package:piopiopizza/screens/main/settings/productivity/provider/ roduction_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../app.dart';
import '../features/home/home_view.dart';
import '../features/main_view.dart';
import '../features/orders/present/views/orders_view.dart';
import '../onboarding_view.dart';

final GoRouter router = GoRouter(
  initialLocation: "/${OrdersView.routeName}",
  navigatorKey: GlobalVariable.navState,
  routes: [
    goRoute(
      path: OnboardingView.routeName,
      builder: (context, state) => OnboardingView(),
    ),
    goRoute(
      path: MainView.routeName,
      builder: (context, state) {
        return const MainView();
      },
    ),
    goRoute(
      path: OrdersView.routeName,
      builder: (context, state) {
        return const OrdersView();
      },
    ),
    goRoute(
      path: HomeView.routeName,
      builder: (context, state) {
        return const HomeView();
      },
    ),
    // ShellRoute(
    //   builder: (context, state, child) {
    //     final location = state.uri.toString();
    //     int index = 0;
    //     if (location.startsWith('/orders')) {
    //       index = 1;
    //     } else if (location.startsWith('/best'))
    //       index = 2;
    //     else if (location.startsWith('/fav'))
    //       index = 3;
    //     else if (location.startsWith('/settings')) index = 4;
    //     return MainView(index: index);
    //   },
    //   routes: [
    //     goRoute(path: 'home', builder: (_, __) => const HomeView()),
    //     goRoute(path: 'orders', builder: (_, __) => const OrdersTabletView()),
    //     goRoute(path: 'best', builder: (_, __) => const BestProducts()),
    //     goRoute(
    //         path: 'fav',
    //         builder: (_, __) => const Favorite(items: [], fromHome: true)),
    //     goRoute(path: 'settings', builder: (_, __) => const SettingsView()),
    //   ],
    // ),
  ],
);
GoRoute goRoute({
  String? name,
  required String path,
  required Widget Function(BuildContext, GoRouterState)? builder,
}) {
  return GoRoute(
    name: name,
    path: '/$path',
    builder: builder,
  );
}
