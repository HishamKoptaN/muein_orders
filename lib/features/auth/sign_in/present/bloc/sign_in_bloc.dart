import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:form_inputs/form_inputs/email_input.dart';
import 'package:form_inputs/form_inputs/generic_formz_input.dart';
import 'package:form_inputs/form_inputs/password_input.dart' show PasswordInput;
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/use_cases/sign_in_use_cases.dart';
part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCases signInUseCases;
  StreamSubscription<User?>? _authSubscription;

  SignInBloc({required this.signInUseCases})
      : super(
          const SignInState.loaded(
            email: EmailInput.pure(),
            password: PasswordInput.pure(),
            rememberMe: GenericFormzInput.pure(),
            obscurePassword: GenericFormzInput.pure(),
            formzSubmissionStatus: FormzSubmissionStatus.initial,
          ),
        ) {
    // Listen for authentication state changes
    _authSubscription = signInUseCases.onAuthStateChanged.listen(
      (user) {
        if (user == null) {
          add(const SignInEvent.signedOut());
        } else {
          // When user is authenticated, we can get the token if needed
          signInUseCases.getAuthToken().then(
            (token) {
              if (token != null) {
                // Handle token if needed
              }
            },
          );
        }
      },
    );

    on<SignInEvent>(
      (event, emit) {
        event.map(
          dataChanged: (e) async {
            if (state is _Loaded) {
              final loaded = state as _Loaded;
              emit(
                loaded.copyWith(
                  email: e.email ?? loaded.email,
                  password: e.password ?? loaded.password,
                  rememberMe: e.rememberMe ?? loaded.rememberMe,
                  obscurePassword: e.obscurePassword ?? loaded.obscurePassword,
                ),
              );
            }
          },
          signInWithCredentialsPressed: (_) =>
              _onSignInWithCredentialsPressed(emit),
          signedOut: (_) => _onSignedOut(emit),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel();
    return super.close();
  }

  void _onSignedOut(Emitter<SignInState> emit) {}
  Future<void> _onSignInWithCredentialsPressed(
    Emitter<SignInState> emit,
  ) async {
    // if (state.email.value.isEmpty || state.password.value.isEmpty) {
    //   emit(
    //     state.copyWith(
    //       status: SignInStatus.failure,
    //       errorMessage: 'Please enter both email and password',
    //       isAuthenticated: false,
    //     ),
    //   );
    //   return;
    // }

    // emit(state.copyWith(status: SignInStatus.loading, errorMessage: null));

    // try {
    //   final result = await signInUseCases.signInWithEmailAndPassword(
    //     email: state.email.value,
    //     password: state.password.value,
    //     rememberMe: state.rememberMe.value,
    //   );

    //   result.fold(
    //     (failure) => emit(
    //       state.copyWith(
    //         status: SignInStatus.failure,
    //         errorMessage: failure.message ?? 'Authentication failed',
    //         isAuthenticated: false,
    //       ),
    //     ),
    //     (token) => emit(
    //       state.copyWith(
    //         status: SignInStatus.success,
    //         token: token,
    //         isAuthenticated: true,
    //         errorMessage: null,
    //       ),
    //     ),
    //   );
    // } catch (e) {
    //   emit(
    //     state.copyWith(
    //       status: SignInStatus.failure,
    //       errorMessage: 'An unexpected error occurred',
    //       isAuthenticated: false,
    //     ),
    //   );
    // }
  }
}
