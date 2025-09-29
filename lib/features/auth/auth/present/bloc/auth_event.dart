part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.check() = _Check;
  const factory AuthEvent.signedOut() = _SignedOut;
  const factory AuthEvent.forceRefresh() = _ForceRefresh;
  const factory AuthEvent.emitAuthenticated() =
      _EmitAuthenticated;
}
