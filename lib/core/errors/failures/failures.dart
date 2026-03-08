import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const Failure._();
  const factory Failure.serverFailure({required String message}) =
      ServerFailure;
  const factory Failure.networkFailure({
    required String message,
    String? code,
  }) = NetworkFailure;
  const factory Failure.cacheFailure({required String message, String? code}) =
      CacheFailure;
  const factory Failure.invalidEmailOrPassword() = InvalidEmailOrPassword;
  const factory Failure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory Failure.invalidEmail() = InvalidEmail;
  const factory Failure.weakPassword() = WeakPassword;
  const factory Failure.userDisabled() = UserDisabled;
  const factory Failure.userNotLoggedIn() = UserNotLoggedIn;
}
