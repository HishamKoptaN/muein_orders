// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure()';
}


}

/// @nodoc
class $FailureCopyWith<$Res>  {
$FailureCopyWith(Failure _, $Res Function(Failure) __);
}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerFailure value)?  serverFailure,TResult Function( NetworkFailure value)?  networkFailure,TResult Function( CacheFailure value)?  cacheFailure,TResult Function( InvalidEmailOrPassword value)?  invalidEmailOrPassword,TResult Function( EmailAlreadyInUse value)?  emailAlreadyInUse,TResult Function( InvalidEmail value)?  invalidEmail,TResult Function( WeakPassword value)?  weakPassword,TResult Function( UserDisabled value)?  userDisabled,TResult Function( UserNotLoggedIn value)?  userNotLoggedIn,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerFailure() when serverFailure != null:
return serverFailure(_that);case NetworkFailure() when networkFailure != null:
return networkFailure(_that);case CacheFailure() when cacheFailure != null:
return cacheFailure(_that);case InvalidEmailOrPassword() when invalidEmailOrPassword != null:
return invalidEmailOrPassword(_that);case EmailAlreadyInUse() when emailAlreadyInUse != null:
return emailAlreadyInUse(_that);case InvalidEmail() when invalidEmail != null:
return invalidEmail(_that);case WeakPassword() when weakPassword != null:
return weakPassword(_that);case UserDisabled() when userDisabled != null:
return userDisabled(_that);case UserNotLoggedIn() when userNotLoggedIn != null:
return userNotLoggedIn(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerFailure value)  serverFailure,required TResult Function( NetworkFailure value)  networkFailure,required TResult Function( CacheFailure value)  cacheFailure,required TResult Function( InvalidEmailOrPassword value)  invalidEmailOrPassword,required TResult Function( EmailAlreadyInUse value)  emailAlreadyInUse,required TResult Function( InvalidEmail value)  invalidEmail,required TResult Function( WeakPassword value)  weakPassword,required TResult Function( UserDisabled value)  userDisabled,required TResult Function( UserNotLoggedIn value)  userNotLoggedIn,}){
final _that = this;
switch (_that) {
case ServerFailure():
return serverFailure(_that);case NetworkFailure():
return networkFailure(_that);case CacheFailure():
return cacheFailure(_that);case InvalidEmailOrPassword():
return invalidEmailOrPassword(_that);case EmailAlreadyInUse():
return emailAlreadyInUse(_that);case InvalidEmail():
return invalidEmail(_that);case WeakPassword():
return weakPassword(_that);case UserDisabled():
return userDisabled(_that);case UserNotLoggedIn():
return userNotLoggedIn(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerFailure value)?  serverFailure,TResult? Function( NetworkFailure value)?  networkFailure,TResult? Function( CacheFailure value)?  cacheFailure,TResult? Function( InvalidEmailOrPassword value)?  invalidEmailOrPassword,TResult? Function( EmailAlreadyInUse value)?  emailAlreadyInUse,TResult? Function( InvalidEmail value)?  invalidEmail,TResult? Function( WeakPassword value)?  weakPassword,TResult? Function( UserDisabled value)?  userDisabled,TResult? Function( UserNotLoggedIn value)?  userNotLoggedIn,}){
final _that = this;
switch (_that) {
case ServerFailure() when serverFailure != null:
return serverFailure(_that);case NetworkFailure() when networkFailure != null:
return networkFailure(_that);case CacheFailure() when cacheFailure != null:
return cacheFailure(_that);case InvalidEmailOrPassword() when invalidEmailOrPassword != null:
return invalidEmailOrPassword(_that);case EmailAlreadyInUse() when emailAlreadyInUse != null:
return emailAlreadyInUse(_that);case InvalidEmail() when invalidEmail != null:
return invalidEmail(_that);case WeakPassword() when weakPassword != null:
return weakPassword(_that);case UserDisabled() when userDisabled != null:
return userDisabled(_that);case UserNotLoggedIn() when userNotLoggedIn != null:
return userNotLoggedIn(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  serverFailure,TResult Function( String message,  String? code)?  networkFailure,TResult Function( String message,  String? code)?  cacheFailure,TResult Function()?  invalidEmailOrPassword,TResult Function()?  emailAlreadyInUse,TResult Function()?  invalidEmail,TResult Function()?  weakPassword,TResult Function()?  userDisabled,TResult Function()?  userNotLoggedIn,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case NetworkFailure() when networkFailure != null:
return networkFailure(_that.message,_that.code);case CacheFailure() when cacheFailure != null:
return cacheFailure(_that.message,_that.code);case InvalidEmailOrPassword() when invalidEmailOrPassword != null:
return invalidEmailOrPassword();case EmailAlreadyInUse() when emailAlreadyInUse != null:
return emailAlreadyInUse();case InvalidEmail() when invalidEmail != null:
return invalidEmail();case WeakPassword() when weakPassword != null:
return weakPassword();case UserDisabled() when userDisabled != null:
return userDisabled();case UserNotLoggedIn() when userNotLoggedIn != null:
return userNotLoggedIn();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  serverFailure,required TResult Function( String message,  String? code)  networkFailure,required TResult Function( String message,  String? code)  cacheFailure,required TResult Function()  invalidEmailOrPassword,required TResult Function()  emailAlreadyInUse,required TResult Function()  invalidEmail,required TResult Function()  weakPassword,required TResult Function()  userDisabled,required TResult Function()  userNotLoggedIn,}) {final _that = this;
switch (_that) {
case ServerFailure():
return serverFailure(_that.message);case NetworkFailure():
return networkFailure(_that.message,_that.code);case CacheFailure():
return cacheFailure(_that.message,_that.code);case InvalidEmailOrPassword():
return invalidEmailOrPassword();case EmailAlreadyInUse():
return emailAlreadyInUse();case InvalidEmail():
return invalidEmail();case WeakPassword():
return weakPassword();case UserDisabled():
return userDisabled();case UserNotLoggedIn():
return userNotLoggedIn();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  serverFailure,TResult? Function( String message,  String? code)?  networkFailure,TResult? Function( String message,  String? code)?  cacheFailure,TResult? Function()?  invalidEmailOrPassword,TResult? Function()?  emailAlreadyInUse,TResult? Function()?  invalidEmail,TResult? Function()?  weakPassword,TResult? Function()?  userDisabled,TResult? Function()?  userNotLoggedIn,}) {final _that = this;
switch (_that) {
case ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case NetworkFailure() when networkFailure != null:
return networkFailure(_that.message,_that.code);case CacheFailure() when cacheFailure != null:
return cacheFailure(_that.message,_that.code);case InvalidEmailOrPassword() when invalidEmailOrPassword != null:
return invalidEmailOrPassword();case EmailAlreadyInUse() when emailAlreadyInUse != null:
return emailAlreadyInUse();case InvalidEmail() when invalidEmail != null:
return invalidEmail();case WeakPassword() when weakPassword != null:
return weakPassword();case UserDisabled() when userDisabled != null:
return userDisabled();case UserNotLoggedIn() when userNotLoggedIn != null:
return userNotLoggedIn();case _:
  return null;

}
}

}

