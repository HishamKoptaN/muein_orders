// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateProfileReqEntity {

 GenericFormInput? get id; XFileFormInput? get avatar; String? get avatarPath; GenericFormInput? get name; PhoneNumberFormInput? get phone;
/// Create a copy of UpdateProfileReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileReqEntityCopyWith<UpdateProfileReqEntity> get copyWith => _$UpdateProfileReqEntityCopyWithImpl<UpdateProfileReqEntity>(this as UpdateProfileReqEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileReqEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.avatarPath, avatarPath) || other.avatarPath == avatarPath)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,id,avatar,avatarPath,name,phone);

@override
String toString() {
  return 'UpdateProfileReqEntity(id: $id, avatar: $avatar, avatarPath: $avatarPath, name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileReqEntityCopyWith<$Res>  {
  factory $UpdateProfileReqEntityCopyWith(UpdateProfileReqEntity value, $Res Function(UpdateProfileReqEntity) _then) = _$UpdateProfileReqEntityCopyWithImpl;
@useResult
$Res call({
 GenericFormInput? id, XFileFormInput? avatar, String? avatarPath, GenericFormInput? name, PhoneNumberFormInput? phone
});




}
/// @nodoc
class _$UpdateProfileReqEntityCopyWithImpl<$Res>
    implements $UpdateProfileReqEntityCopyWith<$Res> {
  _$UpdateProfileReqEntityCopyWithImpl(this._self, this._then);

  final UpdateProfileReqEntity _self;
  final $Res Function(UpdateProfileReqEntity) _then;

/// Create a copy of UpdateProfileReqEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? avatar = freezed,Object? avatarPath = freezed,Object? name = freezed,Object? phone = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as XFileFormInput?,avatarPath: freezed == avatarPath ? _self.avatarPath : avatarPath // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneNumberFormInput?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProfileReqEntity].
extension UpdateProfileReqEntityPatterns on UpdateProfileReqEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProfileReqEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProfileReqEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProfileReqEntity value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileReqEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProfileReqEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileReqEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GenericFormInput? id,  XFileFormInput? avatar,  String? avatarPath,  GenericFormInput? name,  PhoneNumberFormInput? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProfileReqEntity() when $default != null:
return $default(_that.id,_that.avatar,_that.avatarPath,_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GenericFormInput? id,  XFileFormInput? avatar,  String? avatarPath,  GenericFormInput? name,  PhoneNumberFormInput? phone)  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileReqEntity():
return $default(_that.id,_that.avatar,_that.avatarPath,_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GenericFormInput? id,  XFileFormInput? avatar,  String? avatarPath,  GenericFormInput? name,  PhoneNumberFormInput? phone)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileReqEntity() when $default != null:
return $default(_that.id,_that.avatar,_that.avatarPath,_that.name,_that.phone);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateProfileReqEntity implements UpdateProfileReqEntity {
  const _UpdateProfileReqEntity({this.id, this.avatar, this.avatarPath, this.name, this.phone});
  

@override final  GenericFormInput? id;
@override final  XFileFormInput? avatar;
@override final  String? avatarPath;
@override final  GenericFormInput? name;
@override final  PhoneNumberFormInput? phone;

/// Create a copy of UpdateProfileReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileReqEntityCopyWith<_UpdateProfileReqEntity> get copyWith => __$UpdateProfileReqEntityCopyWithImpl<_UpdateProfileReqEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfileReqEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.avatarPath, avatarPath) || other.avatarPath == avatarPath)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,id,avatar,avatarPath,name,phone);

@override
String toString() {
  return 'UpdateProfileReqEntity(id: $id, avatar: $avatar, avatarPath: $avatarPath, name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileReqEntityCopyWith<$Res> implements $UpdateProfileReqEntityCopyWith<$Res> {
  factory _$UpdateProfileReqEntityCopyWith(_UpdateProfileReqEntity value, $Res Function(_UpdateProfileReqEntity) _then) = __$UpdateProfileReqEntityCopyWithImpl;
@override @useResult
$Res call({
 GenericFormInput? id, XFileFormInput? avatar, String? avatarPath, GenericFormInput? name, PhoneNumberFormInput? phone
});




}
/// @nodoc
class __$UpdateProfileReqEntityCopyWithImpl<$Res>
    implements _$UpdateProfileReqEntityCopyWith<$Res> {
  __$UpdateProfileReqEntityCopyWithImpl(this._self, this._then);

  final _UpdateProfileReqEntity _self;
  final $Res Function(_UpdateProfileReqEntity) _then;

/// Create a copy of UpdateProfileReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? avatar = freezed,Object? avatarPath = freezed,Object? name = freezed,Object? phone = freezed,}) {
  return _then(_UpdateProfileReqEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as XFileFormInput?,avatarPath: freezed == avatarPath ? _self.avatarPath : avatarPath // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneNumberFormInput?,
  ));
}


}

// dart format on
