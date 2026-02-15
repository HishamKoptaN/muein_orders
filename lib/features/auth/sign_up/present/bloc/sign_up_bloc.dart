import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../auth/present/bloc/auth_bloc.dart';
import '../../domain/entities/signup_req_entity.dart';
import '../../domain/use_cases/sign_up_use_cases.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@lazySingleton
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCases signUpUseCases;
  GenericFormzInput? _name;
  PhoneNumberInput? _phone;
  EmailInput? _email;
  PasswordInput? _password;
  PasswordInput? _confirmPassword;
  bool? _obscurePassword;
  SignUpBloc({required this.signUpUseCases})
    : super(
        const SignUpState.loaded(
          name: GenericFormzInput.dirty(''),
          email: EmailInput.dirty(''),
          phone: PhoneNumberInput.dirty(''),
          password: PasswordInput.dirty(''),
          confirmPassword: PasswordInput.dirty(''),
          obscurePassword: true,
          formzSubmissionStatus: FormzSubmissionStatus.initial,
          confirmPasswordInput: ConfirmPasswordInput.dirty(
            value: '',
            password: '',
          ),
        ),
      ) {
    on<SignUpEvent>((event, emit) async {
      await event.when(
        signUp: () async {
          try {
            emitCustomLoaded(
              emit: emit,
              formzSubmissionStatus: FormzSubmissionStatus.inProgress,
            );
            const fcmToken = '';
            final signUpReq = SignUpReqEntity(
              name: _name!.value,
              phone: _phone!.value,
              email: _email!.value,
              password: _password!.value,
              fcmToken: fcmToken,
            );
            final result = await signUpUseCases.signUp(signUpReq: signUpReq);
            await result.when(
              success: (_) async {
                getIt<AuthBloc>().add(const AuthEvent.emitAuthenticated());
                emit(const SignUpState.success());
              },
              failure: (apiErrorModel) {
                emitCustomFailure(emit: emit, apiErrorModel: apiErrorModel);
              },
            );
          } catch (e, stackTrace) {
            debugPrint('Error during sign up: $e\n$stackTrace');
            emitCustomFailure(
              emit: emit,
              apiErrorModel: const ApiErrorModel(
                error: 'حدث خطأ غير متوقع، يرجى المحاولة مرة أخرى',
              ),
            );
          } finally {
            emitCustomLoaded(emit: emit);
          }
        },
        dataChanged:
            (name, email, phone, password, confirmPassword, obscurePassword) {
              _name = name ?? _name;
              _email = email ?? _email;
              _phone = phone ?? _phone;
              _password = password ?? _password;
              _confirmPassword = confirmPassword ?? _confirmPassword;
              _obscurePassword = obscurePassword ?? _obscurePassword;
              emitCustomLoaded(emit: emit);
            },
      );
    });
  }
  void emitCustomLoaded({
    required Emitter<SignUpState> emit,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      SignUpState.loaded(
        name: _name!,
        email: _email!,
        phone: _phone!,
        password: _password!,
        confirmPassword: _confirmPassword!,
        confirmPasswordInput: ConfirmPasswordInput.dirty(
          value: _confirmPassword!.value,
          password: _password!.value,
        ),
        obscurePassword: _obscurePassword ?? true,
        formzSubmissionStatus:
            formzSubmissionStatus ??
            (Formz.validate([
                  _name!,
                  _email!,
                  _phone!,
                  _password!,
                  ConfirmPasswordInput.dirty(
                    value: _password!.value,
                    password: _confirmPassword!.value,
                  ),
                ])
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure),
      ),
    );
  }

  void emitCustomFailure({
    required Emitter<SignUpState> emit,
    required ApiErrorModel apiErrorModel,
  }) {
    return emit(SignUpState.failure(error: apiErrorModel.error ?? ''));
  }
}
