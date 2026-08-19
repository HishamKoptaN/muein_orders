// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignInReqEntity {

 EmailFormInput? get email; PasswordFormInput? get password; bool get obscurePassword; bool get rememberMe; GenericFormInput? get phoneNumber; GenericFormInput? get dialCode; GenericFormInput? get isoCode; bool? get isValidNumber; String? get verificationId; String? get smsCode;
/// Create a copy of SignInReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInReqEntityCopyWith<SignInReqEntity> get copyWith => _$SignInReqEntityCopyWithImpl<SignInReqEntity>(this as SignInReqEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInReqEntity&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.obscurePassword, obscurePassword) || other.obscurePassword == obscurePassword)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.dialCode, dialCode) || other.dialCode == dialCode)&&(identical(other.isoCode, isoCode) || other.isoCode == isoCode)&&(identical(other.isValidNumber, isValidNumber) || other.isValidNumber == isValidNumber)&&(identical(other.verificationId, verificationId) || other.verificationId == verificationId)&&(identical(other.smsCode, smsCode) || other.smsCode == smsCode));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,obscurePassword,rememberMe,phoneNumber,dialCode,isoCode,isValidNumber,verificationId,smsCode);

@override
String toString() {
  return 'SignInReqEntity(email: $email, password: $password, obscurePassword: $obscurePassword, rememberMe: $rememberMe, phoneNumber: $phoneNumber, dialCode: $dialCode, isoCode: $isoCode, isValidNumber: $isValidNumber, verificationId: $verificationId, smsCode: $smsCode)';
}


}

