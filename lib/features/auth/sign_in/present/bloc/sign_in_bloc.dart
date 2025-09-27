import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:form_inputs/form_inputs/email_input.dart';
import 'package:form_inputs/form_inputs/generic_formz_input.dart';
import 'package:form_inputs/form_inputs/password_input.dart' show PasswordInput;
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../auth/present/bloc/auth_bloc.dart';
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
  SignInBloc({
    required this.signInUseCases,
  }) : super(
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
              emit: emit,
            );
          },
          signInWithCredentialsPressed: (_) async =>
              await _onSignInWithCredentialsPressed(
            emit: emit,
          ),
        );
      },
    );
  }

  Future<void> _onSignInWithCredentialsPressed({
    required Emitter<SignInState> emit,
  }) async {
    _emitCustomLoaded(
      emit: emit,
      formzSubmissionStatus: FormzSubmissionStatus.inProgress,
    );
    final result = await signInUseCases.signInWithEmailAndPassword(
      email: _email!.value,
      password: _password!.value,
    );
    result.when(
      success: (
        data,
      ) {
        getIt<AuthBloc>().add(const AuthEvent.emitAuthenticated());
        Future.delayed(const Duration(seconds: 3));
        emit(
          const SignInState.success(),
        );
        _emitCustomLoaded(
          emit: emit,
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
          emit: emit,
        );
      },
    );
  }

  void _emitCustomLoaded({
    required Emitter<SignInState> emit,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      SignInState.loaded(
        email: _email ?? const EmailInput.pure(),
        password: _password ?? const PasswordInput.pure(),
        obscurePassword: _obscurePassword ?? const GenericFormzInput.pure(),
        formzSubmissionStatus: formzSubmissionStatus ??
            (Formz.validate([
              _email ?? const EmailInput.pure(),
              _password ?? const PasswordInput.pure()
            ])
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure),
      ),
    );
  }
}
