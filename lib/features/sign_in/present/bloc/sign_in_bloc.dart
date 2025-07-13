import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import '../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../core/database/cache/shared_pref_keys.dart';
import '../../../../core/di/api_module.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/form_inputs/email_input.dart';
import '../../../../core/form_inputs/password_input.dart';
import '../../../../core/single_tone/user_singleton.dart';
import '../../../../core/errors/api_error_model.dart';
import '../../../../core/errors/firebase_failures.dart';
import '../../data/models/fire_sign_in_req_body_model.dart';
import '../../data/models/sign_in_req_body_model.dart';
import '../../domain/use_cases/sign_in_use_cases.dart';
import 'sign_in_event.dart';
import 'sign_in_state.dart';
import 'package:injectable/injectable.dart' show LazySingleton;

@LazySingleton()
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCases signInUseCases;
  final FirebaseAuth firebaseAuth;
  EmailInput? _email;
  LoginPasswordInput? _password;
  SignInBloc({
    required this.signInUseCases,
    required this.firebaseAuth,
  }) : super(const SignInState.loaded(
          email: EmailInput.pure(),
          password: LoginPasswordInput.pure(),
          formzSubmissionStatus: FormzSubmissionStatus.initial,
        )) {
    on<SignInEvent>(
      (event, emit) async {
        await event.when(
          fireSignIn: () async {
            emitCustomLoaded(
                emit: emit,
                formzSubmissionStatus: FormzSubmissionStatus.inProgress);
            final result = await signInUseCases.fireSignIn(
              fireSignInReqBodyModel: FireSignInReqBodyModel(
                email: _email?.value,
                password: _password?.value,
              ),
            );
            await result.fold(
              (firebaseFailure) {
                emitFailure(
                  emit: emit,
                  apiErrorModel: mapFailureToError(
                    firebaseFailure: firebaseFailure,
                  ),
                );
              },
              (userCredential) async {
                await userCredential.user?.getIdToken().then(
                  (idToken) async {
                    log(idToken!);
                    final res = await signInUseCases.authToken(
                      signInReqBodyModel: SignInReqBodyModel(
                        idToken: idToken,
                      ),
                    );
                    await res.when(
                      success: (
                        res,
                      ) async {
                        UserDataSingleton.instance.user = res;
                        await SharedPrefHelper.setSecuredString(
                          key: SharedPrefKeys.userToken,
                          value: res?.token ?? '',
                        );
                        await getIt<AuthInterceptor>().updateToken();
                        emit(
                          const SignInState.success(),
                        );
                      },
                      failure: (
                        apiErrorModel,
                      ) async {
                        emitFailure(
                          emit: emit,
                          apiErrorModel: apiErrorModel,
                        );
                      },
                    );
                  },
                );
              },
            );
          },
          updateData: (email, password) {
            if (email != null) {
              _email = EmailInput.dirty(email);
            }
            if (password != null) {
              _password = LoginPasswordInput.dirty(password);
            }
            emitCustomLoaded(emit: emit);
          },
        );
      },
    );
  }
  ApiErrorModel mapFailureToError({
    required FirebaseFailure firebaseFailure,
  }) {
    if (firebaseFailure is ExistedAccountFailure) {
      return ApiErrorModel(error: 'Account already exists');
    } else if (firebaseFailure is WrongPasswordFailure) {
      return ApiErrorModel(error: 'Incorrect password');
    } else if (firebaseFailure is OfflineFailure) {
      return ApiErrorModel(error: 'No internet connection');
    } else {
      return ApiErrorModel(error: 'Unknown error occurred');
    }
  }

  void emitFailure({
    required Emitter<SignInState> emit,
    required ApiErrorModel apiErrorModel,
  }) {
    emit(SignInState.failure(apiErrorModel: apiErrorModel));
    emitCustomLoaded(emit: emit);
  }

  void emitCustomLoaded({
    required Emitter<SignInState> emit,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    return emit(
      SignInState.loaded(
        email: _email ?? const EmailInput.pure(),
        password: _password ??= const LoginPasswordInput.pure(),
        formzSubmissionStatus: formzSubmissionStatus ??
            (Formz.validate([
              _email ?? const EmailInput.pure(),
              _password ?? const LoginPasswordInput.pure(),
            ])
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.initial),
      ),
    );
  }
}
