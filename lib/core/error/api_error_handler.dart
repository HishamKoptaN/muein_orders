import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static final _logger = Logger(
    printer: PrettyPrinter(methodCount: 0, errorMethodCount: 5, colors: true),
  );

  static ApiErrorModel handle({
    required dynamic error,
    StackTrace? stackTrace,
  }) {
    // تحسين تسجيل الخطأ للتعامل مع جميع أنواع البيانات
    try {
      if (error is DioException) {
        _logger.e(
          'Dio Error: ${error.message}',
          error: error.error,
          stackTrace: error.stackTrace ?? stackTrace,
        );
      } else if (error is Map) {
        _logger.e('API Error: $error', stackTrace: stackTrace);
      } else {
        _logger.e('Error: ${error.toString()}', stackTrace: stackTrace);
      }
    } catch (e) {
      _logger.e('Error while logging error: $e', stackTrace: stackTrace);
    }

    if (error is DioException) {
      return _handleDioError(error);
    }

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

  static ApiErrorModel _handleDioError(DioException error) {
    final response = error.response;
    final statusCode = response?.statusCode ?? 500;

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
          return _parseErrorResponse(response!.data, statusCode: statusCode);
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

  static ApiErrorModel _parseErrorResponse(
    dynamic data, {
    int statusCode = 500,
  }) {
    try {
      if (data is Map<String, dynamic>) {
        try {
          // Handle Laravel API response format
          if (data.containsKey('success') && data['success'] == false) {
            dynamic errorMessage = data['message'] ?? data['error'] ?? 'An error occurred';
            dynamic errorDetails = data['errors'] ?? data['error'];
            
            String messageStr = 'An error occurred';
            if (errorMessage != null) {
              if (errorMessage is String) {
                messageStr = errorMessage;
              } else if (errorMessage is Map) {
                messageStr = errorMessage.values.join('\n');
              } else {
                messageStr = errorMessage.toString();
              }
            }
            
            // Handle validation errors (422)
            if (statusCode == 422 && data['errors'] is Map) {
              final errors = (data['errors'] as Map).values.expand((e) => e is List ? e : [e]);
              messageStr = errors.join('\n');
            }
            
            return ApiErrorModel(
              message: messageStr,
              statusCode: statusCode,
              error: data['error']?.toString() ?? 'api_error',
              data: data,
            );
          }
          
          // Default to fromJson if not a standard error response
          return ApiErrorModel.fromJson(data);
        } catch (_) {
          // Fallback error handling
          dynamic message = data['message'] ?? data['error'] ?? 'An error occurred';
          return ApiErrorModel(
            message: message.toString(),
            statusCode: statusCode,
            error: data['error']?.toString() ?? 'api_error',
            data: data,
          );
        }
      }
      
      // Handle string responses
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
