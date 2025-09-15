import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/send_password_reset_email_usecase.dart';
import 'forgot_password_event.dart';
import 'forgot_password_state.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final SendPasswordResetEmailUseCase sendPasswordResetEmailUseCase;
  ForgotPasswordBloc(this.sendPasswordResetEmailUseCase)
      : super(const ForgotPasswordState.initial()) {
    on<ForgotPasswordEvent>((event, emit) async {
      await event.map(
        sendPasswordResetEmail: (e) async {
          emit(const ForgotPasswordState.loading());
          try {
            await sendPasswordResetEmailUseCase.call(email: e.email);
            emit(const ForgotPasswordState.success());
          } catch (e) {
            emit(ForgotPasswordState.failure(e.toString()));
          }
        },
      );
    });
  }
}
