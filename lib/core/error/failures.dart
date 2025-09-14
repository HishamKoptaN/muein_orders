import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  // General failures
  const factory Failure.serverFailure({required String message}) = ServerFailure;
  
  const factory Failure.cacheFailure({required String message}) = CacheFailure;
  
  const factory Failure.networkFailure({required String message}) = NetworkFailure;
  
  // Auth failures
  const factory Failure.invalidEmailOrPassword() = InvalidEmailOrPassword;
  
  const factory Failure.emailAlreadyInUse() = EmailAlreadyInUse;
  
  const factory Failure.invalidEmail() = InvalidEmail;
  
  const factory Failure.weakPassword() = WeakPassword;
  
  const factory Failure.userDisabled() = UserDisabled;
  
  const factory Failure.userNotLoggedIn() = UserNotLoggedIn;
}
