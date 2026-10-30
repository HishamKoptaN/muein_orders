import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';

part 's3_state.freezed.dart';

@freezed
class S3State with _$S3State {
  const factory S3State.initial({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
  }) = _Initial;

  const factory S3State.loading() = _Loading;

  const factory S3State.success() = _Success;

  const factory S3State.failure({required String message}) = _Failure;
}
