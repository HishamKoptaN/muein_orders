// ignore_for_file: unused_import
import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'dart:io';
import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/auth/auth/present/views/auth_view.dart';
import '../../features/auth/change_pass/present/views/change_pass_view.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../features/auth/sign_up/present/views/sign_up_view.dart';
import '../../features/orders_features/cached_docs/present/view/add_cached_doc_view.dart';
import '../../features/orders_features/cached_docs/present/view/widgets/location/pick_location_view.dart';
import '../../features/financial/present/view/expenses_view.dart';
import '../../features/financial/present/view/financial_account_view.dart';
import '../../features/home_features/home/present/view/stats_view.dart';
import '../../features/notifications/present/view/notifications_view.dart';
import '../../features/orders_features/salla_orders_items/present/views/salla_order_items_view.dart';
import '../../features/orders_features/salla_orders_items/present/views/sitcker_pdf/sitcker_pdf_preview_view.dart';
import '../../features/profile/present/views/profile_view.dart';
import '../../material3.dart';
import '../language/view/select_language.dart';
import '../utils/global_variable.dart';
import '../di/dependency_injection.dart';
import '../utils/services/firebase_messaging/firebase_messaging_service.dart';
import 'app_router_redirect.dart';
import 'config/route_config.dart';
import 'error_page.dart';
import 'go_router_refresh.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/${AuthView.routeName}',
    routes: RouteConfig.routes,
    refreshListenable: GoRouterRefreshListenable([
      GoRouterRefreshStream(getIt<AuthBloc>().stream),
    ]),
    navigatorKey: GlobalVariable.navState,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      return getIt<AuthBloc>().state.whenOrNull(
        authenticated: () {
          if (AppRouterRedirect.public.contains(state.matchedLocation)) {
            return kReleaseMode
                ? '/${StatsView.routeName}'
                : '/${StatsView.routeName}';
          }
          return null;
        },
        unauthenticated: () {
          if (AppRouterRedirect.authenticatedOnly.contains(
                state.matchedLocation,
              ) ||
              state.matchedLocation == '/${AuthView.routeName}') {
            return kReleaseMode
                ? '/${SignInView.routeName}'
                : '/${SignInView.routeName}';
          }
          return null;
        },
        failure: (_) {
          if (AppRouterRedirect.authenticatedOnly.contains(
                state.matchedLocation,
              ) ||
              state.matchedLocation == '/${AuthView.routeName}') {
            return '/${SignInView.routeName}';
          }
          return null;
        },
      );
    },
  );
}
