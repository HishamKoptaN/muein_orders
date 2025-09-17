import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'failures.dart';

part 'api_error_model.g.dart';

/// A standardized error model for API responses.
///
/// This model is used to represent error responses from the API in a consistent
/// format across the application. It supports various error formats and includes
/// useful metadata for debugging and user feedback.
@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
)
class ApiErrorModel extends Equatable {
  /// A human-readable message describing the error.
  final String? message;

  /// The HTTP status code associated with the error, if applicable.
  final int? statusCode;

  /// Additional error data that might be useful for debugging.
  final dynamic data;

  /// A machine-readable error code or identifier.
  @JsonKey(name: 'error')
  final String? error;

  /// A URI reference that identifies the problem type.
  @JsonKey(name: 'type')
  final String? type;

  /// A short, human-readable summary of the problem type.
  @JsonKey(name: 'title')
  final String? title;

  /// A human-readable explanation specific to this occurrence of the problem.
  @JsonKey(name: 'detail')
  final String? detail;

  /// A URI reference that identifies the specific occurrence of the problem.
  @JsonKey(name: 'instance')
  final String? instance;

  /// Creates a new [ApiErrorModel] instance.
  /// Creates an [ApiErrorModel] from a [Failure] object
  factory ApiErrorModel.fromFailure(Failure failure) {
    return failure.map(
      serverFailure: (e) => ApiErrorModel(
        message: e.message,
        statusCode: 500, // Default status code for server errors
        error: 'ServerFailure',
      ),
      cacheFailure: (e) => ApiErrorModel(
        message: e.message,
        error: 'CacheFailure',
      ),
      networkFailure: (e) => ApiErrorModel(
        message: e.message,
        error: 'NetworkFailure',
      ),
      invalidEmailOrPassword: (_) => ApiErrorModel(
        message: 'Invalid email or password',
        statusCode: 401,
        error: 'InvalidEmailOrPassword',
      ),
      emailAlreadyInUse: (_) => ApiErrorModel(
        message: 'Email already in use',
        statusCode: 400,
        error: 'EmailAlreadyInUse',
      ),
      invalidEmail: (_) => ApiErrorModel(
        message: 'Invalid email format',
        statusCode: 400,
        error: 'InvalidEmail',
      ),
      weakPassword: (_) => ApiErrorModel(
        message: 'Password is too weak',
        statusCode: 400,
        error: 'WeakPassword',
      ),
      userDisabled: (_) => ApiErrorModel(
        message: 'This user has been disabled',
        statusCode: 403,
        error: 'UserDisabled',
      ),
      userNotLoggedIn: (_) => ApiErrorModel(
        message: 'User not logged in',
        statusCode: 401,
        error: 'UserNotLoggedIn',
      ),
    );
  }

  const ApiErrorModel({
    this.message,
    this.statusCode,
    this.data,
    this.error,
    this.type,
    this.title,
    this.detail,
    this.instance,
  });

  /// Creates a new [ApiErrorModel] from a JSON map.
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return ApiErrorModel(
      message: json['message'] ?? json['error'] ?? json['detail'],
      statusCode: json['statusCode'] ?? json['status'] ?? json['code'],
      data: json['data'] ?? json['errors'],
      error: json['error'],
      type: json['type'],
      title: json['title'],
      detail: json['detail'],
      instance: json['instance'],
    );
  }

  /// Converts this [ApiErrorModel] to a JSON map.
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  @override
  String toString() => '''
    ApiErrorModel(
      message: $message, 
      error: $error, 
      statusCode: $statusCode, 
      type: $type,
      title: $title,
      detail: $detail,
      instance: $instance,
      data: $data
    )
  ''';

  @override
  List<Object?> get props => [
        message,
        statusCode,
        error,
        type,
        title,
        detail,
        instance,
        data,
      ];

  /// Creates a copy of this [ApiErrorModel] with the given fields replaced by
  /// the non-null values from the parameters.
  ApiErrorModel copyWith({
    String? message,
    int? statusCode,
    dynamic data,
    String? error,
    String? type,
    String? title,
    String? detail,
    String? instance,
  }) {
    return ApiErrorModel(
      message: message ?? this.message,
      statusCode: statusCode ?? this.statusCode,
      data: data ?? this.data,
      error: error ?? this.error,
      type: type ?? this.type,
      title: title ?? this.title,
      detail: detail ?? this.detail,
      instance: instance ?? this.instance,
    );
  }
}
