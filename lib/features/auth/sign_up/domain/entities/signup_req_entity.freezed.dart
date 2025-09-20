// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpReqEntity {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;

  /// Create a copy of SignUpReqEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpReqEntityCopyWith<SignUpReqEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpReqEntityCopyWith<$Res> {
  factory $SignUpReqEntityCopyWith(
          SignUpReqEntity value, $Res Function(SignUpReqEntity) then) =
      _$SignUpReqEntityCopyWithImpl<$Res, SignUpReqEntity>;
  @useResult
  $Res call(
      {String name,
      String phone,
      String? email,
      String? password,
      String? fcmToken});
}

/// @nodoc
class _$SignUpReqEntityCopyWithImpl<$Res, $Val extends SignUpReqEntity>
    implements $SignUpReqEntityCopyWith<$Res> {
  _$SignUpReqEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpReqEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpReqEntityImplCopyWith<$Res>
    implements $SignUpReqEntityCopyWith<$Res> {
  factory _$$SignUpReqEntityImplCopyWith(_$SignUpReqEntityImpl value,
          $Res Function(_$SignUpReqEntityImpl) then) =
      __$$SignUpReqEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String phone,
      String? email,
      String? password,
      String? fcmToken});
}

/// @nodoc
class __$$SignUpReqEntityImplCopyWithImpl<$Res>
    extends _$SignUpReqEntityCopyWithImpl<$Res, _$SignUpReqEntityImpl>
    implements _$$SignUpReqEntityImplCopyWith<$Res> {
  __$$SignUpReqEntityImplCopyWithImpl(
      _$SignUpReqEntityImpl _value, $Res Function(_$SignUpReqEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpReqEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_$SignUpReqEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignUpReqEntityImpl implements _SignUpReqEntity {
  const _$SignUpReqEntityImpl(
      {required this.name,
      required this.phone,
      this.email,
      this.password,
      this.fcmToken});

  @override
  final String name;
  @override
  final String phone;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? fcmToken;

  @override
  String toString() {
    return 'SignUpReqEntity(name: $name, phone: $phone, email: $email, password: $password, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpReqEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phone, email, password, fcmToken);

  /// Create a copy of SignUpReqEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpReqEntityImplCopyWith<_$SignUpReqEntityImpl> get copyWith =>
      __$$SignUpReqEntityImplCopyWithImpl<_$SignUpReqEntityImpl>(
          this, _$identity);
}

abstract class _SignUpReqEntity implements SignUpReqEntity {
  const factory _SignUpReqEntity(
      {required final String name,
      required final String phone,
      final String? email,
      final String? password,
      final String? fcmToken}) = _$SignUpReqEntityImpl;

  @override
  String get name;
  @override
  String get phone;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get fcmToken;

  /// Create a copy of SignUpReqEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpReqEntityImplCopyWith<_$SignUpReqEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
