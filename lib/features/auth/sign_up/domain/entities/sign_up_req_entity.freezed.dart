// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpReqEntity {

 GenericFormInput? get name; PhoneNumberFormInput? get phone; EmailFormInput? get email; PasswordFormInput? get password; PasswordFormInput? get confirmPassword; bool get obscurePassword; bool get rememberMe; GenericFormInput? get phoneNumber; GenericFormInput? get dialCode; GenericFormInput? get isoCode; bool? get isValidNumber;
/// Create a copy of SignUpReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpReqEntityCopyWith<SignUpReqEntity> get copyWith => _$SignUpReqEntityCopyWithImpl<SignUpReqEntity>(this as SignUpReqEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpReqEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.obscurePassword, obscurePassword) || other.obscurePassword == obscurePassword)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.dialCode, dialCode) || other.dialCode == dialCode)&&(identical(other.isoCode, isoCode) || other.isoCode == isoCode)&&(identical(other.isValidNumber, isValidNumber) || other.isValidNumber == isValidNumber));
}


@override
int get hashCode => Object.hash(runtimeType,name,phone,email,password,confirmPassword,obscurePassword,rememberMe,phoneNumber,dialCode,isoCode,isValidNumber);

@override
String toString() {
  return 'SignUpReqEntity(name: $name, phone: $phone, email: $email, password: $password, confirmPassword: $confirmPassword, obscurePassword: $obscurePassword, rememberMe: $rememberMe, phoneNumber: $phoneNumber, dialCode: $dialCode, isoCode: $isoCode, isValidNumber: $isValidNumber)';
}


}

/// @nodoc
abstract mixin class $SignUpReqEntityCopyWith<$Res>  {
  factory $SignUpReqEntityCopyWith(SignUpReqEntity value, $Res Function(SignUpReqEntity) _then) = _$SignUpReqEntityCopyWithImpl;
@useResult
$Res call({
 GenericFormInput? name, PhoneNumberFormInput? phone, EmailFormInput? email, PasswordFormInput? password, PasswordFormInput? confirmPassword, bool obscurePassword, bool rememberMe, GenericFormInput? phoneNumber, GenericFormInput? dialCode, GenericFormInput? isoCode, bool? isValidNumber
});




}
/// @nodoc
class _$SignUpReqEntityCopyWithImpl<$Res>
    implements $SignUpReqEntityCopyWith<$Res> {
  _$SignUpReqEntityCopyWithImpl(this._self, this._then);

  final SignUpReqEntity _self;
  final $Res Function(SignUpReqEntity) _then;

/// Create a copy of SignUpReqEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? phone = freezed,Object? email = freezed,Object? password = freezed,Object? confirmPassword = freezed,Object? obscurePassword = null,Object? rememberMe = null,Object? phoneNumber = freezed,Object? dialCode = freezed,Object? isoCode = freezed,Object? isValidNumber = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneNumberFormInput?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailFormInput?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordFormInput?,confirmPassword: freezed == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as PasswordFormInput?,obscurePassword: null == obscurePassword ? _self.obscurePassword : obscurePassword // ignore: cast_nullable_to_non_nullable
as bool,rememberMe: null == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as bool,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,dialCode: freezed == dialCode ? _self.dialCode : dialCode // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,isoCode: freezed == isoCode ? _self.isoCode : isoCode // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,isValidNumber: freezed == isValidNumber ? _self.isValidNumber : isValidNumber // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpReqEntity].
extension SignUpReqEntityPatterns on SignUpReqEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpReqEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpReqEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpReqEntity value)  $default,){
final _that = this;
switch (_that) {
case _SignUpReqEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpReqEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpReqEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GenericFormInput? name,  PhoneNumberFormInput? phone,  EmailFormInput? email,  PasswordFormInput? password,  PasswordFormInput? confirmPassword,  bool obscurePassword,  bool rememberMe,  GenericFormInput? phoneNumber,  GenericFormInput? dialCode,  GenericFormInput? isoCode,  bool? isValidNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpReqEntity() when $default != null:
return $default(_that.name,_that.phone,_that.email,_that.password,_that.confirmPassword,_that.obscurePassword,_that.rememberMe,_that.phoneNumber,_that.dialCode,_that.isoCode,_that.isValidNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GenericFormInput? name,  PhoneNumberFormInput? phone,  EmailFormInput? email,  PasswordFormInput? password,  PasswordFormInput? confirmPassword,  bool obscurePassword,  bool rememberMe,  GenericFormInput? phoneNumber,  GenericFormInput? dialCode,  GenericFormInput? isoCode,  bool? isValidNumber)  $default,) {final _that = this;
switch (_that) {
case _SignUpReqEntity():
return $default(_that.name,_that.phone,_that.email,_that.password,_that.confirmPassword,_that.obscurePassword,_that.rememberMe,_that.phoneNumber,_that.dialCode,_that.isoCode,_that.isValidNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GenericFormInput? name,  PhoneNumberFormInput? phone,  EmailFormInput? email,  PasswordFormInput? password,  PasswordFormInput? confirmPassword,  bool obscurePassword,  bool rememberMe,  GenericFormInput? phoneNumber,  GenericFormInput? dialCode,  GenericFormInput? isoCode,  bool? isValidNumber)?  $default,) {final _that = this;
switch (_that) {
case _SignUpReqEntity() when $default != null:
return $default(_that.name,_that.phone,_that.email,_that.password,_that.confirmPassword,_that.obscurePassword,_that.rememberMe,_that.phoneNumber,_that.dialCode,_that.isoCode,_that.isValidNumber);case _:
  return null;

}
}

}

/// @nodoc


class _SignUpReqEntity implements SignUpReqEntity {
  const _SignUpReqEntity({this.name, this.phone, this.email, this.password, this.confirmPassword, this.obscurePassword = true, this.rememberMe = false, this.phoneNumber, this.dialCode, this.isoCode, this.isValidNumber});
  

@override final  GenericFormInput? name;
@override final  PhoneNumberFormInput? phone;
@override final  EmailFormInput? email;
@override final  PasswordFormInput? password;
@override final  PasswordFormInput? confirmPassword;
@override@JsonKey() final  bool obscurePassword;
@override@JsonKey() final  bool rememberMe;
@override final  GenericFormInput? phoneNumber;
@override final  GenericFormInput? dialCode;
@override final  GenericFormInput? isoCode;
@override final  bool? isValidNumber;

/// Create a copy of SignUpReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpReqEntityCopyWith<_SignUpReqEntity> get copyWith => __$SignUpReqEntityCopyWithImpl<_SignUpReqEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpReqEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.obscurePassword, obscurePassword) || other.obscurePassword == obscurePassword)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.dialCode, dialCode) || other.dialCode == dialCode)&&(identical(other.isoCode, isoCode) || other.isoCode == isoCode)&&(identical(other.isValidNumber, isValidNumber) || other.isValidNumber == isValidNumber));
}


@override
int get hashCode => Object.hash(runtimeType,name,phone,email,password,confirmPassword,obscurePassword,rememberMe,phoneNumber,dialCode,isoCode,isValidNumber);

@override
String toString() {
  return 'SignUpReqEntity(name: $name, phone: $phone, email: $email, password: $password, confirmPassword: $confirmPassword, obscurePassword: $obscurePassword, rememberMe: $rememberMe, phoneNumber: $phoneNumber, dialCode: $dialCode, isoCode: $isoCode, isValidNumber: $isValidNumber)';
}


}

