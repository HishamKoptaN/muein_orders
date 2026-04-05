// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_req_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInReqBodyModel {

@JsonKey(name: 'id_token') String get idToken;@JsonKey(name: 'fcm_token') String get fcmToken;@JsonKey(name: 'device_type') String get deviceType;
/// Create a copy of SignInReqBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInReqBodyModelCopyWith<SignInReqBodyModel> get copyWith => _$SignInReqBodyModelCopyWithImpl<SignInReqBodyModel>(this as SignInReqBodyModel, _$identity);

  /// Serializes this SignInReqBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInReqBodyModel&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idToken,fcmToken,deviceType);

@override
String toString() {
  return 'SignInReqBodyModel(idToken: $idToken, fcmToken: $fcmToken, deviceType: $deviceType)';
}


}

/// @nodoc
abstract mixin class $SignInReqBodyModelCopyWith<$Res>  {
  factory $SignInReqBodyModelCopyWith(SignInReqBodyModel value, $Res Function(SignInReqBodyModel) _then) = _$SignInReqBodyModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_token') String idToken,@JsonKey(name: 'fcm_token') String fcmToken,@JsonKey(name: 'device_type') String deviceType
});




}
/// @nodoc
class _$SignInReqBodyModelCopyWithImpl<$Res>
    implements $SignInReqBodyModelCopyWith<$Res> {
  _$SignInReqBodyModelCopyWithImpl(this._self, this._then);

  final SignInReqBodyModel _self;
  final $Res Function(SignInReqBodyModel) _then;

/// Create a copy of SignInReqBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idToken = null,Object? fcmToken = null,Object? deviceType = null,}) {
  return _then(_self.copyWith(
idToken: null == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignInReqBodyModel].
extension SignInReqBodyModelPatterns on SignInReqBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInReqBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInReqBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInReqBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _SignInReqBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInReqBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _SignInReqBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_token')  String idToken, @JsonKey(name: 'fcm_token')  String fcmToken, @JsonKey(name: 'device_type')  String deviceType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInReqBodyModel() when $default != null:
return $default(_that.idToken,_that.fcmToken,_that.deviceType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_token')  String idToken, @JsonKey(name: 'fcm_token')  String fcmToken, @JsonKey(name: 'device_type')  String deviceType)  $default,) {final _that = this;
switch (_that) {
case _SignInReqBodyModel():
return $default(_that.idToken,_that.fcmToken,_that.deviceType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id_token')  String idToken, @JsonKey(name: 'fcm_token')  String fcmToken, @JsonKey(name: 'device_type')  String deviceType)?  $default,) {final _that = this;
switch (_that) {
case _SignInReqBodyModel() when $default != null:
return $default(_that.idToken,_that.fcmToken,_that.deviceType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignInReqBodyModel implements SignInReqBodyModel {
  const _SignInReqBodyModel({@JsonKey(name: 'id_token') required this.idToken, @JsonKey(name: 'fcm_token') required this.fcmToken, @JsonKey(name: 'device_type') required this.deviceType});
  factory _SignInReqBodyModel.fromJson(Map<String, dynamic> json) => _$SignInReqBodyModelFromJson(json);

@override@JsonKey(name: 'id_token') final  String idToken;
@override@JsonKey(name: 'fcm_token') final  String fcmToken;
@override@JsonKey(name: 'device_type') final  String deviceType;

/// Create a copy of SignInReqBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInReqBodyModelCopyWith<_SignInReqBodyModel> get copyWith => __$SignInReqBodyModelCopyWithImpl<_SignInReqBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInReqBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInReqBodyModel&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idToken,fcmToken,deviceType);

@override
String toString() {
  return 'SignInReqBodyModel(idToken: $idToken, fcmToken: $fcmToken, deviceType: $deviceType)';
}


}

/// @nodoc
abstract mixin class _$SignInReqBodyModelCopyWith<$Res> implements $SignInReqBodyModelCopyWith<$Res> {
  factory _$SignInReqBodyModelCopyWith(_SignInReqBodyModel value, $Res Function(_SignInReqBodyModel) _then) = __$SignInReqBodyModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_token') String idToken,@JsonKey(name: 'fcm_token') String fcmToken,@JsonKey(name: 'device_type') String deviceType
});




}
/// @nodoc
class __$SignInReqBodyModelCopyWithImpl<$Res>
    implements _$SignInReqBodyModelCopyWith<$Res> {
  __$SignInReqBodyModelCopyWithImpl(this._self, this._then);

  final _SignInReqBodyModel _self;
  final $Res Function(_SignInReqBodyModel) _then;

/// Create a copy of SignInReqBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idToken = null,Object? fcmToken = null,Object? deviceType = null,}) {
  return _then(_SignInReqBodyModel(
idToken: null == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
