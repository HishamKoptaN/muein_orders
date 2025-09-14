import 'package:equatable/equatable.dart';

/// Base class for all Firebase-related failures in the application.
/// 
/// All Firebase-specific failures should extend this class to ensure consistent
/// error handling throughout the app.
abstract class FirebaseFailure extends Equatable {
  /// A human-readable error message
  final String message;

  /// An optional error code for programmatic handling
  final String? code;

  /// The original error object, if available
  final dynamic error;

  const FirebaseFailure({
    required this.message,
    this.code,
    this.error,
  });

  @override
  String toString() => 'FirebaseFailure: $message${code != null ? ' ($code)' : ''}';

  @override
  List<Object?> get props => [message, code];

  @override
  bool? get stringify => true;
}

/// Thrown when there's no internet connection
class OfflineFailure extends FirebaseFailure {
  const OfflineFailure({
    String message = 'No internet connection. Please check your network settings.',
    String? code = 'offline',
    dynamic error,
  }) : super(message: message, code: code, error: error);
}

/// Thrown when there's an error communicating with Firebase servers
class ServerFailure extends FirebaseFailure {
  const ServerFailure({
    String message = 'An error occurred while communicating with the server.',
    String? code = 'server_error',
    dynamic error,
  }) : super(message: message, code: code, error: error);
}

/// Thrown when the provided password is too weak
class WeakPasswordFailure extends FirebaseFailure {
  const WeakPasswordFailure({
    String message = 'The password provided is too weak. Please choose a stronger password.',
    String? code = 'weak_password',
    dynamic error,
  }) : super(message: message, code: code, error: error);
}

/// Thrown when creating an account with an email that already exists
class ExistedAccountFailure extends FirebaseFailure {
  const ExistedAccountFailure({
    String message = 'An account already exists with this email address.',
    String? code = 'email_already_in_use',
    dynamic error,
  }) : super(message: message, code: code, error: error);
}

/// Thrown when no user is found with the provided credentials
class NoUserFailure extends FirebaseFailure {
  const NoUserFailure({
    String message = 'No user found with these credentials. Please check and try again.',
    String? code = 'user_not_found',
    dynamic error,
  }) : super(message: message, code: code, error: error);
}

/// Thrown when the provided password is incorrect
class WrongPasswordFailure extends FirebaseFailure {
  const WrongPasswordFailure({
    String message = 'Incorrect password. Please try again.',
    String? code = 'wrong_password',
    dynamic error,
  }) : super(message: message, code: code, error: error);
}

/// Thrown when password and confirmation password don't match
class UnmatchedPassFailure extends FirebaseFailure {
  const UnmatchedPassFailure({
    String message = 'Passwords do not match. Please try again.',
    String? code = 'passwords_do_not_match',
    dynamic error,
  }) : super(message: message, code: code, error: error);
}

/// Thrown when a user is not logged in but authentication is required
class NotLoggedInFailure extends FirebaseFailure {
  const NotLoggedInFailure({
    String message = 'You must be logged in to perform this action.',
    String? code = 'not_authenticated',
    dynamic error,
  }) : super(message: message, code: code, error: error);
}

/// Thrown when an email verification is required but not completed
class EmailNotVerifiedFailure extends FirebaseFailure {
  const EmailNotVerifiedFailure({
    String message = 'Please verify your email address before proceeding.',
    String? code = 'email_not_verified',
    dynamic error,
  }) : super(message: message, code: code, error: error);
}

/// Thrown when too many requests are made in a short period
class TooManyRequestsFailure extends FirebaseFailure {
  /// The time to wait before making another request (in seconds)
  final Duration? retryAfter;

  const TooManyRequestsFailure({
    String message = 'Too many requests. Please try again later.',
    String? code = 'too_many_requests',
    this.retryAfter,
    dynamic error,
  }) : super(message: message, code: code, error: error);

  @override
  List<Object?> get props => [...super.props, retryAfter];
}

/// Thrown when the user's account has been disabled
class UserDisabledFailure extends FirebaseFailure {
  const UserDisabledFailure({
    String message = 'This account has been disabled. Please contact support.',
    String? code = 'user_disabled',
    dynamic error,
  }) : super(message: message, code: code, error: error);
}

/// Thrown when the authentication token has expired
class TokenExpiredFailure extends FirebaseFailure {
  const TokenExpiredFailure({
    String message = 'Your session has expired. Please log in again.',
    String? code = 'token_expired',
    dynamic error,
  }) : super(message: message, code: code, error: error);
}

/// Extension to convert Firebase exceptions to application failures
extension FirebaseExceptionMapper on Exception {
  /// Converts Firebase exceptions to application-specific failures
  FirebaseFailure toFirebaseFailure() {
    if (this is FirebaseFailure) {
      return this as FirebaseFailure;
    }
    
    // Handle Firebase Auth exceptions
    final errorMessage = toString();
    
    if (errorMessage.contains('network-request-failed')) {
      return const OfflineFailure();
    } else if (errorMessage.contains('email-already-in-use')) {
      return const ExistedAccountFailure();
    } else if (errorMessage.contains('user-not-found') || errorMessage.contains('wrong-password')) {
      return const WrongPasswordFailure();
    } else if (errorMessage.contains('weak-password')) {
      return const WeakPasswordFailure();
    } else if (errorMessage.contains('too-many-requests')) {
      return const TooManyRequestsFailure();
    } else if (errorMessage.contains('user-disabled')) {
      return const UserDisabledFailure();
    } else if (errorMessage.contains('requires-recent-login')) {
      return const TokenExpiredFailure();
    }
    
    // Default to server failure for unhandled exceptions
    return ServerFailure(
      message: 'An unexpected error occurred',
      code: 'unexpected_error',
      error: this,
    );
  }
}
