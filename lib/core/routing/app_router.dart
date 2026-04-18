// ignore_for_file: unused_import
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import 'dart:io';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/auth/auth/present/views/auth_view.dart';
import '../../features/auth/change_pass/present/views/change_pass_view.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../features/auth/sign_up/present/views/sign_up_views.dart';
import '../../features/cached_docs/present/view/add_cached_doc_view.dart';
import '../../features/home/present/view/stats_view.dart';
import '../../features/notifications/present/view/notifications_view.dart';
import '../../features/orders/present/views/orders_view.dart';
import '../../features/orders/present/views/sitcker_pdf/sitcker_pdf_preview_view.dart';
import '../../features/profile/present/views/profile_view.dart';
import '../app/global_variable.dart';
import '../di/dependency_injection.dart';
import '../services/firebase_messaging/firebase_messaging_service.dart';
import 'app_router_redirect.dart';
import 'config/route_config.dart';
import 'error_page.dart';
import 'go_router_refresh.dart';

class AppRouter {
  static GoRouter create() {
    return GoRouter(
      initialLocation: '/${AuthView.routeName}',
      routes: RouteConfig.routes,
      refreshListenable: GoRouterRefreshStream(getIt<AuthBloc>().stream),
      navigatorKey: GlobalVariable.navState,
      debugLogDiagnostics: true,
      redirect: (context, state) {
        if (state.uri.hasAbsolutePath) {
          final String matchedLocation = state.matchedLocation;
          final String cleanLocation = matchedLocation.startsWith('/')
              ? matchedLocation.substring(1)
              : matchedLocation;
          final String currentLocation = state.matchedLocation.replaceFirst(
            '/',
            '',
          );
          return getIt<AuthBloc>().state.maybeWhen(
            authenticated: () {
              // 🔧 Fix: Skip FirebaseMessaging on iOS Simulator
              if (!Platform.isIOS) {
                Future.microtask(
                  () => getIt<FirebaseMessagingService>().initialize(),
                );
              }
              if (AppRouterRedirect.public.contains(currentLocation)) {
                if (kReleaseMode) {
                  return '/${StatsView.routeName}';
                } else {
                  return '/${StatsView.routeName}';
                }
              }
              return null;
            },
            unauthenticated: () {
              if (cleanLocation == AuthView.routeName ||
                  cleanLocation.isEmpty) {
                return '/${SignInView.routeName}';
              }
              if (AppRouterRedirect.public.contains(currentLocation)) {
                return null;
              }
              return '/${SignInView.routeName}';
            },
            loading: () {
              return '/${AuthView.routeName}';
            },
            failure: (_) => '/${SignInView.routeName}',
            orElse: () => null,
          );
        }

        return _handleNormalRedirect(state);
      },
    );
  }

  static String? _handleNormalRedirect(GoRouterState state) {
    final String matchedLocation = state.matchedLocation;
    final String cleanLocation = matchedLocation.startsWith('/')
        ? matchedLocation.substring(1)
        : matchedLocation;
    final String currentLocation = state.matchedLocation.replaceFirst('/', '');
    return getIt<AuthBloc>().state.maybeWhen(
      authenticated: () {
        Future.microtask(() => getIt<FirebaseMessagingService>().initialize());
        if (AppRouterRedirect.public.contains(currentLocation)) {
          if (kReleaseMode) {
            return '/${StatsView.routeName}';
          } else {
            return '/${StatsView.routeName}';
          }
        }
        return null;
      },
      unauthenticated: () {
        if (cleanLocation == AuthView.routeName || cleanLocation.isEmpty) {
          return '/${SignInView.routeName}';
        }
        if (AppRouterRedirect.public.contains(currentLocation)) {
          return null;
        }
        return '/${SignInView.routeName}';
      },
      loading: () {
        return '/${AuthView.routeName}';
      },
      failure: (_) => '/${SignInView.routeName}',
      orElse: () => null,
    );
  }
}
