import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/entities/sign_up_form_entity.dart';
import '../../domain/use_cases/sign_up_use_cases.dart';
part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@lazySingleton
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCases signUpUseCases;
  SignUpFormEntity _formData;

  SignUpBloc({required this.signUpUseCases})
    : _formData = const SignUpFormEntity(),
      super(
        const SignUpState.loaded(
          name: .dirty(value: ''),
          email: .dirty(''),
          phone: .dirty(''),
          password: .dirty(''),
          confirmPassword: .dirty(''),
          obscurePassword: .dirty(true),
          formzSubmissionStatus: .initial,
          confirmPasswordInput: .dirty(value: '', password: ''),
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
            final signUpReq = _formData.toRequestEntity();
            final result = await signUpUseCases.signUp(signUpReq: signUpReq);
            await result.when(
              success: (_) async {
                emit(const SignUpState.success());
              },
              failure: (apiErrorModel) {
                emitCustomFailure(emit: emit, apiErrorModel: apiErrorModel);
              },
            );
          } catch (e, s) {
            emitCustomFailure(
              emit: emit,
              apiErrorModel: ErrorInfo(message: 'خطأ: ${e.toString()}'),
            );
          } finally {
            emitCustomLoaded(emit: emit);
          }
        },
        dataChanged:
            (name, email, phone, password, confirmPassword, obscurePassword) {
              _formData = _formData.copyWith(
                name: name,
                email: email,
                phone: phone,
                password: password,
                confirmPassword: confirmPassword,
                obscurePassword: obscurePassword,
              );
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
        name: _formData.name,
        email: _formData.email,
        phone: _formData.phone,
        password: _formData.password,
        confirmPassword: _formData.confirmPassword,
        confirmPasswordInput: .dirty(
          value: _formData.confirmPassword.value,
          password: _formData.password.value,
        ),
        obscurePassword: _formData.obscurePassword,
        formzSubmissionStatus:
            formzSubmissionStatus ?? _formData.submissionStatus,
      ),
    );
  }

  void emitCustomFailure({
    required Emitter<SignUpState> emit,
    required ErrorInfo apiErrorModel,
  }) {
    return emit(SignUpState.failure(error: apiErrorModel.message ?? ''));
  }
}
