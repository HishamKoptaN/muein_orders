// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EmailInput? email,
            PasswordInput? password,
            GenericFormzInput<dynamic>? rememberMe,
            GenericFormzInput<dynamic>? obscurePassword)
        dataChanged,
    required TResult Function() signInWithCredentialsPressed,
    required TResult Function() signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EmailInput? email,
            PasswordInput? password,
            GenericFormzInput<dynamic>? rememberMe,
            GenericFormzInput<dynamic>? obscurePassword)?
        dataChanged,
    TResult? Function()? signInWithCredentialsPressed,
    TResult? Function()? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EmailInput? email,
            PasswordInput? password,
            GenericFormzInput<dynamic>? rememberMe,
            GenericFormzInput<dynamic>? obscurePassword)?
        dataChanged,
    TResult Function()? signInWithCredentialsPressed,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_SignInWithCredentialsPressed value)
        signInWithCredentialsPressed,
    required TResult Function(_SignedOut value) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_SignInWithCredentialsPressed value)?
        signInWithCredentialsPressed,
    TResult? Function(_SignedOut value)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_SignInWithCredentialsPressed value)?
        signInWithCredentialsPressed,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DataChangedImplCopyWith<$Res> {
  factory _$$DataChangedImplCopyWith(
          _$DataChangedImpl value, $Res Function(_$DataChangedImpl) then) =
      __$$DataChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {EmailInput? email,
      PasswordInput? password,
      GenericFormzInput<dynamic>? rememberMe,
      GenericFormzInput<dynamic>? obscurePassword});
}

/// @nodoc
class __$$DataChangedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$DataChangedImpl>
    implements _$$DataChangedImplCopyWith<$Res> {
  __$$DataChangedImplCopyWithImpl(
      _$DataChangedImpl _value, $Res Function(_$DataChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? rememberMe = freezed,
    Object? obscurePassword = freezed,
  }) {
    return _then(_$DataChangedImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput?,
      rememberMe: freezed == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput<dynamic>?,
      obscurePassword: freezed == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput<dynamic>?,
    ));
  }
}

/// @nodoc

class _$DataChangedImpl implements _DataChanged {
  const _$DataChangedImpl(
      {this.email, this.password, this.rememberMe, this.obscurePassword});

  @override
  final EmailInput? email;
  @override
  final PasswordInput? password;
  @override
  final GenericFormzInput<dynamic>? rememberMe;
  @override
  final GenericFormzInput<dynamic>? obscurePassword;

  @override
  String toString() {
    return 'SignInEvent.dataChanged(email: $email, password: $password, rememberMe: $rememberMe, obscurePassword: $obscurePassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataChangedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, rememberMe, obscurePassword);

  /// Create a copy of SignInEvent
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
            EmailInput? email,
            PasswordInput? password,
            GenericFormzInput<dynamic>? rememberMe,
            GenericFormzInput<dynamic>? obscurePassword)
        dataChanged,
    required TResult Function() signInWithCredentialsPressed,
    required TResult Function() signedOut,
  }) {
    return dataChanged(email, password, rememberMe, obscurePassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EmailInput? email,
            PasswordInput? password,
            GenericFormzInput<dynamic>? rememberMe,
            GenericFormzInput<dynamic>? obscurePassword)?
        dataChanged,
    TResult? Function()? signInWithCredentialsPressed,
    TResult? Function()? signedOut,
  }) {
    return dataChanged?.call(email, password, rememberMe, obscurePassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EmailInput? email,
            PasswordInput? password,
            GenericFormzInput<dynamic>? rememberMe,
            GenericFormzInput<dynamic>? obscurePassword)?
        dataChanged,
    TResult Function()? signInWithCredentialsPressed,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged(email, password, rememberMe, obscurePassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_SignInWithCredentialsPressed value)
        signInWithCredentialsPressed,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return dataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_SignInWithCredentialsPressed value)?
        signInWithCredentialsPressed,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return dataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_SignInWithCredentialsPressed value)?
        signInWithCredentialsPressed,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged(this);
    }
    return orElse();
  }
}

