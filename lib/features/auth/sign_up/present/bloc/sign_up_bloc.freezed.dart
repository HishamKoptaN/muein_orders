// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GenericFormzInput<dynamic>? name,
            EmailInput? email,
            PhoneNumberInput? phone,
            GenericFormzInput<dynamic>? countryId,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            GenericFormzInput<dynamic>? obscurePassword,
            FormzSubmissionStatus? formzSubmissionStatus)
        dataChanged,
    required TResult Function() signUp,
    required TResult Function() getSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GenericFormzInput<dynamic>? name,
            EmailInput? email,
            PhoneNumberInput? phone,
            GenericFormzInput<dynamic>? countryId,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            GenericFormzInput<dynamic>? obscurePassword,
            FormzSubmissionStatus? formzSubmissionStatus)?
        dataChanged,
    TResult? Function()? signUp,
    TResult? Function()? getSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GenericFormzInput<dynamic>? name,
            EmailInput? email,
            PhoneNumberInput? phone,
            GenericFormzInput<dynamic>? countryId,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            GenericFormzInput<dynamic>? obscurePassword,
            FormzSubmissionStatus? formzSubmissionStatus)?
        dataChanged,
    TResult Function()? signUp,
    TResult Function()? getSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_GetCountries value) getSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_GetCountries value)? getSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_GetCountries value)? getSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DataChangedImplCopyWith<$Res> {
  factory _$$DataChangedImplCopyWith(
          _$DataChangedImpl value, $Res Function(_$DataChangedImpl) then) =
      __$$DataChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {GenericFormzInput<dynamic>? name,
      EmailInput? email,
      PhoneNumberInput? phone,
      GenericFormzInput<dynamic>? countryId,
      PasswordInput? password,
      ConfirmPasswordInput? confirmPassword,
      GenericFormzInput<dynamic>? obscurePassword,
      FormzSubmissionStatus? formzSubmissionStatus});
}

/// @nodoc
class __$$DataChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$DataChangedImpl>
    implements _$$DataChangedImplCopyWith<$Res> {
  __$$DataChangedImplCopyWithImpl(
      _$DataChangedImpl _value, $Res Function(_$DataChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? countryId = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? obscurePassword = freezed,
    Object? formzSubmissionStatus = freezed,
  }) {
    return _then(_$DataChangedImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput<dynamic>?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumberInput?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput<dynamic>?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPasswordInput?,
      obscurePassword: freezed == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput<dynamic>?,
      formzSubmissionStatus: freezed == formzSubmissionStatus
          ? _value.formzSubmissionStatus
          : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus?,
    ));
  }
}

/// @nodoc

class _$DataChangedImpl implements _DataChanged {
  const _$DataChangedImpl(
      {this.name,
      this.email,
      this.phone,
      this.countryId,
      this.password,
      this.confirmPassword,
      this.obscurePassword,
      this.formzSubmissionStatus});

  @override
  final GenericFormzInput<dynamic>? name;
  @override
  final EmailInput? email;
  @override
  final PhoneNumberInput? phone;
  @override
  final GenericFormzInput<dynamic>? countryId;
  @override
  final PasswordInput? password;
  @override
  final ConfirmPasswordInput? confirmPassword;
  @override
  final GenericFormzInput<dynamic>? obscurePassword;
  @override
  final FormzSubmissionStatus? formzSubmissionStatus;

