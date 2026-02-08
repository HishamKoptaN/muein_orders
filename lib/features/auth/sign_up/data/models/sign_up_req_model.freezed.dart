// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpReqModel {

 String? get name; String? get phone;@JsonKey(name: 'country_id') int? get countryId;@JsonKey(name: 'fcm_token') String? get fcmToken;@JsonKey(name: 'id_token') String? get idToken;
/// Create a copy of SignUpReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpReqModelCopyWith<SignUpReqModel> get copyWith => _$SignUpReqModelCopyWithImpl<SignUpReqModel>(this as SignUpReqModel, _$identity);

  /// Serializes this SignUpReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpReqModel&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.idToken, idToken) || other.idToken == idToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,phone,countryId,fcmToken,idToken);

@override
String toString() {
  return 'SignUpReqModel(name: $name, phone: $phone, countryId: $countryId, fcmToken: $fcmToken, idToken: $idToken)';
}


}

/// @nodoc
abstract mixin class $SignUpReqModelCopyWith<$Res>  {
  factory $SignUpReqModelCopyWith(SignUpReqModel value, $Res Function(SignUpReqModel) _then) = _$SignUpReqModelCopyWithImpl;
@useResult
$Res call({
 String? name, String? phone,@JsonKey(name: 'country_id') int? countryId,@JsonKey(name: 'fcm_token') String? fcmToken,@JsonKey(name: 'id_token') String? idToken
});




}
/// @nodoc
class _$SignUpReqModelCopyWithImpl<$Res>
    implements $SignUpReqModelCopyWith<$Res> {
  _$SignUpReqModelCopyWithImpl(this._self, this._then);

  final SignUpReqModel _self;
  final $Res Function(SignUpReqModel) _then;

/// Create a copy of SignUpReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? phone = freezed,Object? countryId = freezed,Object? fcmToken = freezed,Object? idToken = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpReqModel].
extension SignUpReqModelPatterns on SignUpReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpReqModel value)  $default,){
final _that = this;
switch (_that) {
case _SignUpReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? phone, @JsonKey(name: 'country_id')  int? countryId, @JsonKey(name: 'fcm_token')  String? fcmToken, @JsonKey(name: 'id_token')  String? idToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpReqModel() when $default != null:
return $default(_that.name,_that.phone,_that.countryId,_that.fcmToken,_that.idToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? phone, @JsonKey(name: 'country_id')  int? countryId, @JsonKey(name: 'fcm_token')  String? fcmToken, @JsonKey(name: 'id_token')  String? idToken)  $default,) {final _that = this;
switch (_that) {
case _SignUpReqModel():
return $default(_that.name,_that.phone,_that.countryId,_that.fcmToken,_that.idToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? phone, @JsonKey(name: 'country_id')  int? countryId, @JsonKey(name: 'fcm_token')  String? fcmToken, @JsonKey(name: 'id_token')  String? idToken)?  $default,) {final _that = this;
switch (_that) {
case _SignUpReqModel() when $default != null:
return $default(_that.name,_that.phone,_that.countryId,_that.fcmToken,_that.idToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignUpReqModel implements SignUpReqModel {
  const _SignUpReqModel({this.name, this.phone, @JsonKey(name: 'country_id') this.countryId, @JsonKey(name: 'fcm_token') this.fcmToken, @JsonKey(name: 'id_token') this.idToken});
  factory _SignUpReqModel.fromJson(Map<String, dynamic> json) => _$SignUpReqModelFromJson(json);

@override final  String? name;
@override final  String? phone;
@override@JsonKey(name: 'country_id') final  int? countryId;
@override@JsonKey(name: 'fcm_token') final  String? fcmToken;
@override@JsonKey(name: 'id_token') final  String? idToken;

/// Create a copy of SignUpReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpReqModelCopyWith<_SignUpReqModel> get copyWith => __$SignUpReqModelCopyWithImpl<_SignUpReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignUpReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpReqModel&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.idToken, idToken) || other.idToken == idToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,phone,countryId,fcmToken,idToken);

@override
String toString() {
  return 'SignUpReqModel(name: $name, phone: $phone, countryId: $countryId, fcmToken: $fcmToken, idToken: $idToken)';
}


}

/// @nodoc
abstract mixin class _$SignUpReqModelCopyWith<$Res> implements $SignUpReqModelCopyWith<$Res> {
  factory _$SignUpReqModelCopyWith(_SignUpReqModel value, $Res Function(_SignUpReqModel) _then) = __$SignUpReqModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? phone,@JsonKey(name: 'country_id') int? countryId,@JsonKey(name: 'fcm_token') String? fcmToken,@JsonKey(name: 'id_token') String? idToken
});




}
/// @nodoc
class __$SignUpReqModelCopyWithImpl<$Res>
    implements _$SignUpReqModelCopyWith<$Res> {
  __$SignUpReqModelCopyWithImpl(this._self, this._then);

  final _SignUpReqModel _self;
  final $Res Function(_SignUpReqModel) _then;

/// Create a copy of SignUpReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? phone = freezed,Object? countryId = freezed,Object? fcmToken = freezed,Object? idToken = freezed,}) {
  return _then(_SignUpReqModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
