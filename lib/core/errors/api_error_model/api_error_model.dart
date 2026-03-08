import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_model.freezed.dart';
part 'api_error_model.g.dart';

@freezed
abstract class ApiErrorModel with _$ApiErrorModel {
  const factory ApiErrorModel({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'errors') List<String>? errors,
    int? statusCode,
  }) = _ApiErrorModel;
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
}