  @override
  String toString() {
    return 'SignUpEvent.dataChanged(name: $name, email: $email, phone: $phone, countryId: $countryId, password: $password, confirmPassword: $confirmPassword, obscurePassword: $obscurePassword, formzSubmissionStatus: $formzSubmissionStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataChangedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.formzSubmissionStatus, formzSubmissionStatus) ||
                other.formzSubmissionStatus == formzSubmissionStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, phone, countryId,
      password, confirmPassword, obscurePassword, formzSubmissionStatus);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataChangedImplCopyWith<_$DataChangedImpl> get copyWith =>
      __$$DataChangedImplCopyWithImpl<_$DataChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GenericFormzInput<dynamic>? name,
            EmailInput? email,
            PhoneNumberInput? phone,
            GenericFormzInput<dynamic>? countryId,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            GenericFormzInput<dynamic>? obscurePassword,
            FormzSubmissionStatus? formzSubmissionStatus)
        dataChanged,
    required TResult Function() signUp,
    required TResult Function() getSettings,
  }) {
    return dataChanged(name, email, phone, countryId, password, confirmPassword,
        obscurePassword, formzSubmissionStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GenericFormzInput<dynamic>? name,
            EmailInput? email,
            PhoneNumberInput? phone,
            GenericFormzInput<dynamic>? countryId,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            GenericFormzInput<dynamic>? obscurePassword,
            FormzSubmissionStatus? formzSubmissionStatus)?
        dataChanged,
    TResult? Function()? signUp,
    TResult? Function()? getSettings,
  }) {
    return dataChanged?.call(name, email, phone, countryId, password,
        confirmPassword, obscurePassword, formzSubmissionStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GenericFormzInput<dynamic>? name,
            EmailInput? email,
            PhoneNumberInput? phone,
            GenericFormzInput<dynamic>? countryId,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            GenericFormzInput<dynamic>? obscurePassword,
            FormzSubmissionStatus? formzSubmissionStatus)?
        dataChanged,
    TResult Function()? signUp,
    TResult Function()? getSettings,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged(name, email, phone, countryId, password,
          confirmPassword, obscurePassword, formzSubmissionStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_GetCountries value) getSettings,
  }) {
    return dataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_GetCountries value)? getSettings,
  }) {
    return dataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_GetCountries value)? getSettings,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged(this);
    }
    return orElse();
  }
}

abstract class _DataChanged implements SignUpEvent {
  const factory _DataChanged(
      {final GenericFormzInput<dynamic>? name,
      final EmailInput? email,
      final PhoneNumberInput? phone,
      final GenericFormzInput<dynamic>? countryId,
      final PasswordInput? password,
      final ConfirmPasswordInput? confirmPassword,
      final GenericFormzInput<dynamic>? obscurePassword,
      final FormzSubmissionStatus? formzSubmissionStatus}) = _$DataChangedImpl;

  GenericFormzInput<dynamic>? get name;
  EmailInput? get email;
  PhoneNumberInput? get phone;
  GenericFormzInput<dynamic>? get countryId;
  PasswordInput? get password;
  ConfirmPasswordInput? get confirmPassword;
  GenericFormzInput<dynamic>? get obscurePassword;
  FormzSubmissionStatus? get formzSubmissionStatus;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataChangedImplCopyWith<_$DataChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl();

  @override
  String toString() {
    return 'SignUpEvent.signUp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GenericFormzInput<dynamic>? name,
            EmailInput? email,
            PhoneNumberInput? phone,
            GenericFormzInput<dynamic>? countryId,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            GenericFormzInput<dynamic>? obscurePassword,
            FormzSubmissionStatus? formzSubmissionStatus)
        dataChanged,
    required TResult Function() signUp,
    required TResult Function() getSettings,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GenericFormzInput<dynamic>? name,
            EmailInput? email,
            PhoneNumberInput? phone,
            GenericFormzInput<dynamic>? countryId,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            GenericFormzInput<dynamic>? obscurePassword,
            FormzSubmissionStatus? formzSubmissionStatus)?
        dataChanged,
    TResult? Function()? signUp,
    TResult? Function()? getSettings,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GenericFormzInput<dynamic>? name,
            EmailInput? email,
            PhoneNumberInput? phone,
            GenericFormzInput<dynamic>? countryId,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            GenericFormzInput<dynamic>? obscurePassword,
            FormzSubmissionStatus? formzSubmissionStatus)?
        dataChanged,
    TResult Function()? signUp,
    TResult Function()? getSettings,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_GetCountries value) getSettings,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_GetCountries value)? getSettings,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_GetCountries value)? getSettings,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements SignUpEvent {
  const factory _SignUp() = _$SignUpImpl;
}

