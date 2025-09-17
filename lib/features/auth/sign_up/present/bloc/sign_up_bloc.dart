import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/api_error_model.dart';
import '../../../../../core/services/firebase_messaging_service.dart';
import '../../domain/use_cases/sign_up_use_cases.dart';
import 'sign_up_event.dart';
import 'sign_up_state.dart';

@LazySingleton()
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCases signUpUseCases;
  final FirebaseMessagingService firebaseMessagingService;
  bool? _loading;
  int? _currentPage;
  String? _userableType;
  //! Fields for the first view
  GenericFormzInput? _name;
  GenericFormzInput? _lastName;
  GenericFormzInput? _adminId;
  EmailInput? _email;
  PhoneNumberInput? _phone;
  PhoneNumberInput? _mobileNumber;
  //! Fields for the second view
  GenericFormzInput? _countrtyId;
  GenericFormzInput? _cityId;
  PasswordInput? _password;
  ConfirmPasswordInput? _confirmPassword;
  GenericCheckboxInput? _agree;
  FormzSubmissionStatus? _firstViewFormzSubmissionStatus;
  FormzSubmissionStatus? _formzSubmissionStatus;
  FormzSubmissionStatus? _opportunityLookingformzSubmissionStatus;
  SignUpBloc({
    required this.signUpUseCases,
    required this.firebaseMessagingService,
  }) : super(const SignUpState.initial()) {
    on<SignUpEvent>((event, emit) async {
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
        updateData:
            (
              name,
              lastName,
              email,
              phone,
              countryId,
              cityId,
              password,
              confirmPassword,
            ) {
              if (name != null) {
                _name = GenericFormzInput<String>.dirty(name);
              }
              if (lastName != null) {
                _lastName = GenericFormzInput<String>.dirty(lastName);
              }

              if (email != null) {
                _email = EmailInput.dirty(email);
              }
              if (phone != null) {
                _phone = PhoneNumberInput.dirty(phone);
              }

              if (countryId != null) {
                _countrtyId = GenericFormzInput<int>.dirty(countryId);
              }
              if (password != null) {
                _password = PasswordInput.dirty(password);
              }
              if (confirmPassword != null) {
                _confirmPassword = ConfirmPasswordInput.dirty(
                  value: confirmPassword,
                  password: _password?.value ?? '',
                );
              }
              //! firstViewFormzSubmissionStatus
              _firstViewFormzSubmissionStatus =
                  Formz.validate([
                    _name ?? const GenericFormzInput.pure(),
                    _adminId ?? const GenericFormzInput.pure(),
                    _email ?? const EmailInput.pure(),
                    _phone ?? const PhoneNumberInput.pure(),
                    _mobileNumber ?? const PhoneNumberInput.pure(),
                  ])
                  ? FormzSubmissionStatus.success
                  : FormzSubmissionStatus.failure;
              //! formzSubmissionStatus
              _formzSubmissionStatus =
                  Formz.validate([
                    _countrtyId ?? const GenericFormzInput.pure(),
                    _cityId ?? const GenericFormzInput.pure(),
                    _password ?? const PasswordInput.pure(),
                    _confirmPassword ?? const PasswordInput.pure(),
                    _agree ?? const GenericCheckboxInput.pure(),
                  ])
                  ? FormzSubmissionStatus.success
                  : FormzSubmissionStatus.failure;

              //! _opportunityLookingformzSubmissionStatus
              _opportunityLookingformzSubmissionStatus =
                  Formz.validate([
                    _name ?? const GenericFormzInput.pure(),
                    _lastName ?? const GenericFormzInput.pure(),
                    _email ?? const EmailInput.pure(),
                    _phone ?? const PhoneNumberInput.pure(),
                    _password ?? const PasswordInput.pure(),
                    _confirmPassword ?? const PasswordInput.pure(),
                  ])
                  ? FormzSubmissionStatus.success
                  : FormzSubmissionStatus.failure;

              emitCustomLoaded(emit: emit);
            },
      );
    });
  }

  void emitCustomFailure({
    required Emitter<SignUpState> emit,
    required ApiErrorModel apiErrorModel,
  }) {
    _loading = false;
    return emit(SignUpState.failure(apiErrorModel: apiErrorModel));
  }

  void emitCustomLoaded({required Emitter<SignUpState> emit}) => emit(
    SignUpState.loaded(
      loading: _loading ?? false,
      name: _name ?? const GenericFormzInput.pure(),
      lastName: _lastName ?? const GenericFormzInput.pure(),
      email: _email ?? const EmailInput.pure(),
      countrtyId: _countrtyId ?? const GenericFormzInput.pure(),
      phone: _phone ?? const PhoneNumberInput.pure(),
      password: _password ??= const PasswordInput.pure(),
      confirmPassword: _confirmPassword ??= const ConfirmPasswordInput.pure(),
      formzSubmissionStatus: _formzSubmissionStatus ??=
          FormzSubmissionStatus.initial,
    ),
  );

  void validatePassword({required String value}) {}
  void resetFields() {
    _loading = null;
    _currentPage = null;

    // First view
    _name = null;
    _lastName = null;
    _adminId = null;
    _email = null;
    _phone = null;
    _mobileNumber = null;

    // Second view
    _countrtyId = null;
    _cityId = null;
    _password = null;
    _confirmPassword = null;
    _agree = null;

    _firstViewFormzSubmissionStatus = null;
    _formzSubmissionStatus = null;
    _opportunityLookingformzSubmissionStatus = null;
  }
}
