import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/entities/change_pass_req_entity.dart';
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
          changePasswordReq: ChangePasswordReqEntity(),
          formzSubmissionStatus: .initial,
        ),
      ) {
    on<ChangePassEvent>((event, emit) async {
      await event.when(
        dataChanged: (changePasswordReq) async {
          state.mapOrNull(
            loaded: (state) {
              customLoaded(
                emit: emit,
                state: state,
                changePasswordReq: changePasswordReq,
              );
            },
          );
        },
        update: () async {
          await state.mapOrNull(
            loaded: (state) async {
              emit(state.copyWith(formzSubmissionStatus: .inProgress));
              final res = await sendPassResetEmailUseCase.update(
                password: state.changePasswordReq.password?.value ?? '',
              );
              await res.when(
                success: (_) {
                  emit(const ChangePassState.success());
                  customLoaded(emit: emit, state: state);
                },
                failure: (e) {
                  emit(.failure(e.toString()));
                  customLoaded(emit: emit, state: state);
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
    ChangePasswordReqEntity? changePasswordReq,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      state.copyWith(
        changePasswordReq: changePasswordReq ?? state.changePasswordReq,
        formzSubmissionStatus:
            Formz.validate([
              ConfirmPasswordFormInput.dirty(
                value: changePasswordReq?.password?.value ?? '',
                password: changePasswordReq?.confirmPassword?.value ?? '',
              ),
            ])
            ? .success
            : .initial,
      ),
    );
  }
}
