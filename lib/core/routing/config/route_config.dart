import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/auth/auth/present/views/auth_view.dart';
import '../../../features/auth/auth_choice/present/views/auth_choice_view.dart';
import '../../../features/auth/change_pass/present/views/change_pass_view.dart';
import '../../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../../features/auth/sign_up/present/views/sign_up_views.dart';
import '../../../features/cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../features/cached_docs/present/view/add_cached_doc_view.dart';
import '../../../features/financial/present/view/create_expense.dart';
import '../../../features/home/domain/entities/order_type_res_entity.dart';
import '../../../features/home/present/view/home_view.dart';
import '../../../features/instructions/present/view/instructions_view.dart';
import '../../../features/language/view/select_language.dart';
import '../../../features/notifications/present/view/notifications_view.dart';
import '../../../features/orders/present/views/orders_view.dart';
import '../../../features/orders/present/views/sitcker_pd/sitcker_pdf_preview_view.dart';
import '../../../features/profile/present/views/profile_view.dart';
import '../../../features/splash/start_view.dart';

class RouteConfig {
  static List<RouteBase> get routes {
    final routes = [
      goRoute(
        routeName: StartView.routeName,
        builder: (context, state) => const StartView(),
      ),
      goRoute(
        routeName: AuthView.routeName,
        builder: (context, state) => const AuthView(),
      ),
      goRoute(
        routeName: InstructionsView.routeName,
        builder: (context, state) => const InstructionsView(),
      ),
      goRoute(
        routeName: SelectLanguageView.routeName,
        builder: (context, state) => const SelectLanguageView(),
      ),
      goRoute(
        routeName: AuthChoiceView.routeName,
        builder: (context, state) => const AuthChoiceView(),
      ),
      goRoute(
        routeName: ForgotPassView.routeName,
        builder: (context, state) => const ForgotPassView(),
      ),
      goRoute(
        routeName: SignInView.routeName,
        builder: (context, state) => const SignInView(),
      ),
      goRoute(
        routeName: SignUpView.routeName,
        builder: (context, state) => const SignUpView(),
      ),

      ShellRoute(
        builder: (context, state, child) {
          return HomeView(child: child);
        },
        routes: [
          //! Orders
          goRoute(
            routeName: ProfileView.routeName,
            builder: (context, state) => const ProfileView(),
          ),
        ],
      ),
      goRoute(
        routeName: OrderDocsView.routeName,
        builder: (context, state) =>
            OrderDocsView(stat: state.extra as StatEntity? ?? StatEntity()),
        routes: [
          goRoute(
            routeName: PdfPreviewView.routeName,
            builder: (context, state) {
              final printedName = state.pathParameters['printedName'] ?? '0';
              final executionNum = state.pathParameters['executionNum'] ?? '0';
              return PdfPreviewView(
                printedName: printedName,
                executionNum: executionNum,
              );
            },
          ),
        ],
      ),
      goRoute(
        routeName: NotificationsView.routeName,
        builder: (context, state) => const NotificationsView(),
      ),
      goRoute(
        routeName: AddCachedDocView.routeName,
        builder: (context, state) {
          final args = state.extra as Map<String, dynamic>?;
          final docId = args?['docId'] as int? ?? 0;
          final cachedDoc = args?['cachedDoc'] as CachedDocEntity?;
          return AddCachedDocView(
            docId: docId,
            cachedDoc: cachedDoc,
            subCategory:
                args?['subCategory'] as SubCategoryEntity? ??
                SubCategoryEntity(),
          );
        },
      ),
      goRoute(
        routeName: CreateExpenseView.routeName,
        builder: (context, state) => const CreateExpenseView(),
      ),
      goRoute(
        routeName: ChangePassView.routeName,
        builder: (context, state) => const ChangePassView(),
      ),
      goRoute(
        routeName: HomeView.routeName,
        builder: (context, state) => const HomeView(),
      ),
    ];
    return routes;
  }

  static GoRoute goRoute({
    required String routeName,
    required Widget Function(BuildContext context, GoRouterState state) builder,
    List<RouteBase>? routes,
    bool isSubRoute = false,
    String? paramName,
  }) {
    String finalPath = isSubRoute ? routeName : '/$routeName';
    if (paramName != null) {
      finalPath += '/:$paramName';
    }
    return GoRoute(
      path: finalPath,
      name: routeName,
      builder: builder,
      routes: routes ?? [],
    );
  }

  static GoRoute detailsRoute({
    required String routeName,
    required String paramName,
    required Widget Function(int id) viewBuilder,
  }) {
    return GoRoute(
      name: routeName,
      path: '$routeName/:$paramName',
      builder: (context, state) {
        final id = int.tryParse(state.pathParameters[paramName] ?? '0') ?? 0;
        return viewBuilder(id);
      },
    );
  }

  static Page<dynamic> errorPageBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return NoTransitionPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(child: Text('Page not found: ${state.uri.path}')),
      ),
    );
  }
}
