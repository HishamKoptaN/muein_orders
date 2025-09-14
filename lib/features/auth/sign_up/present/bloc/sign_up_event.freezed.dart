// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_event.dart';

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
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            int? countryId,
            String? country,
            String? password,
            String? confirmPassword)
        updateData,
    required TResult Function() signUp,
    required TResult Function() getSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            int? countryId,
            String? country,
            String? password,
            String? confirmPassword)?
        updateData,
    TResult? Function()? signUp,
    TResult? Function()? getSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            int? countryId,
            String? country,
            String? password,
            String? confirmPassword)?
        updateData,
    TResult Function()? signUp,
    TResult Function()? getSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_GetCountries value) getSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateData value)? updateData,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_GetCountries value)? getSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateData value)? updateData,
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
abstract class _$$UpdateDataImplCopyWith<$Res> {
  factory _$$UpdateDataImplCopyWith(
          _$UpdateDataImpl value, $Res Function(_$UpdateDataImpl) then) =
      __$$UpdateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? email,
      String? phone,
      int? countryId,
      String? country,
      String? password,
      String? confirmPassword});
}

/// @nodoc
class __$$UpdateDataImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$UpdateDataImpl>
    implements _$$UpdateDataImplCopyWith<$Res> {
  __$$UpdateDataImplCopyWithImpl(
      _$UpdateDataImpl _value, $Res Function(_$UpdateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? countryId = freezed,
    Object? country = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_$UpdateDataImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateDataImpl implements _UpdateData {
  const _$UpdateDataImpl(
      {this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.countryId,
      this.country,
      this.password,
      this.confirmPassword});

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final int? countryId;
  @override
  final String? country;
  @override
  final String? password;
  @override
  final String? confirmPassword;

  @override
  String toString() {
    return 'SignUpEvent.updateData(firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, countryId: $countryId, country: $country, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDataImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email,
      phone, countryId, country, password, confirmPassword);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDataImplCopyWith<_$UpdateDataImpl> get copyWith =>
      __$$UpdateDataImplCopyWithImpl<_$UpdateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            int? countryId,
            String? country,
            String? password,
            String? confirmPassword)
        updateData,
    required TResult Function() signUp,
    required TResult Function() getSettings,
  }) {
    return updateData(firstName, lastName, email, phone, countryId, country,
        password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            int? countryId,
            String? country,
            String? password,
            String? confirmPassword)?
        updateData,
    TResult? Function()? signUp,
    TResult? Function()? getSettings,
  }) {
    return updateData?.call(firstName, lastName, email, phone, countryId,
        country, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            int? countryId,
            String? country,
            String? password,
            String? confirmPassword)?
        updateData,
    TResult Function()? signUp,
    TResult Function()? getSettings,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(firstName, lastName, email, phone, countryId, country,
          password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_GetCountries value) getSettings,
  }) {
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateData value)? updateData,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_GetCountries value)? getSettings,
  }) {
    return updateData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_GetCountries value)? getSettings,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class _UpdateData implements SignUpEvent {
  const factory _UpdateData(
      {final String? firstName,
      final String? lastName,
      final String? email,
      final String? phone,
      final int? countryId,
      final String? country,
      final String? password,
      final String? confirmPassword}) = _$UpdateDataImpl;

  String? get firstName;
  String? get lastName;
  String? get email;
  String? get phone;
  int? get countryId;
  String? get country;
  String? get password;
  String? get confirmPassword;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDataImplCopyWith<_$UpdateDataImpl> get copyWith =>
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
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            int? countryId,
            String? country,
            String? password,
            String? confirmPassword)
        updateData,
    required TResult Function() signUp,
    required TResult Function() getSettings,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            int? countryId,
            String? country,
            String? password,
            String? confirmPassword)?
        updateData,
    TResult? Function()? signUp,
    TResult? Function()? getSettings,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            int? countryId,
            String? country,
            String? password,
            String? confirmPassword)?
        updateData,
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
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_GetCountries value) getSettings,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateData value)? updateData,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_GetCountries value)? getSettings,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateData value)? updateData,
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
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            int? countryId,
            String? country,
            String? password,
            String? confirmPassword)
        updateData,
    required TResult Function() signUp,
    required TResult Function() getSettings,
  }) {
    return getSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            int? countryId,
            String? country,
            String? password,
            String? confirmPassword)?
        updateData,
    TResult? Function()? signUp,
    TResult? Function()? getSettings,
  }) {
    return getSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            int? countryId,
            String? country,
            String? password,
            String? confirmPassword)?
        updateData,
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
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_GetCountries value) getSettings,
  }) {
    return getSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateData value)? updateData,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_GetCountries value)? getSettings,
  }) {
    return getSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateData value)? updateData,
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
