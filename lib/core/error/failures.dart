import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();
  const factory Failure.serverFailure({required String message}) =
      ServerFailure;
  const factory Failure.networkFailure(
      {required String message, String? code}) = NetworkFailure;
  const factory Failure.cacheFailure({required String message, String? code}) =
      CacheFailure;

  const factory Failure.invalidEmailOrPassword() = InvalidEmailOrPassword;
  const factory Failure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory Failure.invalidEmail() = InvalidEmail;
  const factory Failure.weakPassword() = WeakPassword;
  const factory Failure.userDisabled() = UserDisabled;
  const factory Failure.userNotLoggedIn() = UserNotLoggedIn;

  String get errorMessage => when(
        serverFailure: (message) => message,
        networkFailure: (message, _) => message,
        cacheFailure: (message, _) => message,
        invalidEmailOrPassword: () => 'Invalid email or password',
        emailAlreadyInUse: () => 'Email is already in use',
        invalidEmail: () => 'The email address is not valid',
        weakPassword: () => 'The password is too weak',
        userDisabled: () => 'This account has been disabled',
        userNotLoggedIn: () => 'User is not logged in',
      );
}
