// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProfileReqModel {

 String? get avatar; String? get name; String? get phone;
/// Create a copy of UpdateProfileReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileReqModelCopyWith<UpdateProfileReqModel> get copyWith => _$UpdateProfileReqModelCopyWithImpl<UpdateProfileReqModel>(this as UpdateProfileReqModel, _$identity);

  /// Serializes this UpdateProfileReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileReqModel&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,avatar,name,phone);

@override
String toString() {
  return 'UpdateProfileReqModel(avatar: $avatar, name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileReqModelCopyWith<$Res>  {
  factory $UpdateProfileReqModelCopyWith(UpdateProfileReqModel value, $Res Function(UpdateProfileReqModel) _then) = _$UpdateProfileReqModelCopyWithImpl;
@useResult
$Res call({
 String? avatar, String? name, String? phone
});




}
/// @nodoc
class _$UpdateProfileReqModelCopyWithImpl<$Res>
    implements $UpdateProfileReqModelCopyWith<$Res> {
  _$UpdateProfileReqModelCopyWithImpl(this._self, this._then);

  final UpdateProfileReqModel _self;
  final $Res Function(UpdateProfileReqModel) _then;

/// Create a copy of UpdateProfileReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? avatar = freezed,Object? name = freezed,Object? phone = freezed,}) {
  return _then(_self.copyWith(
avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProfileReqModel].
extension UpdateProfileReqModelPatterns on UpdateProfileReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProfileReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProfileReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProfileReqModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProfileReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? avatar,  String? name,  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProfileReqModel() when $default != null:
return $default(_that.avatar,_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? avatar,  String? name,  String? phone)  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileReqModel():
return $default(_that.avatar,_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? avatar,  String? name,  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileReqModel() when $default != null:
return $default(_that.avatar,_that.name,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateProfileReqModel implements UpdateProfileReqModel {
  const _UpdateProfileReqModel({this.avatar, this.name, this.phone});
  factory _UpdateProfileReqModel.fromJson(Map<String, dynamic> json) => _$UpdateProfileReqModelFromJson(json);

@override final  String? avatar;
@override final  String? name;
@override final  String? phone;

/// Create a copy of UpdateProfileReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileReqModelCopyWith<_UpdateProfileReqModel> get copyWith => __$UpdateProfileReqModelCopyWithImpl<_UpdateProfileReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateProfileReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfileReqModel&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,avatar,name,phone);

@override
String toString() {
  return 'UpdateProfileReqModel(avatar: $avatar, name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileReqModelCopyWith<$Res> implements $UpdateProfileReqModelCopyWith<$Res> {
  factory _$UpdateProfileReqModelCopyWith(_UpdateProfileReqModel value, $Res Function(_UpdateProfileReqModel) _then) = __$UpdateProfileReqModelCopyWithImpl;
@override @useResult
$Res call({
 String? avatar, String? name, String? phone
});




}
/// @nodoc
class __$UpdateProfileReqModelCopyWithImpl<$Res>
    implements _$UpdateProfileReqModelCopyWith<$Res> {
  __$UpdateProfileReqModelCopyWithImpl(this._self, this._then);

  final _UpdateProfileReqModel _self;
  final $Res Function(_UpdateProfileReqModel) _then;

/// Create a copy of UpdateProfileReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? avatar = freezed,Object? name = freezed,Object? phone = freezed,}) {
  return _then(_UpdateProfileReqModel(
avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
