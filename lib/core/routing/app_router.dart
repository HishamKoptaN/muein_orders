import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

// App
import '../app/global_variable.dart' as globals;

// Features
import '../../features/start/present/start_view.dart';
import '../../features/onboarding/present/pages/onboarding_view.dart';
import '../../features/auth/auth_choice/present/views/auth_choice_view.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../features/auth/sign_up/present/sign_up_views.dart' show SignUpView;
import '../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../features/auth/main/present/view/main_view.dart' show MainView;

// Constants
class SharedPrefKeys {
  static const String onboardingShown = 'onboarding_shown';
  static const String isLoggedIn = 'is_logged_in';
  static const String authToken = 'auth_token';
  static const String refreshToken = 'refresh_token';
  static const String userId = 'user_id';
  static const String userEmail = 'user_email';
  static const String userName = 'user_name';
  static const String userRole = 'user_role';
  static const String languageCode = 'language_code';
  static const String themeMode = 'theme_mode';
}

// Helpers
class SharedPrefHelper {
  static Future<bool> getBool({required String key}) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false;
  }

  static Future<void> setBool({required String key, required bool value}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  static Future<String?> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  static Future<void> setString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }
}

// Security
class SecurityManager {
  static Future<bool> isAuthenticated() async {
    final token = await SharedPrefHelper.getString(SharedPrefKeys.authToken);
    return token != null && token.isNotEmpty;
  }

  static Future<void> logout() async {
    await SharedPrefHelper.setString(SharedPrefKeys.authToken, '');
    await SharedPrefHelper.setBool(key: SharedPrefKeys.isLoggedIn, value: false);
  }
}

/// Creates a GoRoute with the given widget
class _ErrorPage extends StatelessWidget {
  final String? message;
  
  const _ErrorPage({this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              message ?? 'An unexpected error occurred',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}

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

// Route protection logic
Future<String?> _handleRedirect(
  BuildContext context,
  GoRouterState state,
) async {
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
    AuthChoiceView.routeName,
    SignInView.routeName,
    ForgotPassView.routeName,
    SignUpView.routeName,
    OnboardingView.routeName,
  };

  // If user is not authenticated and trying to access a protected route
  if (!isAuthenticated && !publicRoutes.contains(currentName)) {
    return '/${StartView.routeName}';
  }

  // If user is authenticated
  if (isAuthenticated) {
    final onboardingShown = await SharedPrefHelper.getBool(
      key: SharedPrefKeys.onboardingShown,
    );

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
  return await SecurityManager.isAuthenticated();
}

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/${OnboardingView.routeName}',
    navigatorKey: globals.GlobalVariable.navState,
    redirect: _handleRedirect,
    debugLogDiagnostics: true,
    errorBuilder: (context, state) => _ErrorPage(message: state.error?.toString()),
    routes: [
      _createRoute(
        routeName: StartView.routeName,
        builder: (context, state) => const StartView(),
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
        routeName: SignUpView.routeName,
        builder: (context, state) => const SignUpView(),
      ),
      _createRoute(
        routeName: ForgotPassView.routeName,
        builder: (context, state) => const ForgotPassView(),
      ),
      _createRoute(
        routeName: OnboardingView.routeName,
        builder: (context, state) => const OnboardingView(),
      ),
      _createRoute(
        routeName: MainView.routeName,
        builder: (context, state) => const MainView(),
      ),
    ],
  );

  /// Navigate back to the previous screen
  static void pop(BuildContext context) => context.pop();
  
  /// Navigate to a new screen
  static Future<T?> push<T>(BuildContext context, String route, {Object? extra}) {
    return context.push<T>(route, extra: extra);
  }

  /// Replace the current screen with a new one
  static void pushReplacement(
    BuildContext context,
    String route, {
    Object? extra,
  }) {
    context.pushReplacement(route, extra: extra);
  }

  /// Navigate to a new screen and remove all previous routes
  static void go(BuildContext context, String route, {Object? extra}) {
    context.go(route, extra: extra);
  }
}
