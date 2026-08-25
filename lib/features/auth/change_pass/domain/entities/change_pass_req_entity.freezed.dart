// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_pass_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangePasswordReqEntity {

 PasswordFormInput? get oldPassword; PasswordFormInput? get password; PasswordFormInput? get confirmPassword; bool get obscurePassword;
/// Create a copy of ChangePasswordReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordReqEntityCopyWith<ChangePasswordReqEntity> get copyWith => _$ChangePasswordReqEntityCopyWithImpl<ChangePasswordReqEntity>(this as ChangePasswordReqEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordReqEntity&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.obscurePassword, obscurePassword) || other.obscurePassword == obscurePassword));
}


@override
int get hashCode => Object.hash(runtimeType,oldPassword,password,confirmPassword,obscurePassword);

@override
String toString() {
  return 'ChangePasswordReqEntity(oldPassword: $oldPassword, password: $password, confirmPassword: $confirmPassword, obscurePassword: $obscurePassword)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordReqEntityCopyWith<$Res>  {
  factory $ChangePasswordReqEntityCopyWith(ChangePasswordReqEntity value, $Res Function(ChangePasswordReqEntity) _then) = _$ChangePasswordReqEntityCopyWithImpl;
@useResult
$Res call({
 PasswordFormInput? oldPassword, PasswordFormInput? password, PasswordFormInput? confirmPassword, bool obscurePassword
});




}
/// @nodoc
class _$ChangePasswordReqEntityCopyWithImpl<$Res>
    implements $ChangePasswordReqEntityCopyWith<$Res> {
  _$ChangePasswordReqEntityCopyWithImpl(this._self, this._then);

  final ChangePasswordReqEntity _self;
  final $Res Function(ChangePasswordReqEntity) _then;

/// Create a copy of ChangePasswordReqEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oldPassword = freezed,Object? password = freezed,Object? confirmPassword = freezed,Object? obscurePassword = null,}) {
  return _then(_self.copyWith(
oldPassword: freezed == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as PasswordFormInput?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordFormInput?,confirmPassword: freezed == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as PasswordFormInput?,obscurePassword: null == obscurePassword ? _self.obscurePassword : obscurePassword // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePasswordReqEntity].
extension ChangePasswordReqEntityPatterns on ChangePasswordReqEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePasswordReqEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePasswordReqEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePasswordReqEntity value)  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordReqEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePasswordReqEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordReqEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PasswordFormInput? oldPassword,  PasswordFormInput? password,  PasswordFormInput? confirmPassword,  bool obscurePassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePasswordReqEntity() when $default != null:
return $default(_that.oldPassword,_that.password,_that.confirmPassword,_that.obscurePassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PasswordFormInput? oldPassword,  PasswordFormInput? password,  PasswordFormInput? confirmPassword,  bool obscurePassword)  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordReqEntity():
return $default(_that.oldPassword,_that.password,_that.confirmPassword,_that.obscurePassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PasswordFormInput? oldPassword,  PasswordFormInput? password,  PasswordFormInput? confirmPassword,  bool obscurePassword)?  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordReqEntity() when $default != null:
return $default(_that.oldPassword,_that.password,_that.confirmPassword,_that.obscurePassword);case _:
  return null;

}
}

}

/// @nodoc


class _ChangePasswordReqEntity implements ChangePasswordReqEntity {
  const _ChangePasswordReqEntity({this.oldPassword, this.password, this.confirmPassword, this.obscurePassword = true});
  

@override final  PasswordFormInput? oldPassword;
@override final  PasswordFormInput? password;
@override final  PasswordFormInput? confirmPassword;
@override@JsonKey() final  bool obscurePassword;

/// Create a copy of ChangePasswordReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordReqEntityCopyWith<_ChangePasswordReqEntity> get copyWith => __$ChangePasswordReqEntityCopyWithImpl<_ChangePasswordReqEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePasswordReqEntity&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.obscurePassword, obscurePassword) || other.obscurePassword == obscurePassword));
}


@override
int get hashCode => Object.hash(runtimeType,oldPassword,password,confirmPassword,obscurePassword);

@override
String toString() {
  return 'ChangePasswordReqEntity(oldPassword: $oldPassword, password: $password, confirmPassword: $confirmPassword, obscurePassword: $obscurePassword)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordReqEntityCopyWith<$Res> implements $ChangePasswordReqEntityCopyWith<$Res> {
  factory _$ChangePasswordReqEntityCopyWith(_ChangePasswordReqEntity value, $Res Function(_ChangePasswordReqEntity) _then) = __$ChangePasswordReqEntityCopyWithImpl;
@override @useResult
$Res call({
 PasswordFormInput? oldPassword, PasswordFormInput? password, PasswordFormInput? confirmPassword, bool obscurePassword
});




}
/// @nodoc
class __$ChangePasswordReqEntityCopyWithImpl<$Res>
    implements _$ChangePasswordReqEntityCopyWith<$Res> {
  __$ChangePasswordReqEntityCopyWithImpl(this._self, this._then);

  final _ChangePasswordReqEntity _self;
  final $Res Function(_ChangePasswordReqEntity) _then;

/// Create a copy of ChangePasswordReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oldPassword = freezed,Object? password = freezed,Object? confirmPassword = freezed,Object? obscurePassword = null,}) {
  return _then(_ChangePasswordReqEntity(
oldPassword: freezed == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as PasswordFormInput?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordFormInput?,confirmPassword: freezed == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as PasswordFormInput?,obscurePassword: null == obscurePassword ? _self.obscurePassword : obscurePassword // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