/// @nodoc
abstract mixin class $SignInReqEntityCopyWith<$Res>  {
  factory $SignInReqEntityCopyWith(SignInReqEntity value, $Res Function(SignInReqEntity) _then) = _$SignInReqEntityCopyWithImpl;
@useResult
$Res call({
 EmailFormInput? email, PasswordFormInput? password, bool obscurePassword, bool rememberMe, GenericFormInput? phoneNumber, GenericFormInput? dialCode, GenericFormInput? isoCode, bool? isValidNumber, String? verificationId, String? smsCode
});




}
/// @nodoc
class _$SignInReqEntityCopyWithImpl<$Res>
    implements $SignInReqEntityCopyWith<$Res> {
  _$SignInReqEntityCopyWithImpl(this._self, this._then);

  final SignInReqEntity _self;
  final $Res Function(SignInReqEntity) _then;

/// Create a copy of SignInReqEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? password = freezed,Object? obscurePassword = null,Object? rememberMe = null,Object? phoneNumber = freezed,Object? dialCode = freezed,Object? isoCode = freezed,Object? isValidNumber = freezed,Object? verificationId = freezed,Object? smsCode = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailFormInput?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordFormInput?,obscurePassword: null == obscurePassword ? _self.obscurePassword : obscurePassword // ignore: cast_nullable_to_non_nullable
as bool,rememberMe: null == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as bool,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,dialCode: freezed == dialCode ? _self.dialCode : dialCode // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,isoCode: freezed == isoCode ? _self.isoCode : isoCode // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,isValidNumber: freezed == isValidNumber ? _self.isValidNumber : isValidNumber // ignore: cast_nullable_to_non_nullable
as bool?,verificationId: freezed == verificationId ? _self.verificationId : verificationId // ignore: cast_nullable_to_non_nullable
as String?,smsCode: freezed == smsCode ? _self.smsCode : smsCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignInReqEntity].
extension SignInReqEntityPatterns on SignInReqEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInReqEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInReqEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInReqEntity value)  $default,){
final _that = this;
switch (_that) {
case _SignInReqEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInReqEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SignInReqEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmailFormInput? email,  PasswordFormInput? password,  bool obscurePassword,  bool rememberMe,  GenericFormInput? phoneNumber,  GenericFormInput? dialCode,  GenericFormInput? isoCode,  bool? isValidNumber,  String? verificationId,  String? smsCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInReqEntity() when $default != null:
return $default(_that.email,_that.password,_that.obscurePassword,_that.rememberMe,_that.phoneNumber,_that.dialCode,_that.isoCode,_that.isValidNumber,_that.verificationId,_that.smsCode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmailFormInput? email,  PasswordFormInput? password,  bool obscurePassword,  bool rememberMe,  GenericFormInput? phoneNumber,  GenericFormInput? dialCode,  GenericFormInput? isoCode,  bool? isValidNumber,  String? verificationId,  String? smsCode)  $default,) {final _that = this;
switch (_that) {
case _SignInReqEntity():
return $default(_that.email,_that.password,_that.obscurePassword,_that.rememberMe,_that.phoneNumber,_that.dialCode,_that.isoCode,_that.isValidNumber,_that.verificationId,_that.smsCode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmailFormInput? email,  PasswordFormInput? password,  bool obscurePassword,  bool rememberMe,  GenericFormInput? phoneNumber,  GenericFormInput? dialCode,  GenericFormInput? isoCode,  bool? isValidNumber,  String? verificationId,  String? smsCode)?  $default,) {final _that = this;
switch (_that) {
case _SignInReqEntity() when $default != null:
return $default(_that.email,_that.password,_that.obscurePassword,_that.rememberMe,_that.phoneNumber,_that.dialCode,_that.isoCode,_that.isValidNumber,_that.verificationId,_that.smsCode);case _:
  return null;

}
}

}

/// @nodoc


class _SignInReqEntity extends SignInReqEntity {
  const _SignInReqEntity({this.email, this.password, this.obscurePassword = true, this.rememberMe = false, this.phoneNumber, this.dialCode, this.isoCode, this.isValidNumber, this.verificationId, this.smsCode}): super._();
  

@override final  EmailFormInput? email;
@override final  PasswordFormInput? password;
@override@JsonKey() final  bool obscurePassword;
@override@JsonKey() final  bool rememberMe;
@override final  GenericFormInput? phoneNumber;
@override final  GenericFormInput? dialCode;
@override final  GenericFormInput? isoCode;
@override final  bool? isValidNumber;
@override final  String? verificationId;
@override final  String? smsCode;

/// Create a copy of SignInReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInReqEntityCopyWith<_SignInReqEntity> get copyWith => __$SignInReqEntityCopyWithImpl<_SignInReqEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInReqEntity&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.obscurePassword, obscurePassword) || other.obscurePassword == obscurePassword)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.dialCode, dialCode) || other.dialCode == dialCode)&&(identical(other.isoCode, isoCode) || other.isoCode == isoCode)&&(identical(other.isValidNumber, isValidNumber) || other.isValidNumber == isValidNumber)&&(identical(other.verificationId, verificationId) || other.verificationId == verificationId)&&(identical(other.smsCode, smsCode) || other.smsCode == smsCode));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,obscurePassword,rememberMe,phoneNumber,dialCode,isoCode,isValidNumber,verificationId,smsCode);

@override
String toString() {
  return 'SignInReqEntity(email: $email, password: $password, obscurePassword: $obscurePassword, rememberMe: $rememberMe, phoneNumber: $phoneNumber, dialCode: $dialCode, isoCode: $isoCode, isValidNumber: $isValidNumber, verificationId: $verificationId, smsCode: $smsCode)';
}


}

/// @nodoc
abstract mixin class _$SignInReqEntityCopyWith<$Res> implements $SignInReqEntityCopyWith<$Res> {
  factory _$SignInReqEntityCopyWith(_SignInReqEntity value, $Res Function(_SignInReqEntity) _then) = __$SignInReqEntityCopyWithImpl;
@override @useResult
$Res call({
 EmailFormInput? email, PasswordFormInput? password, bool obscurePassword, bool rememberMe, GenericFormInput? phoneNumber, GenericFormInput? dialCode, GenericFormInput? isoCode, bool? isValidNumber, String? verificationId, String? smsCode
});




}
/// @nodoc
class __$SignInReqEntityCopyWithImpl<$Res>
    implements _$SignInReqEntityCopyWith<$Res> {
  __$SignInReqEntityCopyWithImpl(this._self, this._then);

  final _SignInReqEntity _self;
  final $Res Function(_SignInReqEntity) _then;

/// Create a copy of SignInReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? password = freezed,Object? obscurePassword = null,Object? rememberMe = null,Object? phoneNumber = freezed,Object? dialCode = freezed,Object? isoCode = freezed,Object? isValidNumber = freezed,Object? verificationId = freezed,Object? smsCode = freezed,}) {
  return _then(_SignInReqEntity(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailFormInput?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordFormInput?,obscurePassword: null == obscurePassword ? _self.obscurePassword : obscurePassword // ignore: cast_nullable_to_non_nullable
as bool,rememberMe: null == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as bool,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,dialCode: freezed == dialCode ? _self.dialCode : dialCode // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,isoCode: freezed == isoCode ? _self.isoCode : isoCode // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,isValidNumber: freezed == isValidNumber ? _self.isValidNumber : isValidNumber // ignore: cast_nullable_to_non_nullable
as bool?,verificationId: freezed == verificationId ? _self.verificationId : verificationId // ignore: cast_nullable_to_non_nullable
as String?,smsCode: freezed == smsCode ? _self.smsCode : smsCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
