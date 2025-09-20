// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_pass_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPassEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailInput? email) dataChanged,
    required TResult Function() sendPassResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailInput? email)? dataChanged,
    TResult? Function()? sendPassResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailInput? email)? dataChanged,
    TResult Function()? sendPassResetEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(SendPassResetEmail value) sendPassResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(SendPassResetEmail value)? sendPassResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(SendPassResetEmail value)? sendPassResetEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPassEventCopyWith<$Res> {
  factory $ForgotPassEventCopyWith(
          ForgotPassEvent value, $Res Function(ForgotPassEvent) then) =
      _$ForgotPassEventCopyWithImpl<$Res, ForgotPassEvent>;
}

/// @nodoc
class _$ForgotPassEventCopyWithImpl<$Res, $Val extends ForgotPassEvent>
    implements $ForgotPassEventCopyWith<$Res> {
  _$ForgotPassEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPassEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DataChangedImplCopyWith<$Res> {
  factory _$$DataChangedImplCopyWith(
          _$DataChangedImpl value, $Res Function(_$DataChangedImpl) then) =
      __$$DataChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmailInput? email});
}

/// @nodoc
class __$$DataChangedImplCopyWithImpl<$Res>
    extends _$ForgotPassEventCopyWithImpl<$Res, _$DataChangedImpl>
    implements _$$DataChangedImplCopyWith<$Res> {
  __$$DataChangedImplCopyWithImpl(
      _$DataChangedImpl _value, $Res Function(_$DataChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPassEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$DataChangedImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput?,
    ));
  }
}

/// @nodoc

class _$DataChangedImpl implements _DataChanged {
  const _$DataChangedImpl({this.email});

  @override
  final EmailInput? email;

  @override
  String toString() {
    return 'ForgotPassEvent.dataChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ForgotPassEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataChangedImplCopyWith<_$DataChangedImpl> get copyWith =>
      __$$DataChangedImplCopyWithImpl<_$DataChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailInput? email) dataChanged,
    required TResult Function() sendPassResetEmail,
  }) {
    return dataChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailInput? email)? dataChanged,
    TResult? Function()? sendPassResetEmail,
  }) {
    return dataChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailInput? email)? dataChanged,
    TResult Function()? sendPassResetEmail,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(SendPassResetEmail value) sendPassResetEmail,
  }) {
    return dataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(SendPassResetEmail value)? sendPassResetEmail,
  }) {
    return dataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(SendPassResetEmail value)? sendPassResetEmail,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged(this);
    }
    return orElse();
  }
}

abstract class _DataChanged implements ForgotPassEvent {
  const factory _DataChanged({final EmailInput? email}) = _$DataChangedImpl;

  EmailInput? get email;

  /// Create a copy of ForgotPassEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataChangedImplCopyWith<_$DataChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendPassResetEmailImplCopyWith<$Res> {
  factory _$$SendPassResetEmailImplCopyWith(_$SendPassResetEmailImpl value,
          $Res Function(_$SendPassResetEmailImpl) then) =
      __$$SendPassResetEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendPassResetEmailImplCopyWithImpl<$Res>
    extends _$ForgotPassEventCopyWithImpl<$Res, _$SendPassResetEmailImpl>
    implements _$$SendPassResetEmailImplCopyWith<$Res> {
  __$$SendPassResetEmailImplCopyWithImpl(_$SendPassResetEmailImpl _value,
      $Res Function(_$SendPassResetEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPassEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendPassResetEmailImpl implements SendPassResetEmail {
  const _$SendPassResetEmailImpl();

  @override
  String toString() {
    return 'ForgotPassEvent.sendPassResetEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendPassResetEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailInput? email) dataChanged,
    required TResult Function() sendPassResetEmail,
  }) {
    return sendPassResetEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailInput? email)? dataChanged,
    TResult? Function()? sendPassResetEmail,
  }) {
    return sendPassResetEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailInput? email)? dataChanged,
    TResult Function()? sendPassResetEmail,
    required TResult orElse(),
  }) {
    if (sendPassResetEmail != null) {
      return sendPassResetEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(SendPassResetEmail value) sendPassResetEmail,
  }) {
    return sendPassResetEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(SendPassResetEmail value)? sendPassResetEmail,
  }) {
    return sendPassResetEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(SendPassResetEmail value)? sendPassResetEmail,
    required TResult orElse(),
  }) {
    if (sendPassResetEmail != null) {
      return sendPassResetEmail(this);
    }
    return orElse();
  }
}

abstract class SendPassResetEmail implements ForgotPassEvent {
  const factory SendPassResetEmail() = _$SendPassResetEmailImpl;
}

