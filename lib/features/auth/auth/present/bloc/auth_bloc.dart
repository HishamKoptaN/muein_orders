import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repo/auth_repo.dart';
import '../../domain/usecases/auth_use_casees.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase _authUseCase;
  final AuthRepo _repo;

  AuthBloc(this._authUseCase, this._repo) : super(const AuthState.loading()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          check: () async {
            emit(const AuthState.loading());
            try {
              final res = await _authUseCase.check();
              res?.when(
                success: (data) => emit(const AuthState.authenticated('')),
                failure: (error) => emit(const AuthState.unauthenticated()),
              );
            } catch (e) {
              emit(AuthState.failure(e.toString()));
              emit(const AuthState.unauthenticated());
            }
          },
          forceRefresh: () async {
            emit(const AuthState.loading());
            try {
              final res = await _authUseCase.check();
              res?.when(
                success: (data) => emit(const AuthState.authenticated('')),
                failure: (error) => emit(const AuthState.unauthenticated()),
              );
            } catch (e) {
              emit(AuthState.failure(e.toString()));
              emit(const AuthState.unauthenticated());
            }
          },
          signedOut: () async {
            await _repo.signOut();
            emit(const AuthState.unauthenticated());
          },
        );
      },
    );
  }
}