/// @nodoc
abstract mixin class _$SignUpReqEntityCopyWith<$Res> implements $SignUpReqEntityCopyWith<$Res> {
  factory _$SignUpReqEntityCopyWith(_SignUpReqEntity value, $Res Function(_SignUpReqEntity) _then) = __$SignUpReqEntityCopyWithImpl;
@override @useResult
$Res call({
 GenericFormInput? name, PhoneNumberFormInput? phone, EmailFormInput? email, PasswordFormInput? password, PasswordFormInput? confirmPassword, bool obscurePassword, bool rememberMe, GenericFormInput? phoneNumber, GenericFormInput? dialCode, GenericFormInput? isoCode, bool? isValidNumber
});




}
/// @nodoc
class __$SignUpReqEntityCopyWithImpl<$Res>
    implements _$SignUpReqEntityCopyWith<$Res> {
  __$SignUpReqEntityCopyWithImpl(this._self, this._then);

  final _SignUpReqEntity _self;
  final $Res Function(_SignUpReqEntity) _then;

/// Create a copy of SignUpReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? phone = freezed,Object? email = freezed,Object? password = freezed,Object? confirmPassword = freezed,Object? obscurePassword = null,Object? rememberMe = null,Object? phoneNumber = freezed,Object? dialCode = freezed,Object? isoCode = freezed,Object? isValidNumber = freezed,}) {
  return _then(_SignUpReqEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneNumberFormInput?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailFormInput?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordFormInput?,confirmPassword: freezed == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as PasswordFormInput?,obscurePassword: null == obscurePassword ? _self.obscurePassword : obscurePassword // ignore: cast_nullable_to_non_nullable
as bool,rememberMe: null == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as bool,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,dialCode: freezed == dialCode ? _self.dialCode : dialCode // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,isoCode: freezed == isoCode ? _self.isoCode : isoCode // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,isValidNumber: freezed == isValidNumber ? _self.isValidNumber : isValidNumber // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
