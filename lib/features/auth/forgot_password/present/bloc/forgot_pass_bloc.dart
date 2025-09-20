import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs/email_input.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/send_pass_reset_email_usecase.dart';

part 'forgot_pass_bloc.freezed.dart';
part 'forgot_pass_event.dart';
part 'forgot_pass_state.dart';

@injectable
class ForgotPassBloc extends Bloc<ForgotPassEvent, ForgotPassState> {
  final SendPassResetEmailUseCase sendPassResetEmailUseCase;
  EmailInput? email;

  ForgotPassBloc(this.sendPassResetEmailUseCase)
      : super(
          const ForgotPassState.loaded(
            email: EmailInput.pure(),
            formzSubmissionStatus: FormzSubmissionStatus.initial,
          ),
        ) {
    on<ForgotPassEvent>(
      (event, emit) async {
        await event.map(
          dataChanged: (e) async {
            email = e.email;
            customLoaded(
              emit: emit,
            );
          },
          sendPassResetEmail: (s) async {
            emit(
              ForgotPassState.loaded(
                email: email!,
                formzSubmissionStatus: FormzSubmissionStatus.inProgress,
              ),
            );
            final res = await sendPassResetEmailUseCase.call(
              email: email!.value,
            );
            await res.when(
              success: (_) {
                emit(
                  const ForgotPassState.success(),
                );
                customLoaded(emit: emit);
              },
              failure: (e) {
                emit(
                  ForgotPassState.failure(
                    e.toString(),
                  ),
                );
                customLoaded(emit: emit);
              },
            );
          },
        );
      },
    );
  }
  customLoaded({
    required Emitter<ForgotPassState> emit,
  }) {
    emit(
      ForgotPassState.loaded(
        email: email!,
        formzSubmissionStatus: Formz.validate(
          [
            email!,
          ],
        )
            ? FormzSubmissionStatus.success
            : FormzSubmissionStatus.failure,
      ),
    );
  }
}
