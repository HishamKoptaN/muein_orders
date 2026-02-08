// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_pass_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotPassEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPassEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPassEvent()';
}


}

/// @nodoc
class $ForgotPassEventCopyWith<$Res>  {
$ForgotPassEventCopyWith(ForgotPassEvent _, $Res Function(ForgotPassEvent) __);
}


/// Adds pattern-matching-related methods to [ForgotPassEvent].
extension ForgotPassEventPatterns on ForgotPassEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DataChanged value)?  dataChanged,TResult Function( SendPassResetEmail value)?  sendPassResetEmail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that);case SendPassResetEmail() when sendPassResetEmail != null:
return sendPassResetEmail(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DataChanged value)  dataChanged,required TResult Function( SendPassResetEmail value)  sendPassResetEmail,}){
final _that = this;
switch (_that) {
case _DataChanged():
return dataChanged(_that);case SendPassResetEmail():
return sendPassResetEmail(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DataChanged value)?  dataChanged,TResult? Function( SendPassResetEmail value)?  sendPassResetEmail,}){
final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that);case SendPassResetEmail() when sendPassResetEmail != null:
return sendPassResetEmail(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( EmailInput? email)?  dataChanged,TResult Function()?  sendPassResetEmail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that.email);case SendPassResetEmail() when sendPassResetEmail != null:
return sendPassResetEmail();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( EmailInput? email)  dataChanged,required TResult Function()  sendPassResetEmail,}) {final _that = this;
switch (_that) {
case _DataChanged():
return dataChanged(_that.email);case SendPassResetEmail():
return sendPassResetEmail();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( EmailInput? email)?  dataChanged,TResult? Function()?  sendPassResetEmail,}) {final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that.email);case SendPassResetEmail() when sendPassResetEmail != null:
return sendPassResetEmail();case _:
  return null;

}
}

}

/// @nodoc


class _DataChanged implements ForgotPassEvent {
  const _DataChanged({this.email});
  

 final  EmailInput? email;

/// Create a copy of ForgotPassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataChangedCopyWith<_DataChanged> get copyWith => __$DataChangedCopyWithImpl<_DataChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ForgotPassEvent.dataChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class _$DataChangedCopyWith<$Res> implements $ForgotPassEventCopyWith<$Res> {
  factory _$DataChangedCopyWith(_DataChanged value, $Res Function(_DataChanged) _then) = __$DataChangedCopyWithImpl;
@useResult
$Res call({
 EmailInput? email
});




}
/// @nodoc
class __$DataChangedCopyWithImpl<$Res>
    implements _$DataChangedCopyWith<$Res> {
  __$DataChangedCopyWithImpl(this._self, this._then);

  final _DataChanged _self;
  final $Res Function(_DataChanged) _then;

/// Create a copy of ForgotPassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = freezed,}) {
  return _then(_DataChanged(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailInput?,
  ));
}


}

/// @nodoc


class SendPassResetEmail implements ForgotPassEvent {
  const SendPassResetEmail();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendPassResetEmail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPassEvent.sendPassResetEmail()';
}


}




/// @nodoc
mixin _$ForgotPassState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPassState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPassState()';
}


}

/// @nodoc
class $ForgotPassStateCopyWith<$Res>  {
$ForgotPassStateCopyWith(ForgotPassState _, $Res Function(ForgotPassState) __);
}


/// Adds pattern-matching-related methods to [ForgotPassState].
extension ForgotPassStatePatterns on ForgotPassState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ForgotPassLoading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( ForgotPassSuccess value)?  success,TResult Function( ForgotPassFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ForgotPassLoading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case ForgotPassSuccess() when success != null:
return success(_that);case ForgotPassFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ForgotPassLoading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( ForgotPassSuccess value)  success,required TResult Function( ForgotPassFailure value)  failure,}){
final _that = this;
switch (_that) {
case ForgotPassLoading():
return loading(_that);case _Loaded():
return loaded(_that);case ForgotPassSuccess():
return success(_that);case ForgotPassFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ForgotPassLoading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( ForgotPassSuccess value)?  success,TResult? Function( ForgotPassFailure value)?  failure,}){
final _that = this;
switch (_that) {
case ForgotPassLoading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case ForgotPassSuccess() when success != null:
return success(_that);case ForgotPassFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( EmailInput email,  FormzSubmissionStatus formzSubmissionStatus)?  loaded,TResult Function()?  success,TResult Function( String error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ForgotPassLoading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.email,_that.formzSubmissionStatus);case ForgotPassSuccess() when success != null:
return success();case ForgotPassFailure() when failure != null:
return failure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( EmailInput email,  FormzSubmissionStatus formzSubmissionStatus)  loaded,required TResult Function()  success,required TResult Function( String error)  failure,}) {final _that = this;
switch (_that) {
case ForgotPassLoading():
return loading();case _Loaded():
return loaded(_that.email,_that.formzSubmissionStatus);case ForgotPassSuccess():
return success();case ForgotPassFailure():
return failure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( EmailInput email,  FormzSubmissionStatus formzSubmissionStatus)?  loaded,TResult? Function()?  success,TResult? Function( String error)?  failure,}) {final _that = this;
switch (_that) {
case ForgotPassLoading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.email,_that.formzSubmissionStatus);case ForgotPassSuccess() when success != null:
return success();case ForgotPassFailure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ForgotPassLoading implements ForgotPassState {
  const ForgotPassLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPassLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPassState.loading()';
}


}




/// @nodoc


class _Loaded implements ForgotPassState {
  const _Loaded({required this.email, required this.formzSubmissionStatus});
  

 final  EmailInput email;
 final  FormzSubmissionStatus formzSubmissionStatus;

/// Create a copy of ForgotPassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.email, email) || other.email == email)&&(identical(other.formzSubmissionStatus, formzSubmissionStatus) || other.formzSubmissionStatus == formzSubmissionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,email,formzSubmissionStatus);

@override
String toString() {
  return 'ForgotPassState.loaded(email: $email, formzSubmissionStatus: $formzSubmissionStatus)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ForgotPassStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 EmailInput email, FormzSubmissionStatus formzSubmissionStatus
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ForgotPassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? formzSubmissionStatus = null,}) {
  return _then(_Loaded(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailInput,formzSubmissionStatus: null == formzSubmissionStatus ? _self.formzSubmissionStatus : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,
  ));
}


}

/// @nodoc


class ForgotPassSuccess implements ForgotPassState {
  const ForgotPassSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPassSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPassState.success()';
}


}




/// @nodoc


class ForgotPassFailure implements ForgotPassState {
  const ForgotPassFailure(this.error);
  

 final  String error;

/// Create a copy of ForgotPassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPassFailureCopyWith<ForgotPassFailure> get copyWith => _$ForgotPassFailureCopyWithImpl<ForgotPassFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPassFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ForgotPassState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $ForgotPassFailureCopyWith<$Res> implements $ForgotPassStateCopyWith<$Res> {
  factory $ForgotPassFailureCopyWith(ForgotPassFailure value, $Res Function(ForgotPassFailure) _then) = _$ForgotPassFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ForgotPassFailureCopyWithImpl<$Res>
    implements $ForgotPassFailureCopyWith<$Res> {
  _$ForgotPassFailureCopyWithImpl(this._self, this._then);

  final ForgotPassFailure _self;
  final $Res Function(ForgotPassFailure) _then;

/// Create a copy of ForgotPassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ForgotPassFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
