import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'api_error_model.dart';

/// A comprehensive error handler for API requests that converts various types of errors
/// into standardized [ApiErrorModel] objects.
///
/// This handler supports:
/// - Dio network errors
/// - Server error responses
/// - Response parsing errors
/// - Unexpected error formats
class ApiErrorHandler {
  static final _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      colors: true,
    ),
  );

  /// Handles API errors and returns a standardized [ApiErrorModel].
  ///
  /// [error]: The error object to handle, typically from a Dio request
  /// [stackTrace]: Optional stack trace for better error tracking
  static ApiErrorModel handle({
    required dynamic error,
    StackTrace? stackTrace,
  }) {
    _logger.e('API Error:', error: error, stackTrace: stackTrace);

    if (error is DioException) {
      return _handleDioError(error);
    }

    // Handle other types of errors
    if (error is Map<String, dynamic>) {
      return _parseErrorResponse(error);
    }

    if (error is String) {
      return ApiErrorModel(
        message: error,
        statusCode: 500,
        error: 'client_error',
      );
    }

    return const ApiErrorModel(
      message: 'An unexpected error occurred',
      statusCode: 500,
      error: 'unexpected_error',
    );
  }

  /// Handles Dio-specific errors
  static ApiErrorModel _handleDioError(DioException error) {
    final response = error.response;
    final statusCode = response?.statusCode ?? 500;
    
    // Handle different types of Dio errors
    switch (error.type) {
      case DioExceptionType.connectionError:
        return const ApiErrorModel(
          message: 'Unable to connect to the server. Please check your internet connection.',
          statusCode: 0,
          error: 'connection_error',
        );
        
      case DioExceptionType.connectionTimeout:
        return const ApiErrorModel(
          message: 'Connection timeout. The server took too long to respond.',
          statusCode: 408,
          error: 'connection_timeout',
        );
        
      case DioExceptionType.sendTimeout:
        return const ApiErrorModel(
          message: 'Request timeout. Please try again.',
          statusCode: 408,
          error: 'send_timeout',
        );
        
      case DioExceptionType.receiveTimeout:
        return const ApiErrorModel(
          message: 'Response timeout. The server took too long to send data.',
          statusCode: 408,
          error: 'receive_timeout',
        );
        
      case DioExceptionType.badResponse:
        if (response?.data != null) {
          return _parseErrorResponse(
            response!.data,
            statusCode: statusCode,
          );
        }
        return ApiErrorModel(
          message: _getHttpErrorMessage(statusCode) ?? 'An error occurred',
          statusCode: statusCode,
          error: 'http_${statusCode}_error',
        );
        
      case DioExceptionType.cancel:
        return const ApiErrorModel(
          message: 'Request was cancelled',
          statusCode: -1,
          error: 'request_cancelled',
        );
        
      case DioExceptionType.unknown:
        if (error.message?.contains('SocketException') == true) {
          return const ApiErrorModel(
            message: 'No internet connection. Please check your network settings.',
            statusCode: 0,
            error: 'no_internet',
          );
        }
        return ApiErrorModel(
          message: error.message ?? 'An unknown error occurred',
          statusCode: statusCode,
          error: 'unknown_error',
        );
      default:
        return const ApiErrorModel(
          message: 'An unexpected error occurred',
          statusCode: 500,
          error: 'unexpected_error',
        );
    }
  }

  /// Parses error response from server
  static ApiErrorModel _parseErrorResponse(
    dynamic data, {
    int statusCode = 500,
  }) {
    try {
      if (data is Map<String, dynamic>) {
        // Try to parse as ApiErrorModel
        try {
          return ApiErrorModel.fromJson(data);
        } catch (_) {
          // Fallback to manual parsing if standard parsing fails
          final message = data['message'] ?? 
                        data['error'] ?? 
                        data['error_description'] ??
                        'An error occurred';
          return ApiErrorModel(
            message: message.toString(),
            statusCode: statusCode,
            error: data['code']?.toString() ?? 'api_error',
            data: data,
          );
        }
      }
      
      if (data is String) {
        return ApiErrorModel(
          message: data,
          statusCode: statusCode,
          error: 'server_error',
        );
      }
      
      return ApiErrorModel(
        message: 'An error occurred while processing the response',
        statusCode: statusCode,
        error: 'response_parse_error',
      );
    } catch (e) {
      return ApiErrorModel(
        message: 'Failed to parse error response',
        statusCode: statusCode,
        error: 'parse_error',
        data: {'original_error': e.toString()},
      );
    }
  }

  /// Returns a user-friendly error message based on HTTP status code
  static String? _getHttpErrorMessage(int statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad request. Please check your input and try again.';
      case 401:
        return 'Authentication failed. Please log in again.';
      case 403:
        return 'You do not have permission to access this resource.';
      case 404:
        return 'The requested resource was not found.';
      case 408:
        return 'Request timeout. Please try again.';
      case 429:
        return 'Too many requests. Please wait before trying again.';
      case 500:
        return 'Internal server error. Please try again later.';
      case 502:
      case 503:
      case 504:
        return 'The server is currently unavailable. Please try again later.';
      default:
        return null;
    }
  }
}
