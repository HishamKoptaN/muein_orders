// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_token_req_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExchangeTokenReqBodyModel {

@JsonKey(name: 'id_token') String get idToken;@JsonKey(name: 'fcm_token') String? get fcmToken; DeviceModel? get device;
/// Create a copy of ExchangeTokenReqBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExchangeTokenReqBodyModelCopyWith<ExchangeTokenReqBodyModel> get copyWith => _$ExchangeTokenReqBodyModelCopyWithImpl<ExchangeTokenReqBodyModel>(this as ExchangeTokenReqBodyModel, _$identity);

  /// Serializes this ExchangeTokenReqBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExchangeTokenReqBodyModel&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.device, device) || other.device == device));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idToken,fcmToken,device);

@override
String toString() {
  return 'ExchangeTokenReqBodyModel(idToken: $idToken, fcmToken: $fcmToken, device: $device)';
}


}

/// @nodoc
abstract mixin class $ExchangeTokenReqBodyModelCopyWith<$Res>  {
  factory $ExchangeTokenReqBodyModelCopyWith(ExchangeTokenReqBodyModel value, $Res Function(ExchangeTokenReqBodyModel) _then) = _$ExchangeTokenReqBodyModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_token') String idToken,@JsonKey(name: 'fcm_token') String? fcmToken, DeviceModel? device
});


$DeviceModelCopyWith<$Res>? get device;

}
/// @nodoc
class _$ExchangeTokenReqBodyModelCopyWithImpl<$Res>
    implements $ExchangeTokenReqBodyModelCopyWith<$Res> {
  _$ExchangeTokenReqBodyModelCopyWithImpl(this._self, this._then);

  final ExchangeTokenReqBodyModel _self;
  final $Res Function(ExchangeTokenReqBodyModel) _then;

/// Create a copy of ExchangeTokenReqBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idToken = null,Object? fcmToken = freezed,Object? device = freezed,}) {
  return _then(_self.copyWith(
idToken: null == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String,fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceModel?,
  ));
}
/// Create a copy of ExchangeTokenReqBodyModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceModelCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $DeviceModelCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExchangeTokenReqBodyModel].
extension ExchangeTokenReqBodyModelPatterns on ExchangeTokenReqBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExchangeTokenReqBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExchangeTokenReqBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExchangeTokenReqBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _ExchangeTokenReqBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExchangeTokenReqBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExchangeTokenReqBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_token')  String idToken, @JsonKey(name: 'fcm_token')  String? fcmToken,  DeviceModel? device)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExchangeTokenReqBodyModel() when $default != null:
return $default(_that.idToken,_that.fcmToken,_that.device);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_token')  String idToken, @JsonKey(name: 'fcm_token')  String? fcmToken,  DeviceModel? device)  $default,) {final _that = this;
switch (_that) {
case _ExchangeTokenReqBodyModel():
return $default(_that.idToken,_that.fcmToken,_that.device);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id_token')  String idToken, @JsonKey(name: 'fcm_token')  String? fcmToken,  DeviceModel? device)?  $default,) {final _that = this;
switch (_that) {
case _ExchangeTokenReqBodyModel() when $default != null:
return $default(_that.idToken,_that.fcmToken,_that.device);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExchangeTokenReqBodyModel implements ExchangeTokenReqBodyModel {
  const _ExchangeTokenReqBodyModel({@JsonKey(name: 'id_token') required this.idToken, @JsonKey(name: 'fcm_token') this.fcmToken, this.device});
  factory _ExchangeTokenReqBodyModel.fromJson(Map<String, dynamic> json) => _$ExchangeTokenReqBodyModelFromJson(json);

@override@JsonKey(name: 'id_token') final  String idToken;
@override@JsonKey(name: 'fcm_token') final  String? fcmToken;
@override final  DeviceModel? device;

/// Create a copy of ExchangeTokenReqBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExchangeTokenReqBodyModelCopyWith<_ExchangeTokenReqBodyModel> get copyWith => __$ExchangeTokenReqBodyModelCopyWithImpl<_ExchangeTokenReqBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExchangeTokenReqBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExchangeTokenReqBodyModel&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.device, device) || other.device == device));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idToken,fcmToken,device);

@override
String toString() {
  return 'ExchangeTokenReqBodyModel(idToken: $idToken, fcmToken: $fcmToken, device: $device)';
}


}

/// @nodoc
abstract mixin class _$ExchangeTokenReqBodyModelCopyWith<$Res> implements $ExchangeTokenReqBodyModelCopyWith<$Res> {
  factory _$ExchangeTokenReqBodyModelCopyWith(_ExchangeTokenReqBodyModel value, $Res Function(_ExchangeTokenReqBodyModel) _then) = __$ExchangeTokenReqBodyModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_token') String idToken,@JsonKey(name: 'fcm_token') String? fcmToken, DeviceModel? device
});


@override $DeviceModelCopyWith<$Res>? get device;

}
/// @nodoc
class __$ExchangeTokenReqBodyModelCopyWithImpl<$Res>
    implements _$ExchangeTokenReqBodyModelCopyWith<$Res> {
  __$ExchangeTokenReqBodyModelCopyWithImpl(this._self, this._then);

  final _ExchangeTokenReqBodyModel _self;
  final $Res Function(_ExchangeTokenReqBodyModel) _then;

/// Create a copy of ExchangeTokenReqBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idToken = null,Object? fcmToken = freezed,Object? device = freezed,}) {
  return _then(_ExchangeTokenReqBodyModel(
idToken: null == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String,fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceModel?,
  ));
}

/// Create a copy of ExchangeTokenReqBodyModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceModelCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $DeviceModelCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}

// dart format on
