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
import '../../../../../core/utils/app_logger.dart';
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
          AppLogger.info('🚀 بدء تسجيل الدخول', tag: 'SIGNIN_BLOC');
          await state.maybeMap(
            loaded: (loaded) async {
              AppLogger.info(
                '📧 Email: ${loaded.email.value}',
                tag: 'SIGNIN_BLOC',
              );
              AppLogger.info(
                '🔑 Password length: ${loaded.password.value.length}',
                tag: 'SIGNIN_BLOC',
              );
              _emitCustomLoaded(
                emit: emit,
                loaded: loaded,
                formzSubmissionStatus: FormzSubmissionStatus.inProgress,
              );
              AppLogger.info('⏳ استدعاء UseCase...', tag: 'SIGNIN_BLOC');
              final result = await signInUseCases.signInWithEmailAndPassword(
                email: loaded.email.value,
                password: loaded.password.value,
              );
              AppLogger.info('✅ UseCase returned result', tag: 'SIGNIN_BLOC');
              await result.when(
                success: (data) async {
                  final tokenStr = data?.token;
                  AppLogger.info(
                    '✅ نجاح تسجيل الدخول! Token: ${tokenStr != null ? tokenStr.substring(0, 20) : "null"}...',
                    tag: 'SIGNIN_BLOC',
                  );
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
                  AppLogger.error(
                    '❌ فشل تسجيل الدخول: ${error.message}',
                    tag: 'SIGNIN_BLOC',
                    error: error,
                  );
                  AppLogger.debug(
                    '❌ Error details: ${error.toJson()}',
                    tag: 'SIGNIN_BLOC',
                  );
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