/// @nodoc
abstract class _$$GetCountriesImplCopyWith<$Res> {
  factory _$$GetCountriesImplCopyWith(
          _$GetCountriesImpl value, $Res Function(_$GetCountriesImpl) then) =
      __$$GetCountriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCountriesImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$GetCountriesImpl>
    implements _$$GetCountriesImplCopyWith<$Res> {
  __$$GetCountriesImplCopyWithImpl(
      _$GetCountriesImpl _value, $Res Function(_$GetCountriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCountriesImpl implements _GetCountries {
  const _$GetCountriesImpl();

  @override
  String toString() {
    return 'SignUpEvent.getSettings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCountriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GenericFormzInput<dynamic>? name,
            EmailInput? email,
            PhoneNumberInput? phone,
            GenericFormzInput<dynamic>? countryId,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            GenericFormzInput<dynamic>? obscurePassword,
            FormzSubmissionStatus? formzSubmissionStatus)
        dataChanged,
    required TResult Function() signUp,
    required TResult Function() getSettings,
  }) {
    return getSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GenericFormzInput<dynamic>? name,
            EmailInput? email,
            PhoneNumberInput? phone,
            GenericFormzInput<dynamic>? countryId,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            GenericFormzInput<dynamic>? obscurePassword,
            FormzSubmissionStatus? formzSubmissionStatus)?
        dataChanged,
    TResult? Function()? signUp,
    TResult? Function()? getSettings,
  }) {
    return getSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GenericFormzInput<dynamic>? name,
            EmailInput? email,
            PhoneNumberInput? phone,
            GenericFormzInput<dynamic>? countryId,
            PasswordInput? password,
            ConfirmPasswordInput? confirmPassword,
            GenericFormzInput<dynamic>? obscurePassword,
            FormzSubmissionStatus? formzSubmissionStatus)?
        dataChanged,
    TResult Function()? signUp,
    TResult Function()? getSettings,
    required TResult orElse(),
  }) {
    if (getSettings != null) {
      return getSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_GetCountries value) getSettings,
  }) {
    return getSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_GetCountries value)? getSettings,
  }) {
    return getSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_GetCountries value)? getSettings,
    required TResult orElse(),
  }) {
    if (getSettings != null) {
      return getSettings(this);
    }
    return orElse();
  }
}

