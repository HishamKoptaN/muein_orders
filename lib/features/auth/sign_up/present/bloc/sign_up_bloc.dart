import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/database/shared_pref_helper.dart';
import '../../../../../core/database/shared_pref_keys.dart';
import '../../../../../core/error/api_error_model.dart';
import '../../../../../core/services/firebase_messaging_service.dart';
import '../../domain/entities/signup_req_entity.dart';
import '../../domain/use_cases/sign_up_use_cases.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@LazySingleton()
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCases signUpUseCases;
  final FirebaseMessagingService firebaseMessagingService;
  // Initialize with default values to prevent null errors
  GenericFormzInput _name = const GenericFormzInput.pure();
  PhoneNumberInput _phone = const PhoneNumberInput.pure();
  EmailInput _email = const EmailInput.pure();
  PasswordInput _password = const PasswordInput.pure();
  ConfirmPasswordInput _confirmPassword =
      const ConfirmPasswordInput.pure(password: '');
  GenericFormzInput _obscurePassword = const GenericFormzInput.pure();
  SignUpBloc({
    required this.signUpUseCases,
    required this.firebaseMessagingService,
  }) : super(
          const SignUpState.loaded(
            name: GenericFormzInput.pure(),
            email: EmailInput.pure(),
            phone: PhoneNumberInput.pure(),
            password: PasswordInput.pure(),
            confirmPassword: ConfirmPasswordInput.pure(
              password: '',
            ),
            obscurePassword: GenericFormzInput.pure(),
            formzSubmissionStatus: FormzSubmissionStatus.initial,
          ),
        ) {
    on<SignUpEvent>(
      (event, emit) async {
        await event.when(
          signUp: () async {
            try {
              // Update UI to show loading state
              emitCustomLoaded(
                emit: emit,
                formzSubmissionStatus: FormzSubmissionStatus.inProgress,
              );

              // Get FCM token
              final fcmToken =
                  await firebaseMessagingService.getFCMToken() ?? '';

              // Create sign up request
              final signUpReq = SignUpReqEntity(
                name: _name.value,
                phone: _phone.value,
                email: _email.value,
                password: _password.value,
                fcmToken: fcmToken,
              );

              // Call sign up use case
              final result = await signUpUseCases.signUp(
                signUpReq: signUpReq,
              );

              // Handle the result
              await result.when(
                success: (res) async {
                  if (res?.token != null) {
                    // Log the received token in the requested format
                    debugPrint('[log] 📌 تم استلام id_token: ${res!.token}');
                    // Emit success state
                    emit(const SignUpState.success());
                  } else {
                    debugPrint('[log] ❌ لم يتم استلام التوكن في الرد');
                    throw Exception('No token received from server');
                  }
                },
                failure: (apiErrorModel) {
                  emitCustomFailure(emit: emit, apiErrorModel: apiErrorModel);
                },
              );
            } catch (e, stackTrace) {
              debugPrint('Error during sign up: $e\n$stackTrace');
              emitCustomFailure(
                emit: emit,
                apiErrorModel: const ApiErrorModel(
                  error: 'حدث خطأ غير متوقع، يرجى المحاولة مرة أخرى',
                ),
              );
            } finally {
              // Always ensure we're in a valid state after operation
              emitCustomLoaded(emit: emit);
            }
          },
          dataChanged: (
            name,
            email,
            phone,
            password,
            confirmPassword,
            obscurePassword,
            formStatus,
          ) {
            if (name != null) {
              _name = name;
            }
            if (email != null) {
              _email = email;
            }
            if (phone != null) {
              _phone = phone;
            }
            if (password != null) {
              _password = password;
            }
            if (confirmPassword != null) {
              _confirmPassword = confirmPassword;
            }
            if (obscurePassword != null) {
              _obscurePassword = obscurePassword;
            }
            emitCustomLoaded(
              emit: emit,
            );
          },
        );
      },
    );
  }
  void emitCustomLoaded({
    required Emitter<SignUpState> emit,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    try {
      emit(
        SignUpState.loaded(
          name: _name,
          email: _email,
          phone: _phone,
          password: _password,
          confirmPassword: _confirmPassword,
          obscurePassword: _obscurePassword,
          formzSubmissionStatus: formzSubmissionStatus ??
              (Formz.validate([_email])
                  ? FormzSubmissionStatus.success
                  : FormzSubmissionStatus.failure),
        ),
      );
    } catch (e, stackTrace) {
      // Log the error and emit a failure state
      debugPrint('Error in emitCustomLoaded: $e\n$stackTrace');
      emit(
        const SignUpState.failure(
          error: 'حدث خطأ غير متوقع، يرجى المحاولة مرة أخرى',
        ),
      );
    }
  }

  void emitCustomFailure({
    required Emitter<SignUpState> emit,
    required ApiErrorModel apiErrorModel,
  }) {
    return emit(SignUpState.failure(error: apiErrorModel.error ?? ''));
  }
}
