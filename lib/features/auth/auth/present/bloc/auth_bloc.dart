import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/auth_use_casees.dart';
part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase _authUseCase;

  AuthBloc(
    this._authUseCase,
  ) : super(const AuthState.loading()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          check: () async {
            emit(const AuthState.loading());
            final res = await _authUseCase.check();
            res?.when(
              success: (data) {
                if (data == true) {
                  emit(const AuthState.authenticated());
                } else {
                  emit(const AuthState.unauthenticated());
                }
              },
              failure: (error) => emit(
                const AuthState.unauthenticated(),
              ),
            );
          },
          forceRefresh: () async {
            emit(const AuthState.loading());
            final res = await _authUseCase.check();
            res?.when(
              success: (data) {
                if (data == true) {
                  emit(const AuthState.authenticated());
                } else {
                  emit(const AuthState.unauthenticated());
                }
              },
              failure: (error) => emit(const AuthState.unauthenticated()),
            );
          },
          emitAuthenticated: () async {
            emit(const AuthState.authenticated());
          },
          signedOut: () async {
            final res = await _authUseCase.signOut();
            res.when(
              success: (data) {
                emit(const AuthState.unauthenticated());
              },
              failure: (error) {
                emit(AuthState.failure(error.message ?? 'error'));
                emit(const AuthState.unauthenticated());
              },
            );
          },
        );
      },
    );
  }
}
