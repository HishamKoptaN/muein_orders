import 'package:go_router/go_router.dart' show RouteBase;

import '../../../features/auth/auth/present/views/auth_view.dart';
import '../../../features/auth/auth_choice/present/views/auth_choice_view.dart';
import '../../../features/auth/change_pass/present/views/change_pass_view.dart';
import '../../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../../features/auth/sign_up/present/views/sign_up_views.dart';
import '../../../features/orders_features/cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../features/orders_features/cached_docs/present/view/add_cached_doc_view.dart';
import '../../../features/orders_features/cached_docs/present/view/widgets/pick_location_view.dart';
import '../../../features/financial/present/view/create_expense.dart';
import '../../../features/financial/present/view/expenses_view.dart';
import '../../../features/financial/present/view/financial_account_view.dart';
import '../../../features/home_features/home/domain/entities/order_type_res_entity.dart';
import '../../../features/home_features/home/present/view/stats_view.dart';
import '../../../features/instructions/present/view/instructions_view.dart';
import '../../../features/orders_features/docs/domain/entities/doc_entity.dart';
import '../../language/view/select_language.dart';
import '../../../features/notifications/present/view/notifications_view.dart';
import '../../../features/orders_features/salla_orders_items/present/views/salla_order_items_view.dart';
import '../../../features/orders_features/salla_orders_items/present/views/sitcker_pdf/sitcker_pdf_preview_view.dart';
import '../../../features/profile/present/views/profile_view.dart';
import '../../../features/splash/start_view.dart';
import '../utils/route_builder.dart' show RouteBuilder;

class RouteConfig {
  static List<RouteBase> get routes {
    final routes = [
      RouteBuilder.goRoute(
        routeName: StartView.routeName,
        builder: (context, state) {
          return const StartView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: AuthView.routeName,
        builder: (context, state) {
          return const AuthView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: InstructionsView.routeName,
        builder: (context, state) {
          return const InstructionsView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: SelectLanguageView.routeName,
        builder: (context, state) {
          return const SelectLanguageView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: AuthChoiceView.routeName,
        builder: (context, state) {
          return const AuthChoiceView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: ForgotPassView.routeName,
        builder: (context, state) {
          return const ForgotPassView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: SignInView.routeName,
        builder: (context, state) {
          return const SignInView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: SignUpView.routeName,
        builder: (context, state) {
          return const SignUpView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: StatsView.routeName,
        builder: (context, state) {
          return const StatsView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: ExpensesView.routeName,
        builder: (context, state) {
          return const ExpensesView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: ProfileView.routeName,
        builder: (context, state) {
          return const ProfileView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: SallaOrderItemsView.routeName,
        builder: (context, state) {
          return SallaOrderItemsView(stat: state.extra as StatEntity);
        },
      ),
      RouteBuilder.goRoute(
        routeName: PdfPreviewView.routeName,
        builder: (context, state) {
          return PdfPreviewView(
            printedName: state.pathParameters['printedName'] ?? '',
            executionNum: state.pathParameters['executionNum'] ?? '',
          );
        },
      ),
      RouteBuilder.goRoute(
        routeName: NotificationsView.routeName,
        builder: (context, state) {
          return const NotificationsView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: AddCachedDocView.routeName,
        builder: (context, state) {
          final args = state.extra as Map<String, dynamic>?;
          return AddCachedDocView(
            doc: args?['cachedDoc'] as DocEntity,
            subCategoryId: args?['subCategoryId'] as int? ?? 0,
          );
        },
      ),
      RouteBuilder.goRoute(
        routeName: FinancialAccountView.routeName,
        builder: (context, state) {
          return const FinancialAccountView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: CreateExpenseView.routeName,
        builder: (context, state) {
          return const CreateExpenseView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: ChangePassView.routeName,
        builder: (context, state) {
          return const ChangePassView();
        },
      ),
      RouteBuilder.goRoute(
        routeName: PickLocationView.routeName,
        builder: (context, state) {
          return const PickLocationView();
        },
      ),
    ];
    return routes;
  }
}
