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
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendPassResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendPassResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendPassResetEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendPassResetEmail value) sendPassResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendPassResetEmail value)? sendPassResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendPassResetEmail value)? sendPassResetEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ForgotPassEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotPassEventCopyWith<ForgotPassEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPassEventCopyWith<$Res> {
  factory $ForgotPassEventCopyWith(
          ForgotPassEvent value, $Res Function(ForgotPassEvent) then) =
      _$ForgotPassEventCopyWithImpl<$Res, ForgotPassEvent>;
  @useResult
  $Res call({String email});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendPassResetEmailImplCopyWith<$Res>
    implements $ForgotPassEventCopyWith<$Res> {
  factory _$$SendPassResetEmailImplCopyWith(_$SendPassResetEmailImpl value,
          $Res Function(_$SendPassResetEmailImpl) then) =
      __$$SendPassResetEmailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendPassResetEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendPassResetEmailImpl implements SendPassResetEmail {
  const _$SendPassResetEmailImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPassEvent.sendPassResetEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPassResetEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ForgotPassEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPassResetEmailImplCopyWith<_$SendPassResetEmailImpl> get copyWith =>
      __$$SendPassResetEmailImplCopyWithImpl<_$SendPassResetEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendPassResetEmail,
  }) {
    return sendPassResetEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendPassResetEmail,
  }) {
    return sendPassResetEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendPassResetEmail,
    required TResult orElse(),
  }) {
    if (sendPassResetEmail != null) {
      return sendPassResetEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendPassResetEmail value) sendPassResetEmail,
  }) {
    return sendPassResetEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendPassResetEmail value)? sendPassResetEmail,
  }) {
    return sendPassResetEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  const factory SendPassResetEmail({required final String email}) =
      _$SendPassResetEmailImpl;

  @override
  String get email;

  /// Create a copy of ForgotPassEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendPassResetEmailImplCopyWith<_$SendPassResetEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPassState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPassInitial value) initial,
    required TResult Function(ForgotPassLoading value) loading,
    required TResult Function(ForgotPassSuccess value) success,
    required TResult Function(ForgotPassFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassInitial value)? initial,
    TResult? Function(ForgotPassLoading value)? loading,
    TResult? Function(ForgotPassSuccess value)? success,
    TResult? Function(ForgotPassFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassInitial value)? initial,
    TResult Function(ForgotPassLoading value)? loading,
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
abstract class _$$ForgotPassInitialImplCopyWith<$Res> {
  factory _$$ForgotPassInitialImplCopyWith(_$ForgotPassInitialImpl value,
          $Res Function(_$ForgotPassInitialImpl) then) =
      __$$ForgotPassInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPassInitialImplCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$ForgotPassInitialImpl>
    implements _$$ForgotPassInitialImplCopyWith<$Res> {
  __$$ForgotPassInitialImplCopyWithImpl(_$ForgotPassInitialImpl _value,
      $Res Function(_$ForgotPassInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForgotPassInitialImpl implements ForgotPassInitial {
  const _$ForgotPassInitialImpl();

  @override
  String toString() {
    return 'ForgotPassState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ForgotPassInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
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
    required TResult Function(ForgotPassInitial value) initial,
    required TResult Function(ForgotPassLoading value) loading,
    required TResult Function(ForgotPassSuccess value) success,
    required TResult Function(ForgotPassFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassInitial value)? initial,
    TResult? Function(ForgotPassLoading value)? loading,
    TResult? Function(ForgotPassSuccess value)? success,
    TResult? Function(ForgotPassFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassInitial value)? initial,
    TResult Function(ForgotPassLoading value)? loading,
    TResult Function(ForgotPassSuccess value)? success,
    TResult Function(ForgotPassFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ForgotPassInitial implements ForgotPassState {
  const factory ForgotPassInitial() = _$ForgotPassInitialImpl;
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(ForgotPassInitial value) initial,
    required TResult Function(ForgotPassLoading value) loading,
    required TResult Function(ForgotPassSuccess value) success,
    required TResult Function(ForgotPassFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassInitial value)? initial,
    TResult? Function(ForgotPassLoading value)? loading,
    TResult? Function(ForgotPassSuccess value)? success,
    TResult? Function(ForgotPassFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassInitial value)? initial,
    TResult Function(ForgotPassLoading value)? loading,
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(ForgotPassInitial value) initial,
    required TResult Function(ForgotPassLoading value) loading,
    required TResult Function(ForgotPassSuccess value) success,
    required TResult Function(ForgotPassFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassInitial value)? initial,
    TResult? Function(ForgotPassLoading value)? loading,
    TResult? Function(ForgotPassSuccess value)? success,
    TResult? Function(ForgotPassFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassInitial value)? initial,
    TResult Function(ForgotPassLoading value)? loading,
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(ForgotPassInitial value) initial,
    required TResult Function(ForgotPassLoading value) loading,
    required TResult Function(ForgotPassSuccess value) success,
    required TResult Function(ForgotPassFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassInitial value)? initial,
    TResult? Function(ForgotPassLoading value)? loading,
    TResult? Function(ForgotPassSuccess value)? success,
    TResult? Function(ForgotPassFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassInitial value)? initial,
    TResult Function(ForgotPassLoading value)? loading,
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