/// @nodoc


class ServerFailure extends Failure {
  const ServerFailure({required this.message}): super._();
  

 final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerFailureCopyWith<ServerFailure> get copyWith => _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(ServerFailure value, $Res Function(ServerFailure) _then) = _$ServerFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._self, this._then);

  final ServerFailure _self;
  final $Res Function(ServerFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ServerFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NetworkFailure extends Failure {
  const NetworkFailure({required this.message, this.code}): super._();
  

 final  String message;
 final  String? code;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkFailureCopyWith<NetworkFailure> get copyWith => _$NetworkFailureCopyWithImpl<NetworkFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'Failure.networkFailure(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $NetworkFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(NetworkFailure value, $Res Function(NetworkFailure) _then) = _$NetworkFailureCopyWithImpl;
@useResult
$Res call({
 String message, String? code
});




}
/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._self, this._then);

  final NetworkFailure _self;
  final $Res Function(NetworkFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? code = freezed,}) {
  return _then(NetworkFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CacheFailure extends Failure {
  const CacheFailure({required this.message, this.code}): super._();
  

 final  String message;
 final  String? code;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CacheFailureCopyWith<CacheFailure> get copyWith => _$CacheFailureCopyWithImpl<CacheFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'Failure.cacheFailure(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $CacheFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(CacheFailure value, $Res Function(CacheFailure) _then) = _$CacheFailureCopyWithImpl;
@useResult
$Res call({
 String message, String? code
});




}
/// @nodoc
class _$CacheFailureCopyWithImpl<$Res>
    implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(this._self, this._then);

  final CacheFailure _self;
  final $Res Function(CacheFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? code = freezed,}) {
  return _then(CacheFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class InvalidEmailOrPassword extends Failure {
  const InvalidEmailOrPassword(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidEmailOrPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.invalidEmailOrPassword()';
}


}




/// @nodoc


class EmailAlreadyInUse extends Failure {
  const EmailAlreadyInUse(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailAlreadyInUse);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.emailAlreadyInUse()';
}


}




/// @nodoc


class InvalidEmail extends Failure {
  const InvalidEmail(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidEmail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.invalidEmail()';
}


}




/// @nodoc


class WeakPassword extends Failure {
  const WeakPassword(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeakPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.weakPassword()';
}


}




/// @nodoc


class UserDisabled extends Failure {
  const UserDisabled(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDisabled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.userDisabled()';
}


}




/// @nodoc


class UserNotLoggedIn extends Failure {
  const UserNotLoggedIn(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserNotLoggedIn);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.userNotLoggedIn()';
}


}




// dart format on
