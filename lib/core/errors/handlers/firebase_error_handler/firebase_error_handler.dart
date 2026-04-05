import 'package:firebase_auth/firebase_auth.dart';

import '../../api_error_model/api_error_model.dart';

class FirebaseErrorHandler {
  static ApiErrorModel handleAuthError(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return const ApiErrorModel(message: 'عذراً، هذا الحساب غير موجود.');
      case 'wrong-password':
        return const ApiErrorModel(message: 'كلمة المرور غير صحيحة');
      case 'email-already-in-use':
        return const ApiErrorModel(message: 'البريد الإلكتروني مسجل مسبقاً');
      case 'invalid-email':
        return const ApiErrorModel(message: 'البريد الإلكتروني غير صحيح');
      case 'user-disabled':
        return const ApiErrorModel(message: 'الحساب معطل');
      case 'network-request-failed':
        return const ApiErrorModel(message: 'تحقق من اتصالك بالإنترنت');
      case 'too-many-requests':
        return const ApiErrorModel(
          message: 'محاولات كثيرة خاطئة، يرجى المحاولة لاحقاً.',
        );
      default:
        return const ApiErrorModel(
          message: 'حدث خطأ أثناء تسجيل الدخول، حاول مجدداً.',
        );
    }
  }
}
