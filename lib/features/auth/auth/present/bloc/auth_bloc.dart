import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/usecases/auth_use_casees.dart';
part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase authUseCases;

  AuthBloc({
    required this.authUseCases,
  }) : super(
          const AuthState.loading(),
        ) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          check: () async {
            final res = await authUseCases.check();
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
            final res = await authUseCases.check();
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
            emit(
              const AuthState.authenticated(),
            );
          },
          signedOut: () async {
            final res = await authUseCases.signOut();
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
