import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storage_utils/storage_utils.dart';

import '../app.dart';
import '../features/auth/auth_choice/presentation/views/auth_choice_view.dart';
import '../features/auth/forgot_password/present/views/forgot_password_view.dart';
import '../features/auth/forgot_password/present/views/reset_password_view.dart';
import '../features/auth/sign_in/present/views/sign_in_view.dart';
import '../features/home/home_view.dart';
import '../features/language/view/select_language.dart';
import '../features/main/present/view/main_view.dart';
import '../features/notifications/notifications_view.dart';
import '../features/onboarding/presentation/pages/onboarding_view.dart';
import '../features/orders/present/views/orders_view.dart';
import '../features/splash/start_view.dart';
import 'database/cache/shared_pref_keys.dart';
import 'di/dependency_injection.dart';
import 'security/security_manager.dart';

/// Creates a GoRoute with the given widget
GoRoute _createRoute<T extends Widget>({
  required String routeName,
  required T Function(BuildContext, GoRouterState) builder,
  List<RouteBase> routes = const [],
}) {
  return GoRoute(
    path: '/$routeName',
    name: routeName,
    builder: builder,
    routes: routes,
  );
}

// Route names constants for better maintainability
final GoRouter router = GoRouter(
  initialLocation: "/${SignInView.routeName}",
  navigatorKey: GlobalVariable.navState,
  redirect: _handleRedirect,
  errorBuilder: (context, state) => const ErrorPage(),
  routes: [
    _createRoute(
      routeName: StartView.routeName,
      builder: (context, state) => const StartView(),
    ),
    _createRoute<SelectLanguage>(
      routeName: SelectLanguage.routeName,
      builder: (context, state) => const SelectLanguage(),
    ),
    _createRoute(
      routeName: AuthChoiceView.routeName,
      builder: (context, state) => const AuthChoiceView(),
    ),
    _createRoute(
      routeName: SignInView.routeName,
      builder: (context, state) => const SignInView(),
    ),
    _createRoute(
      routeName: 'sign-up',
      builder: (context, state) => const SignUpPlaceholderPage(),
    ),
    _createRoute(
      routeName: ForgotPasswordView.routeName,
      builder: (context, state) => const ForgotPasswordView(),
    ),
    _createRoute(
      routeName: ResetPasswordView.routeName,
      builder: (context, state) => const ResetPasswordView(),
    ),
    _createRoute(
      routeName: OnboardingView.routeName,
      builder: (context, state) => const OnboardingView(),
    ),
    _createRoute(
      routeName: MainView.routeName,
      builder: (context, state) => const MainView(),
    ),
    _createRoute(
      routeName: HomeView.routeName,
      builder: (context, state) => const HomeView(),
    ),
    _createRoute(
      routeName: OrdersView.routeName,
      builder: (context, state) => const OrdersView(),
    ),
    _createRoute(
      routeName: NotificationsView.routeName,
      builder: (context, state) => const NotificationsView(),
    ),
  ],
);

// Route protection logic
Future<String?> _handleRedirect(
    BuildContext context, GoRouterState state) async {
  final isAuthenticated = await _checkAuthentication();
  final currentPath = state.uri.path; // e.g. '/sign-up'
  final currentName = currentPath.startsWith('/')
      ? currentPath.substring(1)
      : currentPath; // e.g. 'sign-up'

  // For root path, handle based on authentication
  if (currentPath == '/' || currentPath.isEmpty) {
    return isAuthenticated
        ? '/${MainView.routeName}'
        : '/${StartView.routeName}';
  }

  // Public routes that don't require authentication
  final publicRoutes = <String>{
    StartView.routeName,
    SelectLanguage.routeName,
    OnboardingView.routeName,
    SignInView.routeName,
    ForgotPasswordView.routeName,
    ResetPasswordView.routeName,
  };

  // If user is not authenticated and trying to access a protected route
  if (!isAuthenticated && !publicRoutes.contains(currentName)) {
    return '/${StartView.routeName}';
  }

  // If user is authenticated
  if (isAuthenticated) {
    final prefs = getIt<PrefsStorageService>();
    final onboardingShown =
        await prefs.getBool(SharedPrefKeys.onboardingShown) ?? false;

    // Redirect to onboarding if not shown yet
    if (!onboardingShown && currentName != OnboardingView.routeName) {
      return '/${OnboardingView.routeName}';
    }

    // If user is on auth screens but already authenticated, go to home
    if (publicRoutes.contains(currentName) &&
        currentName != OnboardingView.routeName) {
      return '/${MainView.routeName}';
    }
  }

  return null; // No redirect needed
}

Future<bool> _checkAuthentication() async {
  final prefs = getIt<PrefsStorageService>();
  final remember = await prefs.getBool(SharedPrefKeys.isLoged) ?? false;
  if (!remember) return false;
  return await SecurityManager.isAuthenticated();
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('خطأ في التنقل'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            const Text(
              'الصفحة غير موجودة',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('يرجى التحقق من الرابط والمحاولة مرة أخرى'),
          ],
        ),
      ),
    );
  }
}

class SignUpPlaceholderPage extends StatelessWidget {
  const SignUpPlaceholderPage({super.key});

  static const String routeName = "sign-up-placeholder";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إنشاء حساب'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person_add_alt_1, size: 64),
            const SizedBox(height: 16),
            const Text(
              'صفحة التسجيل غير مُفعّلة بعد',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'سنقوم بربطها لاحقًا مع موديول التسجيل الحقيقي. بإمكانك العودة لتسجيل الدخول الآن.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go('/${SignInView.routeName}'),
              child: const Text('العودة لتسجيل الدخول'),
            ),
          ],
        ),
      ),
    );
  }
}
