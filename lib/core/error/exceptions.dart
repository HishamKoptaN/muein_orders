import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

/// Base exception class for all application exceptions
/// 
/// This is the foundation for all custom exceptions in the application.
/// It includes a message, optional error code, and stack trace for better debugging.
abstract class AppException implements Exception, Equatable {
  /// A human-readable error message
  final String message;
  
  /// An optional error code that can be used for localization or specific error handling
  final String? code;
  
  /// The stack trace at the point where the exception was thrown
  final StackTrace? stackTrace;

  const AppException({
    required this.message,
    this.code,
    this.stackTrace,
  });

  @override
  String toString() => '$runtimeType(message: $message${code != null ? ', code: $code' : ''})';

  @override
  List<Object?> get props => [message, code];

  @override
  bool? get stringify => true;
}

/// A generic exception that can be used for general error cases
/// 
/// This is useful when you need to throw an exception with a custom message
/// but don't need a specific exception type.
class CustomException extends AppException {
  const CustomException({
    required super.message,
    super.code,
    super.stackTrace,
  });
}

/// Exception thrown when there's an error with caching operations
class CacheException extends AppException {
  const CacheException({
    super.message = 'Cache operation failed',
    String? code,
    super.stackTrace,
  }) : super(
          code: code ?? 'cache_error',
        );
}

/// Exception thrown when there's an error with the server
class ServerException extends AppException {
  const ServerException({
    super.message = 'Server error occurred',
    String? code,
    super.stackTrace,
  }) : super(
          code: code ?? 'server_error',
        );

  /// Creates a [ServerException] from a [DioException]
  factory ServerException.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerException(
          message: 'Connection timeout',
          code: 'connection_timeout',
        );
      case DioExceptionType.sendTimeout:
        return const ServerException(
          message: 'Send timeout',
          code: 'send_timeout',
        );
      case DioExceptionType.receiveTimeout:
        return const ServerException(
          message: 'Receive timeout',
          code: 'receive_timeout',
        );
      case DioExceptionType.badResponse:
        return ServerException(
          message: e.response?.data?['message']?.toString() ?? 
                 e.response?.statusMessage ?? 
                 'Bad response',
          code: e.response?.statusCode?.toString() ?? 'bad_response',
          stackTrace: e.stackTrace,
        );
      case DioExceptionType.cancel:
        return const ServerException(
          message: 'Request cancelled',
          code: 'request_cancelled',
        );
      case DioExceptionType.connectionError:
        return const ServerException(
          message: 'Connection error',
          code: 'connection_error',
        );
      case DioExceptionType.unknown:
      default:
        return ServerException(
          message: e.message ?? 'Unknown server error',
          code: 'unknown_error',
          stackTrace: e.stackTrace,
        );
    }
  }
}

/// Exception thrown when there's a network connectivity issue
class NetworkException extends AppException {
  const NetworkException({
    super.message = 'No internet connection',
    super.code = 'no_internet',
    super.stackTrace,
  });
}

/// Exception thrown when there's a validation error
class ValidationException extends AppException {
  /// The field that failed validation
  final String? field;

  const ValidationException({
    required super.message,
    this.field,
    super.code = 'validation_error',
    super.stackTrace,
  });

  @override
  List<Object?> get props => [...super.props, field];
}

/// Exception thrown when a user cancels an operation
class UserCancelledException extends AppException {
  const UserCancelledException({
    super.message = 'Operation was cancelled by user',
    super.code = 'user_cancelled',
    super.stackTrace,
  });
}

/// Exception thrown when the provided password is too weak
class WeakPasswordException extends AppException {
  const WeakPasswordException({
    super.message = 'The password provided is too weak',
    super.code = 'weak_password',
    super.stackTrace,
  });
}

/// Exception thrown when an account already exists
class ExistedAccountException extends AppException {
  const ExistedAccountException({
    super.message = 'An account already exists with this email',
    super.code = 'email_exists',
    super.stackTrace,
  });
}

/// Exception thrown when no user is found
class NoUserException extends AppException {
  const NoUserException({
    super.message = 'No user found with these credentials',
    super.code = 'user_not_found',
    super.stackTrace,
  });
}

/// Exception thrown when the password is incorrect
class WrongPasswordException extends AppException {
  const WrongPasswordException({
    super.message = 'Incorrect password',
    super.code = 'wrong_password',
    super.stackTrace,
  });
}

/// Exception thrown when there are too many requests
class TooManyRequestsException extends AppException {
  /// The time to wait before making another request (in seconds)
  final int? retryAfter;

  const TooManyRequestsException({
    super.message = 'Too many requests. Please try again later',
    super.code = 'too_many_requests',
    this.retryAfter,
    super.stackTrace,
  });

  @override
  List<Object?> get props => [...super.props, retryAfter];
}
