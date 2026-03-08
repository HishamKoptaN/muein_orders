import 'package:flutter/foundation.dart';

class FirebaseErrorHandler {
  static String getAuthErrorMessage(String? code) {
    debugPrint('Firebase Auth Error Code: $code');
    switch (code) {
      case 'user-not-found':
        return 'لم يتم العثور على مستخدم بهذا البريد الإلكتروني';
      case 'wrong-password':
        return 'كلمة المرور غير صحيحة. يرجى المحاولة مرة أخرى';
      case 'invalid-email':
        return 'عنوان البريد الإلكتروني غير صالح';
      case 'user-disabled':
        return 'تم تعطيل هذا الحساب';
      case 'too-many-requests':
        return 'عدد كبير جداً من المحاولات. يرجى المحاولة لاحقاً';
      case 'email-already-in-use':
        return 'البريد الإلكتروني مستخدم بالفعل';
      case 'weak-password':
        return 'كلمة المرور ضعيفة جداً';
      default:
        return 'حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى';
    }
  }
}

extension FirebaseAuthExceptionExtension on String {
  String get firebaseAuthMessage =>
      FirebaseErrorHandler.getAuthErrorMessage(this);
}