abstract class _GetCountries implements SignUpEvent {
  const factory _GetCountries() = _$GetCountriesImpl;
}

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() settingsLoading,
    required TResult Function() success,
    required TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)
        loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? settingsLoading,
    TResult? Function()? success,
    TResult? Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? settingsLoading,
    TResult Function()? success,
    TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SettingsLoading value) settingsLoading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SettingsLoading value)? settingsLoading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SettingsLoading value)? settingsLoading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignUpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() settingsLoading,
    required TResult Function() success,
    required TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)
        loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? settingsLoading,
    TResult? Function()? success,
    TResult? Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? settingsLoading,
    TResult Function()? success,
    TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SettingsLoading value) settingsLoading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SettingsLoading value)? settingsLoading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SettingsLoading value)? settingsLoading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignUpState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SignUpState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() settingsLoading,
    required TResult Function() success,
    required TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)
        loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? settingsLoading,
    TResult? Function()? success,
    TResult? Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? settingsLoading,
    TResult Function()? success,
    TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SettingsLoading value) settingsLoading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SettingsLoading value)? settingsLoading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SettingsLoading value)? settingsLoading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SignUpState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SettingsLoadingImplCopyWith<$Res> {
  factory _$$SettingsLoadingImplCopyWith(_$SettingsLoadingImpl value,
          $Res Function(_$SettingsLoadingImpl) then) =
      __$$SettingsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsLoadingImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SettingsLoadingImpl>
    implements _$$SettingsLoadingImplCopyWith<$Res> {
  __$$SettingsLoadingImplCopyWithImpl(
      _$SettingsLoadingImpl _value, $Res Function(_$SettingsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsLoadingImpl implements _SettingsLoading {
  const _$SettingsLoadingImpl();

  @override
  String toString() {
    return 'SignUpState.settingsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() settingsLoading,
    required TResult Function() success,
    required TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)
        loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return settingsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? settingsLoading,
    TResult? Function()? success,
    TResult? Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return settingsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? settingsLoading,
    TResult Function()? success,
    TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (settingsLoading != null) {
      return settingsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SettingsLoading value) settingsLoading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return settingsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SettingsLoading value)? settingsLoading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return settingsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SettingsLoading value)? settingsLoading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (settingsLoading != null) {
      return settingsLoading(this);
    }
    return orElse();
  }
}

abstract class _SettingsLoading implements SignUpState {
  const factory _SettingsLoading() = _$SettingsLoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'SignUpState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() settingsLoading,
    required TResult Function() success,
    required TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)
        loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? settingsLoading,
    TResult? Function()? success,
    TResult? Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? settingsLoading,
    TResult Function()? success,
    TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SettingsLoading value) settingsLoading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SettingsLoading value)? settingsLoading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SettingsLoading value)? settingsLoading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SignUpState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {GenericFormzInput<dynamic> name,
      EmailInput email,
      PhoneNumberInput phone,
      GenericFormzInput<dynamic> countryId,
      PasswordInput password,
      ConfirmPasswordInput confirmPassword,
      GenericFormzInput<dynamic> obscurePassword,
      FormzSubmissionStatus formzSubmissionStatus,
      bool loading});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? countryId = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? obscurePassword = null,
    Object? formzSubmissionStatus = null,
    Object? loading = null,
  }) {
    return _then(_$LoadedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput<dynamic>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumberInput,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput<dynamic>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPasswordInput,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput<dynamic>,
      formzSubmissionStatus: null == formzSubmissionStatus
          ? _value.formzSubmissionStatus
          : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.name,
      required this.email,
      required this.phone,
      required this.countryId,
      required this.password,
      required this.confirmPassword,
      required this.obscurePassword,
      required this.formzSubmissionStatus,
      required this.loading});

  @override
  final GenericFormzInput<dynamic> name;
  @override
  final EmailInput email;
  @override
  final PhoneNumberInput phone;
  @override
  final GenericFormzInput<dynamic> countryId;
  @override
  final PasswordInput password;
  @override
  final ConfirmPasswordInput confirmPassword;
  @override
  final GenericFormzInput<dynamic> obscurePassword;
  @override
  final FormzSubmissionStatus formzSubmissionStatus;
  @override
  final bool loading;

  @override
  String toString() {
    return 'SignUpState.loaded(name: $name, email: $email, phone: $phone, countryId: $countryId, password: $password, confirmPassword: $confirmPassword, obscurePassword: $obscurePassword, formzSubmissionStatus: $formzSubmissionStatus, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.formzSubmissionStatus, formzSubmissionStatus) ||
                other.formzSubmissionStatus == formzSubmissionStatus) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      email,
      phone,
      countryId,
      password,
      confirmPassword,
      obscurePassword,
      formzSubmissionStatus,
      loading);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() settingsLoading,
    required TResult Function() success,
    required TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)
        loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return loaded(name, email, phone, countryId, password, confirmPassword,
        obscurePassword, formzSubmissionStatus, this.loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? settingsLoading,
    TResult? Function()? success,
    TResult? Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return loaded?.call(name, email, phone, countryId, password,
        confirmPassword, obscurePassword, formzSubmissionStatus, this.loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? settingsLoading,
    TResult Function()? success,
    TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(name, email, phone, countryId, password, confirmPassword,
          obscurePassword, formzSubmissionStatus, this.loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SettingsLoading value) settingsLoading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SettingsLoading value)? settingsLoading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SettingsLoading value)? settingsLoading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SignUpState {
  const factory _Loaded(
      {required final GenericFormzInput<dynamic> name,
      required final EmailInput email,
      required final PhoneNumberInput phone,
      required final GenericFormzInput<dynamic> countryId,
      required final PasswordInput password,
      required final ConfirmPasswordInput confirmPassword,
      required final GenericFormzInput<dynamic> obscurePassword,
      required final FormzSubmissionStatus formzSubmissionStatus,
      required final bool loading}) = _$LoadedImpl;

  GenericFormzInput<dynamic> get name;
  EmailInput get email;
  PhoneNumberInput get phone;
  GenericFormzInput<dynamic> get countryId;
  PasswordInput get password;
  ConfirmPasswordInput get confirmPassword;
  GenericFormzInput<dynamic> get obscurePassword;
  FormzSubmissionStatus get formzSubmissionStatus;
  bool get loading;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$FailureImpl(
      apiErrorModel: null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.apiErrorModel});

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'SignUpState.failure(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() settingsLoading,
    required TResult Function() success,
    required TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)
        loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return failure(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? settingsLoading,
    TResult? Function()? success,
    TResult? Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return failure?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? settingsLoading,
    TResult Function()? success,
    TResult Function(
            GenericFormzInput<dynamic> name,
            EmailInput email,
            PhoneNumberInput phone,
            GenericFormzInput<dynamic> countryId,
            PasswordInput password,
            ConfirmPasswordInput confirmPassword,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus,
            bool loading)?
        loaded,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SettingsLoading value) settingsLoading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SettingsLoading value)? settingsLoading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SettingsLoading value)? settingsLoading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SignUpState {
  const factory _Failure({required final ApiErrorModel apiErrorModel}) =
      _$FailureImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
