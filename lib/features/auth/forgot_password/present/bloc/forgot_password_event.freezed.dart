// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendPasswordResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendPasswordResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendPasswordResetEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotPasswordEventCopyWith<ForgotPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordEvent
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
abstract class _$$SendPasswordResetEmailImplCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory _$$SendPasswordResetEmailImplCopyWith(
          _$SendPasswordResetEmailImpl value,
          $Res Function(_$SendPasswordResetEmailImpl) then) =
      __$$SendPasswordResetEmailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendPasswordResetEmailImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$SendPasswordResetEmailImpl>
    implements _$$SendPasswordResetEmailImplCopyWith<$Res> {
  __$$SendPasswordResetEmailImplCopyWithImpl(
      _$SendPasswordResetEmailImpl _value,
      $Res Function(_$SendPasswordResetEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendPasswordResetEmailImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendPasswordResetEmailImpl implements SendPasswordResetEmail {
  const _$SendPasswordResetEmailImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.sendPasswordResetEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPasswordResetEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPasswordResetEmailImplCopyWith<_$SendPasswordResetEmailImpl>
      get copyWith => __$$SendPasswordResetEmailImplCopyWithImpl<
          _$SendPasswordResetEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendPasswordResetEmail,
  }) {
    return sendPasswordResetEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendPasswordResetEmail,
  }) {
    return sendPasswordResetEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendPasswordResetEmail,
    required TResult orElse(),
  }) {
    if (sendPasswordResetEmail != null) {
      return sendPasswordResetEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
  }) {
    return sendPasswordResetEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
  }) {
    return sendPasswordResetEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    required TResult orElse(),
  }) {
    if (sendPasswordResetEmail != null) {
      return sendPasswordResetEmail(this);
    }
    return orElse();
  }
}

abstract class SendPasswordResetEmail implements ForgotPasswordEvent {
  const factory SendPasswordResetEmail(final String email) =
      _$SendPasswordResetEmailImpl;

  @override
  String get email;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendPasswordResetEmailImplCopyWith<_$SendPasswordResetEmailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
