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
  String toString() => '${runtimeType}(message: $message${code != null ? ', code: $code' : ''})';

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
    required String message,
    String? code,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when there's an error with caching operations
class CacheException extends AppException {
  const CacheException({
    String message = 'Cache operation failed',
    String? code,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code ?? 'cache_error',
          stackTrace: stackTrace,
        );
}

/// Exception thrown when there's an error with the server
class ServerException extends AppException {
  const ServerException({
    String message = 'Server error occurred',
    String? code,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code ?? 'server_error',
          stackTrace: stackTrace,
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
    String message = 'No internet connection',
    String? code = 'no_internet',
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when there's a validation error
class ValidationException extends AppException {
  /// The field that failed validation
  final String? field;

  const ValidationException({
    required String message,
    this.field,
    String? code = 'validation_error',
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          stackTrace: stackTrace,
        );

  @override
  List<Object?> get props => [...super.props, field];
}

/// Exception thrown when a user cancels an operation
class UserCancelledException extends AppException {
  const UserCancelledException({
    String message = 'Operation was cancelled by user',
    String? code = 'user_cancelled',
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when the provided password is too weak
class WeakPasswordException extends AppException {
  const WeakPasswordException({
    String message = 'The password provided is too weak',
    String? code = 'weak_password',
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when an account already exists
class ExistedAccountException extends AppException {
  const ExistedAccountException({
    String message = 'An account already exists with this email',
    String? code = 'email_exists',
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when no user is found
class NoUserException extends AppException {
  const NoUserException({
    String message = 'No user found with these credentials',
    String? code = 'user_not_found',
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when the password is incorrect
class WrongPasswordException extends AppException {
  const WrongPasswordException({
    String message = 'Incorrect password',
    String? code = 'wrong_password',
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when there are too many requests
class TooManyRequestsException extends AppException {
  /// The time to wait before making another request (in seconds)
  final int? retryAfter;

  const TooManyRequestsException({
    String message = 'Too many requests. Please try again later',
    String? code = 'too_many_requests',
    this.retryAfter,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          stackTrace: stackTrace,
        );

  @override
  List<Object?> get props => [...super.props, retryAfter];
}
