// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthResModel {

@JsonKey(name: 'token') String get token;
/// Create a copy of AuthResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthResModelCopyWith<AuthResModel> get copyWith => _$AuthResModelCopyWithImpl<AuthResModel>(this as AuthResModel, _$identity);

  /// Serializes this AuthResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthResModel&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'AuthResModel(token: $token)';
}


}

/// @nodoc
abstract mixin class $AuthResModelCopyWith<$Res>  {
  factory $AuthResModelCopyWith(AuthResModel value, $Res Function(AuthResModel) _then) = _$AuthResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'token') String token
});




}
/// @nodoc
class _$AuthResModelCopyWithImpl<$Res>
    implements $AuthResModelCopyWith<$Res> {
  _$AuthResModelCopyWithImpl(this._self, this._then);

  final AuthResModel _self;
  final $Res Function(AuthResModel) _then;

/// Create a copy of AuthResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthResModel].
extension AuthResModelPatterns on AuthResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthResModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthResModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'token')  String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthResModel() when $default != null:
return $default(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'token')  String token)  $default,) {final _that = this;
switch (_that) {
case _AuthResModel():
return $default(_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'token')  String token)?  $default,) {final _that = this;
switch (_that) {
case _AuthResModel() when $default != null:
return $default(_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthResModel implements AuthResModel {
  const _AuthResModel({@JsonKey(name: 'token') required this.token});
  factory _AuthResModel.fromJson(Map<String, dynamic> json) => _$AuthResModelFromJson(json);

@override@JsonKey(name: 'token') final  String token;

/// Create a copy of AuthResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthResModelCopyWith<_AuthResModel> get copyWith => __$AuthResModelCopyWithImpl<_AuthResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthResModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthResModel&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'AuthResModel(token: $token)';
}


}

/// @nodoc
abstract mixin class _$AuthResModelCopyWith<$Res> implements $AuthResModelCopyWith<$Res> {
  factory _$AuthResModelCopyWith(_AuthResModel value, $Res Function(_AuthResModel) _then) = __$AuthResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'token') String token
});




}
/// @nodoc
class __$AuthResModelCopyWithImpl<$Res>
    implements _$AuthResModelCopyWith<$Res> {
  __$AuthResModelCopyWithImpl(this._self, this._then);

  final _AuthResModel _self;
  final $Res Function(_AuthResModel) _then;

/// Create a copy of AuthResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(_AuthResModel(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
