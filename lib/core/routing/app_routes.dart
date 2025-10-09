import '../../features/auth/auth_choice/present/views/auth_choice_view.dart';
import '../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../features/auth/sign_up/present/views/sign_up_views.dart';
import '../../features/instructions/present/view/instructions_view.dart';
import '../../features/language/view/select_language.dart';
import '../../features/orders/present/views/orders_view.dart';
import '../../features/splash/start_view.dart';

class AppRoutes {
  static const start = StartView.routeName;
  static const instructions = InstructionsView.routeName;
  static const selectLanguage = SelectLanguageView.routeName;
  static const authChoice = AuthChoiceView.routeName;
  static const signIn = SignInView.routeName;
  static const signUp = SignUpView.routeName;
  static const forgotPass = ForgotPassView.routeName;
  static const orders = OrdersView.routeName;
}
