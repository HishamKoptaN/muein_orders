import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:form_inputs/form_inputs/email_input.dart';
import 'package:form_inputs/form_inputs/generic_formz_input.dart';
import 'package:form_inputs/form_inputs/password_input.dart' show PasswordInput;
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/sign_in_use_cases.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCases signInUseCases;
  StreamSubscription<User?>? _authSubscription;
  SignInBloc({required this.signInUseCases})
      : super(
          const SignInState.loaded(
            email: EmailInput.pure(),
            password: PasswordInput.pure(),
            obscurePassword: GenericFormzInput.pure(),
            formzSubmissionStatus: FormzSubmissionStatus.initial,
          ),
        ) {
    _authSubscription = signInUseCases.onAuthStateChanged.listen(
      (user) {
        if (user == null) {
          add(const SignInEvent.signedOut());
        } else {}
      },
    );
    on<SignInEvent>(
      (event, emit) async {
        await event.map(
          dataChanged: (e) async {
            if (state is _Loaded) {
              final loaded = state as _Loaded;
              emit(
                loaded.copyWith(
                  email: e.email ?? loaded.email,
                  password: e.password ?? loaded.password,
                  obscurePassword: e.obscurePassword ?? loaded.obscurePassword,
                  formzSubmissionStatus: Formz.validate(
                    [e.email ?? loaded.email],
                  )
                      ? FormzSubmissionStatus.success
                      : FormzSubmissionStatus.failure,
                ),
              );
            }
          },
          signInWithCredentialsPressed: (_) async =>
              await _onSignInWithCredentialsPressed(emit),
          signedOut: (_) async => _onSignedOut(emit),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel();
    return super.close();
  }

  Future<void> _onSignInWithCredentialsPressed(
    Emitter<SignInState> emit,
  ) async {
    final loaded = state as _Loaded;
    emit(
      loaded.copyWith(
        formzSubmissionStatus: FormzSubmissionStatus.inProgress,
      ),
    );
    try {
      final result = await signInUseCases.signInWithEmailAndPassword(
        email: loaded.email.value,
        password: loaded.password.value,
      );
      result.when(
        success: (data) => emit(
          const SignInState.success(),
        ),
        failure: (error) {
          emit(
            SignInState.failure(
              errorMessage: error.message ?? 'Login failed',
            ),
          );
          emit(
            loaded.copyWith(
              formzSubmissionStatus: FormzSubmissionStatus.initial,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        SignInState.failure(
          errorMessage: e.toString(),
        ),
      );
      emit(
        loaded.copyWith(
          formzSubmissionStatus: FormzSubmissionStatus.initial,
        ),
      );
    }
  }

  void _onSignedOut(Emitter<SignInState> emit) {}
}
