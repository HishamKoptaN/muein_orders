// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message, String? code) networkFailure,
    required TResult Function(String message, String? code) cacheFailure,
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() userDisabled,
    required TResult Function() userNotLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message, String? code)? networkFailure,
    TResult? Function(String message, String? code)? cacheFailure,
    TResult? Function()? invalidEmailOrPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? weakPassword,
    TResult? Function()? userDisabled,
    TResult? Function()? userNotLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message, String? code)? networkFailure,
    TResult Function(String message, String? code)? cacheFailure,
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? userDisabled,
    TResult Function()? userNotLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotLoggedIn value) userNotLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(UserNotLoggedIn value)? userNotLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotLoggedIn value)? userNotLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl extends ServerFailure {
  const _$ServerFailureImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message, String? code) networkFailure,
    required TResult Function(String message, String? code) cacheFailure,
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() userDisabled,
    required TResult Function() userNotLoggedIn,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message, String? code)? networkFailure,
    TResult? Function(String message, String? code)? cacheFailure,
    TResult? Function()? invalidEmailOrPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? weakPassword,
    TResult? Function()? userDisabled,
    TResult? Function()? userNotLoggedIn,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message, String? code)? networkFailure,
    TResult Function(String message, String? code)? cacheFailure,
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? userDisabled,
    TResult Function()? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotLoggedIn value) userNotLoggedIn,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(UserNotLoggedIn value)? userNotLoggedIn,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotLoggedIn value)? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends Failure {
  const factory ServerFailure({required final String message}) =
      _$ServerFailureImpl;
  const ServerFailure._() : super._();

  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String? code});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = freezed,
  }) {
    return _then(_$NetworkFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NetworkFailureImpl extends NetworkFailure {
  const _$NetworkFailureImpl({required this.message, this.code}) : super._();

  @override
  final String message;
  @override
  final String? code;

  @override
  String toString() {
    return 'Failure.networkFailure(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message, String? code) networkFailure,
    required TResult Function(String message, String? code) cacheFailure,
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() userDisabled,
    required TResult Function() userNotLoggedIn,
  }) {
    return networkFailure(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message, String? code)? networkFailure,
    TResult? Function(String message, String? code)? cacheFailure,
    TResult? Function()? invalidEmailOrPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? weakPassword,
    TResult? Function()? userDisabled,
    TResult? Function()? userNotLoggedIn,
  }) {
    return networkFailure?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message, String? code)? networkFailure,
    TResult Function(String message, String? code)? cacheFailure,
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? userDisabled,
    TResult Function()? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotLoggedIn value) userNotLoggedIn,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(UserNotLoggedIn value)? userNotLoggedIn,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotLoggedIn value)? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure extends Failure {
  const factory NetworkFailure(
      {required final String message,
      final String? code}) = _$NetworkFailureImpl;
  const NetworkFailure._() : super._();

  String get message;
  String? get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String? code});
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = freezed,
  }) {
    return _then(_$CacheFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CacheFailureImpl extends CacheFailure {
  const _$CacheFailureImpl({required this.message, this.code}) : super._();

  @override
  final String message;
  @override
  final String? code;

  @override
  String toString() {
    return 'Failure.cacheFailure(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      __$$CacheFailureImplCopyWithImpl<_$CacheFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message, String? code) networkFailure,
    required TResult Function(String message, String? code) cacheFailure,
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() userDisabled,
    required TResult Function() userNotLoggedIn,
  }) {
    return cacheFailure(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message, String? code)? networkFailure,
    TResult? Function(String message, String? code)? cacheFailure,
    TResult? Function()? invalidEmailOrPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? weakPassword,
    TResult? Function()? userDisabled,
    TResult? Function()? userNotLoggedIn,
  }) {
    return cacheFailure?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message, String? code)? networkFailure,
    TResult Function(String message, String? code)? cacheFailure,
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? userDisabled,
    TResult Function()? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotLoggedIn value) userNotLoggedIn,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(UserNotLoggedIn value)? userNotLoggedIn,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotLoggedIn value)? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure extends Failure {
  const factory CacheFailure(
      {required final String message, final String? code}) = _$CacheFailureImpl;
  const CacheFailure._() : super._();

  String get message;
  String? get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailOrPasswordImplCopyWith<$Res> {
  factory _$$InvalidEmailOrPasswordImplCopyWith(
          _$InvalidEmailOrPasswordImpl value,
          $Res Function(_$InvalidEmailOrPasswordImpl) then) =
      __$$InvalidEmailOrPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailOrPasswordImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$InvalidEmailOrPasswordImpl>
    implements _$$InvalidEmailOrPasswordImplCopyWith<$Res> {
  __$$InvalidEmailOrPasswordImplCopyWithImpl(
      _$InvalidEmailOrPasswordImpl _value,
      $Res Function(_$InvalidEmailOrPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvalidEmailOrPasswordImpl extends InvalidEmailOrPassword {
  const _$InvalidEmailOrPasswordImpl() : super._();

  @override
  String toString() {
    return 'Failure.invalidEmailOrPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailOrPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message, String? code) networkFailure,
    required TResult Function(String message, String? code) cacheFailure,
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() userDisabled,
    required TResult Function() userNotLoggedIn,
  }) {
    return invalidEmailOrPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message, String? code)? networkFailure,
    TResult? Function(String message, String? code)? cacheFailure,
    TResult? Function()? invalidEmailOrPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? weakPassword,
    TResult? Function()? userDisabled,
    TResult? Function()? userNotLoggedIn,
  }) {
    return invalidEmailOrPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message, String? code)? networkFailure,
    TResult Function(String message, String? code)? cacheFailure,
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? userDisabled,
    TResult Function()? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (invalidEmailOrPassword != null) {
      return invalidEmailOrPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotLoggedIn value) userNotLoggedIn,
  }) {
    return invalidEmailOrPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(UserNotLoggedIn value)? userNotLoggedIn,
  }) {
    return invalidEmailOrPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotLoggedIn value)? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (invalidEmailOrPassword != null) {
      return invalidEmailOrPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailOrPassword extends Failure {
  const factory InvalidEmailOrPassword() = _$InvalidEmailOrPasswordImpl;
  const InvalidEmailOrPassword._() : super._();
}

/// @nodoc
abstract class _$$EmailAlreadyInUseImplCopyWith<$Res> {
  factory _$$EmailAlreadyInUseImplCopyWith(_$EmailAlreadyInUseImpl value,
          $Res Function(_$EmailAlreadyInUseImpl) then) =
      __$$EmailAlreadyInUseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAlreadyInUseImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$EmailAlreadyInUseImpl>
    implements _$$EmailAlreadyInUseImplCopyWith<$Res> {
  __$$EmailAlreadyInUseImplCopyWithImpl(_$EmailAlreadyInUseImpl _value,
      $Res Function(_$EmailAlreadyInUseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmailAlreadyInUseImpl extends EmailAlreadyInUse {
  const _$EmailAlreadyInUseImpl() : super._();

  @override
  String toString() {
    return 'Failure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAlreadyInUseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message, String? code) networkFailure,
    required TResult Function(String message, String? code) cacheFailure,
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() userDisabled,
    required TResult Function() userNotLoggedIn,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message, String? code)? networkFailure,
    TResult? Function(String message, String? code)? cacheFailure,
    TResult? Function()? invalidEmailOrPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? weakPassword,
    TResult? Function()? userDisabled,
    TResult? Function()? userNotLoggedIn,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message, String? code)? networkFailure,
    TResult Function(String message, String? code)? cacheFailure,
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? userDisabled,
    TResult Function()? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotLoggedIn value) userNotLoggedIn,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(UserNotLoggedIn value)? userNotLoggedIn,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotLoggedIn value)? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse extends Failure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUseImpl;
  const EmailAlreadyInUse._() : super._();
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<$Res> {
  factory _$$InvalidEmailImplCopyWith(
          _$InvalidEmailImpl value, $Res Function(_$InvalidEmailImpl) then) =
      __$$InvalidEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$InvalidEmailImpl>
    implements _$$InvalidEmailImplCopyWith<$Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl _value, $Res Function(_$InvalidEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvalidEmailImpl extends InvalidEmail {
  const _$InvalidEmailImpl() : super._();

  @override
  String toString() {
    return 'Failure.invalidEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message, String? code) networkFailure,
    required TResult Function(String message, String? code) cacheFailure,
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() userDisabled,
    required TResult Function() userNotLoggedIn,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message, String? code)? networkFailure,
    TResult? Function(String message, String? code)? cacheFailure,
    TResult? Function()? invalidEmailOrPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? weakPassword,
    TResult? Function()? userDisabled,
    TResult? Function()? userNotLoggedIn,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message, String? code)? networkFailure,
    TResult Function(String message, String? code)? cacheFailure,
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? userDisabled,
    TResult Function()? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotLoggedIn value) userNotLoggedIn,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(UserNotLoggedIn value)? userNotLoggedIn,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotLoggedIn value)? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail extends Failure {
  const factory InvalidEmail() = _$InvalidEmailImpl;
  const InvalidEmail._() : super._();
}

/// @nodoc
abstract class _$$WeakPasswordImplCopyWith<$Res> {
  factory _$$WeakPasswordImplCopyWith(
          _$WeakPasswordImpl value, $Res Function(_$WeakPasswordImpl) then) =
      __$$WeakPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeakPasswordImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$WeakPasswordImpl>
    implements _$$WeakPasswordImplCopyWith<$Res> {
  __$$WeakPasswordImplCopyWithImpl(
      _$WeakPasswordImpl _value, $Res Function(_$WeakPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WeakPasswordImpl extends WeakPassword {
  const _$WeakPasswordImpl() : super._();

  @override
  String toString() {
    return 'Failure.weakPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeakPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message, String? code) networkFailure,
    required TResult Function(String message, String? code) cacheFailure,
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() userDisabled,
    required TResult Function() userNotLoggedIn,
  }) {
    return weakPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message, String? code)? networkFailure,
    TResult? Function(String message, String? code)? cacheFailure,
    TResult? Function()? invalidEmailOrPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? weakPassword,
    TResult? Function()? userDisabled,
    TResult? Function()? userNotLoggedIn,
  }) {
    return weakPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message, String? code)? networkFailure,
    TResult Function(String message, String? code)? cacheFailure,
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? userDisabled,
    TResult Function()? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotLoggedIn value) userNotLoggedIn,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(UserNotLoggedIn value)? userNotLoggedIn,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotLoggedIn value)? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class WeakPassword extends Failure {
  const factory WeakPassword() = _$WeakPasswordImpl;
  const WeakPassword._() : super._();
}

/// @nodoc
abstract class _$$UserDisabledImplCopyWith<$Res> {
  factory _$$UserDisabledImplCopyWith(
          _$UserDisabledImpl value, $Res Function(_$UserDisabledImpl) then) =
      __$$UserDisabledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDisabledImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UserDisabledImpl>
    implements _$$UserDisabledImplCopyWith<$Res> {
  __$$UserDisabledImplCopyWithImpl(
      _$UserDisabledImpl _value, $Res Function(_$UserDisabledImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserDisabledImpl extends UserDisabled {
  const _$UserDisabledImpl() : super._();

  @override
  String toString() {
    return 'Failure.userDisabled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDisabledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message, String? code) networkFailure,
    required TResult Function(String message, String? code) cacheFailure,
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() userDisabled,
    required TResult Function() userNotLoggedIn,
  }) {
    return userDisabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message, String? code)? networkFailure,
    TResult? Function(String message, String? code)? cacheFailure,
    TResult? Function()? invalidEmailOrPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? weakPassword,
    TResult? Function()? userDisabled,
    TResult? Function()? userNotLoggedIn,
  }) {
    return userDisabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message, String? code)? networkFailure,
    TResult Function(String message, String? code)? cacheFailure,
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? userDisabled,
    TResult Function()? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotLoggedIn value) userNotLoggedIn,
  }) {
    return userDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(UserNotLoggedIn value)? userNotLoggedIn,
  }) {
    return userDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotLoggedIn value)? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled(this);
    }
    return orElse();
  }
}

