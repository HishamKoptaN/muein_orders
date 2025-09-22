import 'dart:async';

import 'package:bloc/bloc.dart';
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
  EmailInput? _email;
  PasswordInput? _password;
  GenericFormzInput? _obscurePassword;
  SignInBloc({required this.signInUseCases})
      : super(
          const SignInState.loaded(
            email: EmailInput.pure(),
            password: PasswordInput.pure(),
            obscurePassword: GenericFormzInput.pure(),
            formzSubmissionStatus: FormzSubmissionStatus.initial,
          ),
        ) {
    on<SignInEvent>(
      (event, emit) async {
        await event.map(
          dataChanged: (e) async {
            _email = e.email ?? _email;
            _password = e.password ?? _password;
            _obscurePassword = e.obscurePassword ?? _obscurePassword;
            _emitCustomLoaded(
              emit,
            );
          },
          signInWithCredentialsPressed: (_) async =>
              await _onSignInWithCredentialsPressed(
            emit,
          ),
        );
      },
    );
  }

  Future<void> _onSignInWithCredentialsPressed(
    Emitter<SignInState> emit,
  ) async {
    _emitCustomLoaded(
      emit,
    );
    final result = await signInUseCases.signInWithEmailAndPassword(
      email: _email!.value,
      password: _password!.value,
    );
    result.when(
      success: (
        data,
      ) {
        emit(
          const SignInState.success(),
        );
        _emitCustomLoaded(
          emit,
        );
      },
      failure: (
        error,
      ) {
        emit(
          SignInState.failure(
            errorMessage: error.message ?? 'Login failed',
          ),
        );
        _emitCustomLoaded(
          emit,
        );
      },
    );
  }

  void _emitCustomLoaded(
    Emitter<SignInState> emit,
  ) {
    emit(
      SignInState.loaded(
        email: _email ?? const EmailInput.pure(),
        password: _password ?? const PasswordInput.pure(),
        obscurePassword: _obscurePassword ?? const GenericFormzInput.pure(),
        formzSubmissionStatus:
            Formz.validate([_email ?? const EmailInput.pure()])
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure,
      ),
    );
  }
}
