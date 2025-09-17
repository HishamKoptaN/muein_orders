import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/send_password_reset_email_usecase.dart';

part 'forgot_pass_bloc.freezed.dart';
part 'forgot_pass_event.dart';
part 'forgot_pass_state.dart';

@injectable
class ForgotPasswordBloc extends Bloc<ForgotPassEvent, ForgotPassState> {
  final SendPasswordResetEmailUseCase sendPasswordResetEmailUseCase;
  ForgotPasswordBloc(this.sendPasswordResetEmailUseCase)
      : super(const ForgotPassState.initial()) {
    on<ForgotPassEvent>((event, emit) async {
      await event.map(
        sendPassResetEmail: (e) async {
          emit(const ForgotPassState.loading());
          try {
            await sendPasswordResetEmailUseCase.call(email: e.email);
            emit(const ForgotPassState.success());
          } catch (e) {
            emit(ForgotPassState.failure(e.toString()));
          }
        },
      );
    });
  }
}
