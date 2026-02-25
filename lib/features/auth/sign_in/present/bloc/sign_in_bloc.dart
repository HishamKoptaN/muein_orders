import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:form_inputs/form_inputs/email_input.dart';
import 'package:form_inputs/form_inputs/generic_formz_input.dart';
import 'package:form_inputs/form_inputs/password_input.dart' show PasswordInput;
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../auth/present/bloc/auth_bloc.dart';
import '../../domain/use_cases/sign_in_use_cases.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@lazySingleton
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCases signInUseCases;
  SignInBloc({required this.signInUseCases})
    : super(
        const SignInState.loaded(
          email: EmailInput.pure(),
          password: PasswordInput.pure(),
          obscurePassword: GenericFormzInput.pure(),
          formzSubmissionStatus: FormzSubmissionStatus.initial,
        ),
      ) {
    on<SignInEvent>((event, emit) async {
      await event.map(
        dataChanged: (e) async {
          await state.maybeMap(
            loaded: (loaded) {
              _emitCustomLoaded(
                emit: emit,
                loaded: loaded,
                email: e.email,
                password: e.password,
                obscurePassword: e.obscurePassword,
              );
            },
            orElse: () {},
          );
        },
        signInWithCredentialsPressed: (e) async {
          await state.maybeMap(
            loaded: (loaded) async {
              _emitCustomLoaded(
                emit: emit,
                loaded: loaded,
                formzSubmissionStatus: FormzSubmissionStatus.inProgress,
              );
              final result = await signInUseCases.signInWithEmailAndPassword(
                email: loaded.email.value,
                password: loaded.password.value,
              );
              await result.when(
                success: (data) async {
                  getIt<AuthBloc>().add(const AuthEvent.emitAuthenticated());
                  emit(
                    const SignInState.loaded(
                      email: EmailInput.pure(),
                      password: PasswordInput.pure(),
                      obscurePassword: GenericFormzInput.pure(),
                      formzSubmissionStatus: FormzSubmissionStatus.initial,
                    ),
                  );
                },
                failure: (error) {
                  emit(
                    SignInState.failure(
                      errorMessage: error.message ?? 'Login failed',
                    ),
                  );
                  _emitCustomLoaded(emit: emit, loaded: loaded);
                },
              );
            },
            orElse: () {},
          );
        },
      );
    });
  }

  void _emitCustomLoaded({
    required Emitter<SignInState> emit,
    required _Loaded? loaded,
    EmailInput? email,
    PasswordInput? password,
    GenericFormzInput? obscurePassword,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    if (loaded != null) {
      emit(
        SignInState.loaded(
          email: email ?? loaded.email,
          password: password ?? loaded.password,
          obscurePassword: obscurePassword ?? loaded.obscurePassword,
          formzSubmissionStatus:
              formzSubmissionStatus ??
              (Formz.validate([
                    password ?? loaded.password,
                    email ?? loaded.email,
                  ])
                  ? FormzSubmissionStatus.success
                  : FormzSubmissionStatus.failure),
        ),
      );
    }
  }
}
