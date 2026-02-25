import 'package:go_router/go_router.dart' show RouteBase;

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
import '../utils/route_builder.dart' show RouteBuilder;

class RouteConfig {
  static List<RouteBase> get routes {
    final routes = [
      RouteBuilder.goRoute(
        routeName: StartView.routeName,
        builder: (context, state) => const StartView(),
      ),
      RouteBuilder.goRoute(
        routeName: AuthView.routeName,
        builder: (context, state) => const AuthView(),
      ),
      RouteBuilder.goRoute(
        routeName: InstructionsView.routeName,
        builder: (context, state) => const InstructionsView(),
      ),
      RouteBuilder.goRoute(
        routeName: SelectLanguageView.routeName,
        builder: (context, state) => const SelectLanguageView(),
      ),
      RouteBuilder.goRoute(
        routeName: AuthChoiceView.routeName,
        builder: (context, state) => const AuthChoiceView(),
      ),
      RouteBuilder.goRoute(
        routeName: ForgotPassView.routeName,
        builder: (context, state) => const ForgotPassView(),
      ),
      RouteBuilder.goRoute(
        routeName: SignInView.routeName,
        builder: (context, state) => const SignInView(),
      ),
      RouteBuilder.goRoute(
        routeName: SignUpView.routeName,
        builder: (context, state) => const SignUpView(),
      ),
      RouteBuilder.goRoute(
        routeName: HomeView.routeName,
        builder: (context, state) => const HomeView(),
      ),
      RouteBuilder.goRoute(
        routeName: ProfileView.routeName,
        builder: (context, state) => const ProfileView(),
      ),
      RouteBuilder.goRoute(
        routeName: OrderDocsView.routeName,
        builder: (context, state) {
          final args = state.extra as Map<String, dynamic>;

          return OrderDocsView(stat: args['stat'] as StatEntity);
        },
      ),
      RouteBuilder.goRoute(
        routeName: PdfPreviewView.routeName,
        builder: (context, state) {
          return PdfPreviewView(
            printedName: state.pathParameters['printedName'] ?? '0',
            executionNum: state.pathParameters['executionNum'] ?? '0',
          );
        },
      ),
      RouteBuilder.goRoute(
        routeName: NotificationsView.routeName,
        builder: (context, state) => const NotificationsView(),
      ),
      RouteBuilder.goRoute(
        routeName: AddCachedDocView.routeName,
        builder: (context, state) {
          final args = state.extra as Map<String, dynamic>;
          return AddCachedDocView(
            cachedDoc: args['cachedDoc'] as CachedDocEntity,
            subCategoryId: args['subCategoryId'] as int,
          );
        },
      ),
      RouteBuilder.goRoute(
        routeName: CreateExpenseView.routeName,
        builder: (context, state) => const CreateExpenseView(),
      ),
      RouteBuilder.goRoute(
        routeName: ChangePassView.routeName,
        builder: (context, state) => const ChangePassView(),
      ),
    ];
    return routes;
  }
}
