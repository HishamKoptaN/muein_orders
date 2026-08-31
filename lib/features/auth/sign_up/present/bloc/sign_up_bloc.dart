import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import '../../domain/entities/sign_up_req_entity.dart';
import '../../domain/use_cases/sign_up_use_cases.dart';
part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@lazySingleton
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCases signUpUseCases;

  SignUpBloc({required this.signUpUseCases})
    : super(
        const SignUpState.loaded(
          signUpReq: SignUpReqEntity(),
          formzSubmissionStatus: .initial,
        ),
      ) {
    on<SignUpEvent>((event, emit) async {
      await event.when(
        signUp: () async {
          await state.mapOrNull(
            loaded: (state) async {
              try {
                emitCustomLoaded(
                  emit: emit,
                  loaded: state,
                  formzSubmissionStatus: .inProgress,
                );
                await signUpUseCases.signUp(signUpReq: state.signUpReq).then((
                  result,
                ) async {
                  await result.when(
                    success: (_) async {
                      emit(const .success());
                    },
                    failure: (apiErrorModel) {
                      emitCustomFailure(
                        emit: emit,
                        apiErrorModel: apiErrorModel,
                      );
                    },
                  );
                });
              } catch (e, s) {
                emitCustomFailure(
                  emit: emit,
                  apiErrorModel: ErrorInfo(message: 'خطأ: ${e.toString()}'),
                );
              } finally {
                emitCustomLoaded(emit: emit, loaded: state);
              }
            },
          );
        },
        dataChanged: (signUpReq) async {
          await state.mapOrNull(
            loaded: (state) async {
              emitCustomLoaded(emit: emit, loaded: state, signUpReq: signUpReq);
            },
          );
        },
      );
    });
  }
  void emitCustomLoaded({
    required Emitter<SignUpState> emit,
    required _Loaded loaded,
    SignUpReqEntity? signUpReq,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      loaded.copyWith(
        signUpReq: signUpReq ?? loaded.signUpReq,
        formzSubmissionStatus:
            formzSubmissionStatus ??
            (Formz.validate([
                  signUpReq?.name ?? const GenericFormInput.pure(),
                  signUpReq?.email ?? const GenericFormInput.pure(),
                  signUpReq?.phone ?? const GenericFormInput.pure(),
                  ConfirmPasswordFormInput.dirty(
                    value: signUpReq?.password?.value ?? '',
                    password: signUpReq?.confirmPassword?.value ?? '',
                  ),
                ])
                ? .success
                : .failure),
      ),
    );
  }

  void emitCustomFailure({
    required Emitter<SignUpState> emit,
    required ErrorInfo apiErrorModel,
  }) {
    return emit(SignUpState.failure(error: apiErrorModel.message));
  }
}
