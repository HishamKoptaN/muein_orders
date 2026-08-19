import '../../features/auth/auth/present/views/auth_view.dart';
import '../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../features/auth/sign_up/present/views/sign_up_views.dart';
import '../../features/orders_features/cached_docs/present/view/add_cached_doc_view.dart';
import '../../features/home_features/home/present/view/stats_view.dart';
import '../../features/instructions/present/view/instructions_view.dart';
import '../../features/notifications/present/view/notifications_view.dart';
import '../../features/orders_features/orders_items/present/views/salla_order_items_view.dart';
import '../../features/profile/present/views/profile_view.dart';

class AppRouterRedirect {
  static const Set<String> public = {
    '/${AuthView.routeName}',
    '/${SignInView.routeName}',
    '/${SignUpView.routeName}',
    '/${ForgotPassView.routeName}',
  };
  static const Set<String> authenticatedOnly = {
    '/${StatsView.routeName}',
    '/${SallaOrderItemsView.routeName}',
    '/${NotificationsView.routeName}',
    '/${AddCachedDocView.routeName}',
    '/${InstructionsView.routeName}',
    '/${ProfileView.routeName}',
  };
}
