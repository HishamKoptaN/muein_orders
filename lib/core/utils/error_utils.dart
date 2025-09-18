import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class ErrorUtils {
  /// Translates Firebase Auth error codes to user-friendly messages
  static String getFirebaseAuthErrorMessage(String? code) {
    debugPrint('Firebase Auth Error Code: $code'); // Debug log
    
    switch (code) {
      case 'user-not-found':
        return 'No user found with this email. Please check and try again.';
      case 'wrong-password':
        return 'Incorrect password. Please try again or reset your password.';
      case 'invalid-email':
        return 'The email address is not valid. Please check and try again.';
      case 'user-disabled':
        return 'This account has been disabled. Please contact support.';
      case 'too-many-requests':
        return 'Too many unsuccessful login attempts. Please try again later.';
      case 'operation-not-allowed':
        return 'Email/password accounts are not enabled.';
      case 'network-request-failed':
        return 'Network error. Please check your connection and try again.';
      default:
        return 'An unexpected error occurred. Please try again.';
    }
  }

  /// Handles generic exceptions and returns user-friendly messages
  static String getErrorMessage(dynamic error) {
    debugPrint('Error occurred: $error'); // Debug log
    
    if (error is FirebaseAuthException) {
      return getFirebaseAuthErrorMessage(error.code);
    } else if (error is FormatException) {
      return 'Invalid data format. Please try again.';
    } else if (error is TypeError) {
      return 'Type error occurred. Please contact support.';
    } else if (error is NoSuchMethodError) {
      return 'An unexpected error occurred. Please restart the app and try again.';
    } else if (error is String) {
      return error;
    } else {
      return 'An unexpected error occurred. Please try again.';
    }
  }
}