abstract class UserDisabled extends Failure {
  const factory UserDisabled() = _$UserDisabledImpl;
  const UserDisabled._() : super._();
}

/// @nodoc
abstract class _$$UserNotLoggedInImplCopyWith<$Res> {
  factory _$$UserNotLoggedInImplCopyWith(_$UserNotLoggedInImpl value,
          $Res Function(_$UserNotLoggedInImpl) then) =
      __$$UserNotLoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotLoggedInImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UserNotLoggedInImpl>
    implements _$$UserNotLoggedInImplCopyWith<$Res> {
  __$$UserNotLoggedInImplCopyWithImpl(
      _$UserNotLoggedInImpl _value, $Res Function(_$UserNotLoggedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserNotLoggedInImpl extends UserNotLoggedIn {
  const _$UserNotLoggedInImpl() : super._();

  @override
  String toString() {
    return 'Failure.userNotLoggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotLoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message, String? code) networkFailure,
    required TResult Function(String message, String? code) cacheFailure,
    required TResult Function() invalidEmailOrPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() userDisabled,
    required TResult Function() userNotLoggedIn,
  }) {
    return userNotLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message, String? code)? networkFailure,
    TResult? Function(String message, String? code)? cacheFailure,
    TResult? Function()? invalidEmailOrPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? weakPassword,
    TResult? Function()? userDisabled,
    TResult? Function()? userNotLoggedIn,
  }) {
    return userNotLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message, String? code)? networkFailure,
    TResult Function(String message, String? code)? cacheFailure,
    TResult Function()? invalidEmailOrPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? userDisabled,
    TResult Function()? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (userNotLoggedIn != null) {
      return userNotLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotLoggedIn value) userNotLoggedIn,
  }) {
    return userNotLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(UserNotLoggedIn value)? userNotLoggedIn,
  }) {
    return userNotLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotLoggedIn value)? userNotLoggedIn,
    required TResult orElse(),
  }) {
    if (userNotLoggedIn != null) {
      return userNotLoggedIn(this);
    }
    return orElse();
  }
}

abstract class UserNotLoggedIn extends Failure {
  const factory UserNotLoggedIn() = _$UserNotLoggedInImpl;
  const UserNotLoggedIn._() : super._();
}
