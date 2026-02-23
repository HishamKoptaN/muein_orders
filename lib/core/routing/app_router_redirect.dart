import '../../features/auth/auth/present/views/auth_view.dart';
import '../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../features/auth/sign_up/present/views/sign_up_views.dart';
import '../../features/cached_docs/present/view/add_cached_doc_view.dart';
import '../../features/home/present/view/home_view.dart';
import '../../features/instructions/present/view/instructions_view.dart';
import '../../features/notifications/present/view/notifications_view.dart';
import '../../features/orders/present/views/orders_view.dart';
import '../../features/profile/present/views/profile_view.dart';

class AppRouterRedirect {
  static const Set<String> public = {
    AuthView.routeName,
    SignInView.routeName,
    SignUpView.routeName,
    ForgotPassView.routeName,
  };
  static const Set<String> authenticatedOnly = {
    HomeView.routeName,
    NotificationsView.routeName,
    OrderDocsView.routeName,
    InstructionsView.routeName,
    ProfileView.routeName,
    AddCachedDocView.routeName,
  };
}
