part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.check({Completer<void>? onComplete}) = _Check;
  const factory AuthEvent.authToken({Completer<void>? onComplete}) = _authToken;
  const factory AuthEvent.signedOut() = _SignedOut;
}
