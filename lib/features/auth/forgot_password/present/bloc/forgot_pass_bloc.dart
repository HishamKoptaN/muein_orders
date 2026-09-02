import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';
import '../../domain/usecases/send_pass_reset_email_usecase.dart';

part 'forgot_pass_bloc.freezed.dart';
part 'forgot_pass_event.dart';
part 'forgot_pass_state.dart';

@lazySingleton
class ForgotPassBloc extends Bloc<ForgotPassEvent, ForgotPassState> {
  final SendPassResetEmailUseCase sendPassResetEmailUseCase;
  EmailFormInput? email;

  ForgotPassBloc(this.sendPassResetEmailUseCase)
    : super(
        const ForgotPassState.loaded(
          email: .pure(),
          formzSubmissionStatus: .initial,
        ),
      ) {
    on<ForgotPassEvent>((event, emit) async {
      await event.map(
        dataChanged: (e) async {
          email = e.email;
          customLoaded(emit: emit);
        },
        sendPassResetEmail: (s) async {
          emit(
            ForgotPassState.loaded(
              email: email!,
              formzSubmissionStatus: .inProgress,
            ),
          );
          final res = await sendPassResetEmailUseCase.sendPassResetEmail(
            email: email!.value,
          );
          await res.when(
            success: (_) {
              emit(const .success());
              customLoaded(emit: emit, formzSubmissionStatus: .initial);
            },
            failure: (e) {
              emit(.failure(e.toString()));
              customLoaded(emit: emit);
            },
          );
        },
      );
    });
  }
  customLoaded({
    required Emitter<ForgotPassState> emit,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      ForgotPassState.loaded(
        email: email!,
        formzSubmissionStatus:
            formzSubmissionStatus ??
            (Formz.validate([email!]) ? .success : .failure),
      ),
    );
  }
}
