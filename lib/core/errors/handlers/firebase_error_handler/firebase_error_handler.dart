import 'package:firebase_auth/firebase_auth.dart';

import '../../api_error_model/api_error_model.dart';

class FirebaseErrorHandler {
  static ErrorInfo handleAuthError(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return const ErrorInfo(message: 'عذراً، هذا الحساب غير موجود.');
      case 'wrong-password':
        return const ErrorInfo(message: 'كلمة المرور غير صحيحة');
      case 'email-already-in-use':
        return const ErrorInfo(message: 'البريد الإلكتروني مسجل مسبقاً');
      case 'invalid-email':
        return const ErrorInfo(message: 'البريد الإلكتروني غير صحيح');
      case 'user-disabled':
        return const ErrorInfo(message: 'الحساب معطل');
      case 'network-request-failed':
        return const ErrorInfo(message: 'تحقق من اتصالك بالإنترنت');
      case 'too-many-requests':
        return const ErrorInfo(
          message: 'محاولات كثيرة خاطئة، يرجى المحاولة لاحقاً.',
        );
      default:
        return const ErrorInfo(
          message: 'حدث خطأ أثناء تسجيل الدخول، حاول مجدداً.',
        );
    }
  }
}
