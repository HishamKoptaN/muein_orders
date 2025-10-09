import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'failures.dart';

part 'api_error_model.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
)
class ApiErrorModel extends Equatable {
  final String? message;
  final int? statusCode;
  final dynamic data;
  @JsonKey(name: 'error')
  final String? error;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'instance')
  final String? instance;

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

  /// From Failure → ApiErrorModel
  factory ApiErrorModel.fromFailure(Failure failure) {
    return failure.map(
      serverFailure: (e) => ApiErrorModel(
        message: e.message,
        statusCode: 500,
        error: 'ServerFailure',
      ),
      cacheFailure: (e) => ApiErrorModel(
        message: e.message,
        statusCode: 500,
        error: 'CacheFailure',
      ),
      networkFailure: (e) => ApiErrorModel(
        message: e.message,
        statusCode: 0,
        error: 'NetworkFailure',
      ),
      invalidEmailOrPassword: (_) => const ApiErrorModel(
        message: 'Invalid email or password',
        statusCode: 401,
        error: 'InvalidEmailOrPassword',
      ),
      emailAlreadyInUse: (_) => const ApiErrorModel(
        message: 'Email already in use',
        statusCode: 400,
        error: 'EmailAlreadyInUse',
      ),
      invalidEmail: (_) => const ApiErrorModel(
        message: 'Invalid email format',
        statusCode: 400,
        error: 'InvalidEmail',
      ),
      weakPassword: (_) => const ApiErrorModel(
        message: 'Password is too weak',
        statusCode: 400,
        error: 'WeakPassword',
      ),
      userDisabled: (_) => const ApiErrorModel(
        message: 'This user has been disabled',
        statusCode: 403,
        error: 'UserDisabled',
      ),
      userNotLoggedIn: (_) => const ApiErrorModel(
        message: 'User not logged in',
        statusCode: 401,
        error: 'UserNotLoggedIn',
      ),
    );
  }

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

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
}
