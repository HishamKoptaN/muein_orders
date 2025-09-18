import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/api_error_model.dart';
import '../../../../../core/services/firebase_messaging_service.dart';
import '../../domain/use_cases/sign_up_use_cases.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@LazySingleton()
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCases signUpUseCases;
  final FirebaseMessagingService firebaseMessagingService;
  bool? _loading;
  int? _currentPage;
  String? _userableType;

  SignUpBloc({
    required this.signUpUseCases,
    required this.firebaseMessagingService,
  }) : super(const SignUpState.initial()) {
    on<SignUpEvent>(
      (event, emit) async {
        await event.when(
          signUp: () async {
            // try {
            //   _loading = true;
            //   emitCustomLoaded(emit: emit);
            //   late SignUpReqEntity signUpReq;
            //   signUpReq = SignUpReqEntity(
            //     firstName: _name?.value ?? '',
            //     lastName: _lastName?.value ?? '',
            //     phone: _phone?.value ?? '',
            //     email: _email?.value ?? '',
            //     password: _password?.value ?? '',
            //   );
            //   final result = await signUpUseCases.signUp(
            //     signUpReq: signUpReq,
            //   );
            //   await result.when(
            //     success: (res) async {
            //       // await SharedPrefHelper.setSecuredString(
            //       //   key: SharedPrefKeys.userToken,
            //       //   value: res?.token ?? '',
            //       // );
            //       // await getIt<AuthInterceptor>().updateToken();
            //       _loading = false;
            //       emit(const SignUpState.success());
            //     },
            //     failure: (apiErrorModel) async {
            //       emitCustomFailure(emit: emit, apiErrorModel: apiErrorModel);
            //     },
            //   );
            //   emitCustomLoaded(emit: emit);
            // } catch (e) {
            //   emitCustomFailure(
            //     emit: emit,
            //     apiErrorModel:
            //         ApiErrorModel(error: 'حدث خطأ غير متوقع، حاول لاحقًا.'),
            //   );
            //   emitCustomLoaded(emit: emit);
            // }
          },
          getSettings: () async {
            // final result = await signUpUseCases.getCountries();
            // await result.when(
            //   success: (
            //     signUpSettingsResModel,
            //   ) async {
            //     emitCustomLoaded(emit: emit);
            //   },
            //   failure: (
            //     apiErrorModel,
            //   ) async {
            //     emitCustomFailure(emit: emit, apiErrorModel: apiErrorModel);
            //     emitCustomLoaded(emit: emit);
            //   },
            // );
          },
          dataChanged: (
            name,
            email,
            phone,
            countryId,
            password,
            confirmPassword,
            obscurePassword,
            formStatus,
          ) {
            state.mapOrNull(
              loaded: (loaded) => emit(
                loaded.copyWith(
                  name: name ?? loaded.name,
                  email: email != null
                      ? EmailInput.dirty(email.value)
                      : loaded.email,
                  phone: phone != null
                      ? PhoneNumberInput.dirty(phone.value)
                      : loaded.phone,
                  countryId: countryId ?? loaded.countryId.value,
                  password: password != null
                      ? PasswordInput.dirty(password.value)
                      : loaded.password,
                  confirmPassword: confirmPassword != null
                      ? ConfirmPasswordInput.dirty(
                          value: confirmPassword.value ?? '',
                          password: password?.value ?? '',
                        )
                      : loaded.confirmPassword,
                  formzSubmissionStatus: Formz.validate(
                    [
                      email ?? loaded.email,
                    ],
                  )
                      ? FormzSubmissionStatus.success
                      : FormzSubmissionStatus.failure,
                ),
              ),
            );
          },
        );
      },
    );
  }

  void emitCustomFailure({
    required Emitter<SignUpState> emit,
    required ApiErrorModel apiErrorModel,
  }) {
    _loading = false;
    return emit(SignUpState.failure(apiErrorModel: apiErrorModel));
  }
}
