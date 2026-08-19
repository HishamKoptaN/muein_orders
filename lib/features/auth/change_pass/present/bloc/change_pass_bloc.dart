import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../../domain/usecases/change_pass_usecase.dart';

part 'change_pass_bloc.freezed.dart';
part 'change_pass_event.dart';
part 'change_pass_state.dart';

@lazySingleton
class ChangePassBloc extends Bloc<ChangePassEvent, ChangePassState> {
  final SendPassResetEmailUseCase sendPassResetEmailUseCase;

  ChangePassBloc(this.sendPassResetEmailUseCase)
    : super(
        const ChangePassState.loaded(
          password: PasswordFormInput.pure(),
          confirmPassword: PasswordFormInput.pure(),
          formzSubmissionStatus: FormzSubmissionStatus.initial,
        ),
      ) {
    on<ChangePassEvent>((event, emit) async {
      await event.when(
        dataChanged: (password, confirmPassword) async {
          state.mapOrNull(
            loaded: (state) {
              final isValid = Formz.validate([
                ConfirmPasswordFormInput.dirty(
                  value: password?.value ?? state.password.value,
                  password:
                      confirmPassword?.value ?? state.confirmPassword.value,
                ),
              ]);
              customLoaded(
                emit: emit,
                state: state,
                password: password ?? state.password,
                confirmPassword: confirmPassword ?? state.confirmPassword,
                formzSubmissionStatus: isValid
                    ? FormzSubmissionStatus.success
                    : FormzSubmissionStatus.initial,
              );
            },
          );
        },
        update: () async {
          await state.mapOrNull(
            loaded: (state) async {
              emit(
                state.copyWith(
                  formzSubmissionStatus: FormzSubmissionStatus.inProgress,
                ),
              );
              final res = await sendPassResetEmailUseCase.update(
                password: state.password.value,
              );
              await res.when(
                success: (_) {
                  emit(const ChangePassState.success());
                  customLoaded(
                    emit: emit,
                    state: state,
                    password: const PasswordFormInput.pure(),
                    confirmPassword: const PasswordFormInput.pure(),
                  );
                },
                failure: (e) {
                  emit(ChangePassState.failure(e.toString()));
                  customLoaded(
                    emit: emit,
                    state: state,
                    password: const PasswordFormInput.pure(),
                    confirmPassword: const PasswordFormInput.pure(),
                  );
                },
              );
            },
          );
        },
      );
    });
  }
  customLoaded({
    required Emitter<ChangePassState> emit,
    required _Loaded state,
    PasswordFormInput? password,
    PasswordFormInput? confirmPassword,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      ChangePassState.loaded(
        password: password ?? state.password,
        confirmPassword: confirmPassword ?? state.confirmPassword,
        formzSubmissionStatus:
            formzSubmissionStatus ?? FormzSubmissionStatus.initial,
      ),
    );
  }
}
