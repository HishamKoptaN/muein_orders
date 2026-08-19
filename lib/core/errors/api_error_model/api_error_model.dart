import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_model.freezed.dart';

@freezed
abstract class ErrorInfo with _$ErrorInfo {
  const factory ErrorInfo({
    @Default('') String title,
    @Default('') String message,
    Object? data,
    @Default(false) bool reportToCrashlytics,
    @Default(false) bool fatal,
  }) = _ErrorInfo;
}
