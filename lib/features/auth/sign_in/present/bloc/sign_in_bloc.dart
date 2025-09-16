import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/api_error_model.dart';
import '../../domain/use_cases/sign_in_use_cases.dart';
part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@lazySingleton
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCases signInUseCase;
  @factoryMethod
  SignInBloc({required this.signInUseCase})
      : super(const SignInState.loaded(
          email: EmailInput.pure(),
          password: PasswordInput.pure(),
          isValid: false,
          isPasswordVisible: false,
        )) {
    on<SignInEvent>((event, emit) async {
      event.when(
        emailChanged: (email) => _onEmailChanged(email, emit),
        passwordChanged: (password) => _onPasswordChanged(password, emit),
        signInWithCredentialsPressed: () =>
            _onSignInWithCredentialsPressed(emit),
        togglePasswordVisibility: () => _onTogglePasswordVisibility(emit),
      );
    });
  }

  void _onEmailChanged(String email, Emitter<SignInState> emit) {
    final emailInput = EmailInput.dirty(email);

    state.when(
      initial: () {
        emit(
          SignInState.loaded(
            email: emailInput,
            password: const PasswordInput.pure(),
            isValid: false,
            isPasswordVisible: false,
          ),
        );
      },
      loaded: (
        currentEmail,
        currentPassword,
        currentIsValid,
        currentIsPasswordVisible,
        status,
        errorMessage,
      ) {
        final isValid = Formz.validate([emailInput, currentPassword]);
        emit(
          SignInState.loaded(
            email: emailInput,
            password: currentPassword,
            isValid: isValid,
            isPasswordVisible: currentIsPasswordVisible,
            status: status,
            errorMessage: errorMessage,
          ),
        );
      },
      loading: () {},
      success: () {},
      failure: (ApiErrorModel error) {},
    );
  }

  void _onPasswordChanged(String password, Emitter<SignInState> emit) {
    final passwordInput = PasswordInput.dirty(password);
    state.when(
      initial: () {
        emit(
          SignInState.loaded(
            email: const EmailInput.pure(),
            password: passwordInput,
            isValid: false,
            isPasswordVisible: false,
          ),
        );
      },
      loaded: (
        currentEmail,
        currentPassword,
        currentIsValid,
        currentIsPasswordVisible,
        status,
        errorMessage,
      ) {
        final isValid = Formz.validate([currentEmail, passwordInput]);
        emit(
          SignInState.loaded(
            email: currentEmail,
            password: passwordInput,
            isValid: isValid,
            isPasswordVisible: currentIsPasswordVisible,
            status: status,
            errorMessage: errorMessage,
          ),
        );
      },
      loading: () {},
      success: () {},
      failure: (ApiErrorModel error) {},
    );
  }

  Future<void> _onSignInWithCredentialsPressed(
    Emitter<SignInState> emit,
  ) async {
    state.maybeWhen(
      loaded: (
        email,
        password,
        isValid,
        isPasswordVisible,
        status,
        errorMessage,
      ) async {
        if (!isValid) return;

        emit(
          SignInState.loaded(
            email: email,
            password: password,
            isValid: isValid,
            isPasswordVisible: isPasswordVisible,
            status: FormzSubmissionStatus.inProgress,
          ),
        );

        try {
          final result = await signInUseCase.signInWithEmailAndPassword(
            email: email.value,
            password: password.value,
          );

          result.fold(
            (error) {
              emit(
                SignInState.loaded(
                  email: email,
                  password: password,
                  isValid: isValid,
                  isPasswordVisible: isPasswordVisible,
                  status: FormzSubmissionStatus.failure,
                  errorMessage:
                      error.message ?? 'Failed to sign in. Please try again.',
                ),
              );
            },
            (_) {
              emit(const SignInState.success());
            },
          );
        } catch (e) {
          emit(
            SignInState.loaded(
              email: email,
              password: password,
              isValid: isValid,
              isPasswordVisible: isPasswordVisible,
              status: FormzSubmissionStatus.failure,
              errorMessage: 'An unexpected error occurred. Please try again.',
            ),
          );
        }
      },
      orElse: () {
        // If not in loaded state, initialize with default values
        emit(
          const SignInState.loaded(
            email: EmailInput.pure(),
            password: PasswordInput.pure(),
            isValid: false,
            isPasswordVisible: false,
          ),
        );
      },
    );
  }

  void _onTogglePasswordVisibility(Emitter<SignInState> emit) {
    state.maybeWhen(
      loaded:
          (email, password, isValid, isPasswordVisible, status, errorMessage) {
        emit(
          SignInState.loaded(
            email: email,
            password: password,
            isValid: isValid,
            isPasswordVisible: !isPasswordVisible,
            status: status,
            errorMessage: errorMessage,
          ),
        );
      },
      orElse: () {
        emit(
          const SignInState.loaded(
            email: EmailInput.pure(),
            password: PasswordInput.pure(),
            isValid: false,
            isPasswordVisible: true,
          ),
        );
      },
    );
  }

  Future<void> _onSignInWithGooglePressed(Emitter<SignInState> emit) async {
    emit(const SignInState.loading());

    try {
      final result = await signInUseCase.signInWithGoogle();

      result.fold(
        (error) {
          emit(SignInState.failure(error: error));
        },
        (_) {
          emit(const SignInState.success());
        },
      );
    } catch (e) {
      emit(
        SignInState.failure(
          error: ApiErrorModel(
            message: 'An unexpected error occurred. Please try again.',
          ),
        ),
      );
    }
  }

  Future<void> _onSignInWithApplePressed(Emitter<SignInState> emit) async {
    emit(const SignInState.loading());

    try {
      final result = await signInUseCase.signInWithApple();

      result.fold(
        (error) {
          emit(SignInState.failure(error: error));
        },
        (_) {
          emit(const SignInState.success());
        },
      );
    } catch (e) {
      emit(
        SignInState.failure(
          error: ApiErrorModel(
            message: 'An unexpected error occurred. Please try again.',
          ),
        ),
      );
    }
  }
}