abstract class _DataChanged implements SignInEvent {
  const factory _DataChanged(
      {final EmailInput? email,
      final PasswordInput? password,
      final GenericFormzInput<dynamic>? rememberMe,
      final GenericFormzInput<dynamic>? obscurePassword}) = _$DataChangedImpl;

  EmailInput? get email;
  PasswordInput? get password;
  GenericFormzInput<dynamic>? get rememberMe;
  GenericFormzInput<dynamic>? get obscurePassword;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataChangedImplCopyWith<_$DataChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithCredentialsPressedImplCopyWith<$Res> {
  factory _$$SignInWithCredentialsPressedImplCopyWith(
          _$SignInWithCredentialsPressedImpl value,
          $Res Function(_$SignInWithCredentialsPressedImpl) then) =
      __$$SignInWithCredentialsPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithCredentialsPressedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInWithCredentialsPressedImpl>
    implements _$$SignInWithCredentialsPressedImplCopyWith<$Res> {
  __$$SignInWithCredentialsPressedImplCopyWithImpl(
      _$SignInWithCredentialsPressedImpl _value,
      $Res Function(_$SignInWithCredentialsPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInWithCredentialsPressedImpl
    implements _SignInWithCredentialsPressed {
  const _$SignInWithCredentialsPressedImpl();

  @override
  String toString() {
    return 'SignInEvent.signInWithCredentialsPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithCredentialsPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EmailInput? email,
            PasswordInput? password,
            GenericFormzInput<dynamic>? rememberMe,
            GenericFormzInput<dynamic>? obscurePassword)
        dataChanged,
    required TResult Function() signInWithCredentialsPressed,
    required TResult Function() signedOut,
  }) {
    return signInWithCredentialsPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EmailInput? email,
            PasswordInput? password,
            GenericFormzInput<dynamic>? rememberMe,
            GenericFormzInput<dynamic>? obscurePassword)?
        dataChanged,
    TResult? Function()? signInWithCredentialsPressed,
    TResult? Function()? signedOut,
  }) {
    return signInWithCredentialsPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EmailInput? email,
            PasswordInput? password,
            GenericFormzInput<dynamic>? rememberMe,
            GenericFormzInput<dynamic>? obscurePassword)?
        dataChanged,
    TResult Function()? signInWithCredentialsPressed,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signInWithCredentialsPressed != null) {
      return signInWithCredentialsPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_SignInWithCredentialsPressed value)
        signInWithCredentialsPressed,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return signInWithCredentialsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_SignInWithCredentialsPressed value)?
        signInWithCredentialsPressed,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return signInWithCredentialsPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_SignInWithCredentialsPressed value)?
        signInWithCredentialsPressed,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signInWithCredentialsPressed != null) {
      return signInWithCredentialsPressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithCredentialsPressed implements SignInEvent {
  const factory _SignInWithCredentialsPressed() =
      _$SignInWithCredentialsPressedImpl;
}

/// @nodoc
abstract class _$$SignedOutImplCopyWith<$Res> {
  factory _$$SignedOutImplCopyWith(
          _$SignedOutImpl value, $Res Function(_$SignedOutImpl) then) =
      __$$SignedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignedOutImpl>
    implements _$$SignedOutImplCopyWith<$Res> {
  __$$SignedOutImplCopyWithImpl(
      _$SignedOutImpl _value, $Res Function(_$SignedOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignedOutImpl implements _SignedOut {
  const _$SignedOutImpl();

  @override
  String toString() {
    return 'SignInEvent.signedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EmailInput? email,
            PasswordInput? password,
            GenericFormzInput<dynamic>? rememberMe,
            GenericFormzInput<dynamic>? obscurePassword)
        dataChanged,
    required TResult Function() signInWithCredentialsPressed,
    required TResult Function() signedOut,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EmailInput? email,
            PasswordInput? password,
            GenericFormzInput<dynamic>? rememberMe,
            GenericFormzInput<dynamic>? obscurePassword)?
        dataChanged,
    TResult? Function()? signInWithCredentialsPressed,
    TResult? Function()? signedOut,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EmailInput? email,
            PasswordInput? password,
            GenericFormzInput<dynamic>? rememberMe,
            GenericFormzInput<dynamic>? obscurePassword)?
        dataChanged,
    TResult Function()? signInWithCredentialsPressed,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_SignInWithCredentialsPressed value)
        signInWithCredentialsPressed,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_SignInWithCredentialsPressed value)?
        signInWithCredentialsPressed,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_SignInWithCredentialsPressed value)?
        signInWithCredentialsPressed,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements SignInEvent {
  const factory _SignedOut() = _$SignedOutImpl;
}

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)
        loaded,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInState
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
    extends _$SignInStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignInState.initial()';
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
    required TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)
        loaded,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() unauthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? unauthenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? unauthenticated,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignInState {
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
    extends _$SignInStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SignInState.loading()';
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
    required TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)
        loaded,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() unauthenticated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? unauthenticated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? unauthenticated,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SignInState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {EmailInput email,
      PasswordInput password,
      GenericFormzInput<dynamic> rememberMe,
      GenericFormzInput<dynamic> obscurePassword,
      FormzSubmissionStatus formzSubmissionStatus});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? rememberMe = null,
    Object? obscurePassword = null,
    Object? formzSubmissionStatus = null,
  }) {
    return _then(_$LoadedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput<dynamic>,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as GenericFormzInput<dynamic>,
      formzSubmissionStatus: null == formzSubmissionStatus
          ? _value.formzSubmissionStatus
          : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.email,
      required this.password,
      required this.rememberMe,
      required this.obscurePassword,
      required this.formzSubmissionStatus});

  @override
  final EmailInput email;
  @override
  final PasswordInput password;
  @override
  final GenericFormzInput<dynamic> rememberMe;
  @override
  final GenericFormzInput<dynamic> obscurePassword;
  @override
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  String toString() {
    return 'SignInState.loaded(email: $email, password: $password, rememberMe: $rememberMe, obscurePassword: $obscurePassword, formzSubmissionStatus: $formzSubmissionStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.formzSubmissionStatus, formzSubmissionStatus) ||
                other.formzSubmissionStatus == formzSubmissionStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, rememberMe,
      obscurePassword, formzSubmissionStatus);

  /// Create a copy of SignInState
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
    required TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)
        loaded,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() unauthenticated,
  }) {
    return loaded(
        email, password, rememberMe, obscurePassword, formzSubmissionStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? unauthenticated,
  }) {
    return loaded?.call(
        email, password, rememberMe, obscurePassword, formzSubmissionStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          email, password, rememberMe, obscurePassword, formzSubmissionStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SignInState {
  const factory _Loaded(
          {required final EmailInput email,
          required final PasswordInput password,
          required final GenericFormzInput<dynamic> rememberMe,
          required final GenericFormzInput<dynamic> obscurePassword,
          required final FormzSubmissionStatus formzSubmissionStatus}) =
      _$LoadedImpl;

  EmailInput get email;
  PasswordInput get password;
  GenericFormzInput<dynamic> get rememberMe;
  GenericFormzInput<dynamic> get obscurePassword;
  FormzSubmissionStatus get formzSubmissionStatus;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'SignInState.success()';
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
    required TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)
        loaded,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() unauthenticated,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? unauthenticated,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? unauthenticated,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SignInState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailureImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({this.errorMessage = ''});

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'SignInState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of SignInState
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
    required TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)
        loaded,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() unauthenticated,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? unauthenticated,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SignInState {
  const factory _Failure({final String errorMessage}) = _$FailureImpl;

  String get errorMessage;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'SignInState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)
        loaded,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            EmailInput email,
            PasswordInput password,
            GenericFormzInput<dynamic> rememberMe,
            GenericFormzInput<dynamic> obscurePassword,
            FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements SignInState {
  const factory _Unauthenticated() = _$UnauthenticatedImpl;
}