/// @nodoc
mixin _$ForgotPassState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)
        loaded,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPassLoading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(ForgotPassSuccess value) success,
    required TResult Function(ForgotPassFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassLoading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(ForgotPassSuccess value)? success,
    TResult? Function(ForgotPassFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassLoading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(ForgotPassSuccess value)? success,
    TResult Function(ForgotPassFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPassStateCopyWith<$Res> {
  factory $ForgotPassStateCopyWith(
          ForgotPassState value, $Res Function(ForgotPassState) then) =
      _$ForgotPassStateCopyWithImpl<$Res, ForgotPassState>;
}

/// @nodoc
class _$ForgotPassStateCopyWithImpl<$Res, $Val extends ForgotPassState>
    implements $ForgotPassStateCopyWith<$Res> {
  _$ForgotPassStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ForgotPassLoadingImplCopyWith<$Res> {
  factory _$$ForgotPassLoadingImplCopyWith(_$ForgotPassLoadingImpl value,
          $Res Function(_$ForgotPassLoadingImpl) then) =
      __$$ForgotPassLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPassLoadingImplCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$ForgotPassLoadingImpl>
    implements _$$ForgotPassLoadingImplCopyWith<$Res> {
  __$$ForgotPassLoadingImplCopyWithImpl(_$ForgotPassLoadingImpl _value,
      $Res Function(_$ForgotPassLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForgotPassLoadingImpl implements ForgotPassLoading {
  const _$ForgotPassLoadingImpl();

  @override
  String toString() {
    return 'ForgotPassState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ForgotPassLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)
        loaded,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult Function()? success,
    TResult Function(String error)? failure,
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
    required TResult Function(ForgotPassLoading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(ForgotPassSuccess value) success,
    required TResult Function(ForgotPassFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassLoading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(ForgotPassSuccess value)? success,
    TResult? Function(ForgotPassFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassLoading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(ForgotPassSuccess value)? success,
    TResult Function(ForgotPassFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ForgotPassLoading implements ForgotPassState {
  const factory ForgotPassLoading() = _$ForgotPassLoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmailInput email, FormzSubmissionStatus formzSubmissionStatus});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? formzSubmissionStatus = null,
  }) {
    return _then(_$LoadedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
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
      {required this.email, required this.formzSubmissionStatus});

  @override
  final EmailInput email;
  @override
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  String toString() {
    return 'ForgotPassState.loaded(email: $email, formzSubmissionStatus: $formzSubmissionStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.formzSubmissionStatus, formzSubmissionStatus) ||
                other.formzSubmissionStatus == formzSubmissionStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, formzSubmissionStatus);

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)
        loaded,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return loaded(email, formzSubmissionStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return loaded?.call(email, formzSubmissionStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(email, formzSubmissionStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPassLoading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(ForgotPassSuccess value) success,
    required TResult Function(ForgotPassFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassLoading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(ForgotPassSuccess value)? success,
    TResult? Function(ForgotPassFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassLoading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(ForgotPassSuccess value)? success,
    TResult Function(ForgotPassFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ForgotPassState {
  const factory _Loaded(
          {required final EmailInput email,
          required final FormzSubmissionStatus formzSubmissionStatus}) =
      _$LoadedImpl;

  EmailInput get email;
  FormzSubmissionStatus get formzSubmissionStatus;

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPassSuccessImplCopyWith<$Res> {
  factory _$$ForgotPassSuccessImplCopyWith(_$ForgotPassSuccessImpl value,
          $Res Function(_$ForgotPassSuccessImpl) then) =
      __$$ForgotPassSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPassSuccessImplCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$ForgotPassSuccessImpl>
    implements _$$ForgotPassSuccessImplCopyWith<$Res> {
  __$$ForgotPassSuccessImplCopyWithImpl(_$ForgotPassSuccessImpl _value,
      $Res Function(_$ForgotPassSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForgotPassSuccessImpl implements ForgotPassSuccess {
  const _$ForgotPassSuccessImpl();

  @override
  String toString() {
    return 'ForgotPassState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ForgotPassSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)
        loaded,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult Function()? success,
    TResult Function(String error)? failure,
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
    required TResult Function(ForgotPassLoading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(ForgotPassSuccess value) success,
    required TResult Function(ForgotPassFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassLoading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(ForgotPassSuccess value)? success,
    TResult? Function(ForgotPassFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassLoading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(ForgotPassSuccess value)? success,
    TResult Function(ForgotPassFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ForgotPassSuccess implements ForgotPassState {
  const factory ForgotPassSuccess() = _$ForgotPassSuccessImpl;
}

/// @nodoc
abstract class _$$ForgotPassFailureImplCopyWith<$Res> {
  factory _$$ForgotPassFailureImplCopyWith(_$ForgotPassFailureImpl value,
          $Res Function(_$ForgotPassFailureImpl) then) =
      __$$ForgotPassFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ForgotPassFailureImplCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$ForgotPassFailureImpl>
    implements _$$ForgotPassFailureImplCopyWith<$Res> {
  __$$ForgotPassFailureImplCopyWithImpl(_$ForgotPassFailureImpl _value,
      $Res Function(_$ForgotPassFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ForgotPassFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPassFailureImpl implements ForgotPassFailure {
  const _$ForgotPassFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ForgotPassState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPassFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPassFailureImplCopyWith<_$ForgotPassFailureImpl> get copyWith =>
      __$$ForgotPassFailureImplCopyWithImpl<_$ForgotPassFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)
        loaded,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            EmailInput email, FormzSubmissionStatus formzSubmissionStatus)?
        loaded,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPassLoading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(ForgotPassSuccess value) success,
    required TResult Function(ForgotPassFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassLoading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(ForgotPassSuccess value)? success,
    TResult? Function(ForgotPassFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassLoading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(ForgotPassSuccess value)? success,
    TResult Function(ForgotPassFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ForgotPassFailure implements ForgotPassState {
  const factory ForgotPassFailure(final String error) = _$ForgotPassFailureImpl;

  String get error;

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPassFailureImplCopyWith<_$ForgotPassFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
