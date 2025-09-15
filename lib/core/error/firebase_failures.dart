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
    super.message = 'No internet connection. Please check your network settings.',
    super.code = 'offline',
    super.error,
  });
}

/// Thrown when there's an error communicating with Firebase servers
class ServerFailure extends FirebaseFailure {
  const ServerFailure({
    super.message = 'An error occurred while communicating with the server.',
    super.code = 'server_error',
    super.error,
  });
}

/// Thrown when the provided password is too weak
class WeakPasswordFailure extends FirebaseFailure {
  const WeakPasswordFailure({
    super.message = 'The password provided is too weak. Please choose a stronger password.',
    super.code = 'weak_password',
    super.error,
  });
}

/// Thrown when creating an account with an email that already exists
class ExistedAccountFailure extends FirebaseFailure {
  const ExistedAccountFailure({
    super.message = 'An account already exists with this email address.',
    super.code = 'email_already_in_use',
    super.error,
  });
}

/// Thrown when no user is found with the provided credentials
class NoUserFailure extends FirebaseFailure {
  const NoUserFailure({
    super.message = 'No user found with these credentials. Please check and try again.',
    super.code = 'user_not_found',
    super.error,
  });
}

/// Thrown when the provided password is incorrect
class WrongPasswordFailure extends FirebaseFailure {
  const WrongPasswordFailure({
    super.message = 'Incorrect password. Please try again.',
    super.code = 'wrong_password',
    super.error,
  });
}

/// Thrown when password and confirmation password don't match
class UnmatchedPassFailure extends FirebaseFailure {
  const UnmatchedPassFailure({
    super.message = 'Passwords do not match. Please try again.',
    super.code = 'passwords_do_not_match',
    super.error,
  });
}

/// Thrown when a user is not logged in but authentication is required
class NotLoggedInFailure extends FirebaseFailure {
  const NotLoggedInFailure({
    super.message = 'You must be logged in to perform this action.',
    super.code = 'not_authenticated',
    super.error,
  });
}

/// Thrown when an email verification is required but not completed
class EmailNotVerifiedFailure extends FirebaseFailure {
  const EmailNotVerifiedFailure({
    super.message = 'Please verify your email address before proceeding.',
    super.code = 'email_not_verified',
    super.error,
  });
}

/// Thrown when too many requests are made in a short period
class TooManyRequestsFailure extends FirebaseFailure {
  /// The time to wait before making another request (in seconds)
  final Duration? retryAfter;

  const TooManyRequestsFailure({
    super.message = 'Too many requests. Please try again later.',
    super.code = 'too_many_requests',
    this.retryAfter,
    super.error,
  });

  @override
  List<Object?> get props => [...super.props, retryAfter];
}

/// Thrown when the user's account has been disabled
class UserDisabledFailure extends FirebaseFailure {
  const UserDisabledFailure({
    super.message = 'This account has been disabled. Please contact support.',
    super.code = 'user_disabled',
    super.error,
  });
}

/// Thrown when the authentication token has expired
class TokenExpiredFailure extends FirebaseFailure {
  const TokenExpiredFailure({
    super.message = 'Your session has expired. Please log in again.',
    super.code = 'token_expired',
    super.error,
  });
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
